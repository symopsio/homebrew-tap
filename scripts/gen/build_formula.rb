require 'active_support'
require 'active_support/core_ext'

class FormulaBuilder
  FORMULAE = {
    'sym' => {
      desc: 'CLI to perform privileged operations with Sym',
      cli: 'sym-cli'
    },
    'symflow' => {
      desc: 'CLI to deploy Sym flows',
      cli: 'sym-flow-cli'
    }
  }.freeze

  attr_reader :formula, :version

  def initialize(formula, version)
    @formula = formula
    @version = version
    check!
  end

  def output!
    puts <<~RUBY
      class #{formula.classify} < Formula
        desc "#{FORMULAE[formula][:desc]}"
        homepage "https://docs.symops.com"
        version "#{version}"

        if OS.mac?
          url "#{url}"
          sha256 "#{sha}"
          bottle :unneeded

          def install
            lib.install "lib", "#{formula}"
            bin.write_exec_script lib/"#{formula}"
          end
        else
          include Language::Python::Virtualenv

          #{top_block.strip}

          bottle do
          end

          depends_on "python@3.8"

          #{resource_blocks.strip}

          def install
            virtualenv_install_with_resources
          end
        end

        test do
          assert_match /\\d+\\.\\d+\\.\\d/, shell_output("\#{bin}/#{formula} version").strip
        end
      end
    RUBY
  end

  private

  def check!
    unless FORMULAE.include?(formula)
      warn "Invalid formula #{formula}"
      exit 1
    end
  end

  def url
    "https://github.com/symopsio/#{cli_name}-releases/releases/download/v#{version}/#{cli_name}-darwin-x64.tar.gz"
  end

  def sha
    `curl -L #{url} | shasum -a 256`.strip.split(/\s/).first
  end

  def top_block
    deps[cli_name].split("\n")[1...-1].join("\n")
  end

  def resource_blocks
    deps
      .except(cli_name)
      .values
      .map { |d| d.gsub(/^\s\s/, '    ') }
      .join("\n\n")
  end

  def deps
    @deps ||= begin
      `"#{File.join(__dir__, '../resources.sh')}" #{cli_name}`
        .split(/Successfully .*\n/).last
        .split(/Removing/).first
        .split("\n\n").map do |d|
          [d.match(/"(.*)"/)[1], d]
        end.to_h.tap do |ds|
          warn "Found deps: #{ds.keys}"
        end
    end
  end

  def cli_name
    FORMULAE[formula][:cli]
  end
end

FormulaBuilder.new(*ARGV).output!
