require "active_support"
require "active_support/core_ext"

class FormulaBuilder
  FORMULAE = {
    "sym" => "CLI to perform privileged operations with Sym",
    "sym-flow" => "CLI to deploy Sym flows"
  }

  attr_reader :formula, :version

  def initialize(formula, version)
    @formula = formula
    @version = version
    check!
  end

  def output!
    puts <<~RUBY
      class #{formula.classify} < Formula
        desc "#{FORMULAE[formula]}"
        homepage "https://docs.symops.com"

        if OS.mac?
          url "https://github.com/symopsio/#{cli_name}-releases/releases/download/v#{version}/#{cli_name}-darwin-x64.tar.gz"
          version "#{version}"
          bottle :unneeded

          def install
            lib.install "lib", "sym"
            bin.write_exec_script lib/"sym"
          end
        else
          include Language::Python::Virtualenv

          bottle do
          end

          #{top_block.strip}

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
    if !FORMULAE.include?(formula)
      STDERR.puts "Invalid formula #{formula}"
      exit 1
    end
  end

  def top_block
    deps[cli_name].split("\n")[1...-1].join("\n")
  end

  def resource_blocks
    deps
      .except(cli_name)
      .values
      .map {|d| d.gsub(/^\s\s/, "    ") }
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
          STDERR.puts "Found deps: #{ds.keys}"
        end
    end
  end

  def cli_name
    "#{@formula}-cli"
  end
end

FormulaBuilder.new(*ARGV).output!
