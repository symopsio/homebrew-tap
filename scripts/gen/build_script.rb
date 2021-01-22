#!/usr/bin/env ruby
# frozen_string_literal: true

require 'fileutils'
require 'erb'
require_relative './build_formula'

EXTRAS = {
  'sym' => ['session_manager']
}.freeze

class Renderer
  attr_reader :formula

  def self.render_all
    FormulaBuilder::FORMULAE.keys.each do |formula|
      renderer = new(formula)

      File.write("docs/#{formula}.sh", renderer.render)
    end
  end

  def initialize(formula)
    @formula = formula
  end

  def render
    ERB.new(template).result(binding)
  end

  def pypi
    FormulaBuilder::FORMULAE[formula][:cli]
  end

  def extras
    @extras ||= EXTRAS[formula] || []
  end

  def extra_functions
    extras.map { |e| File.read("#{__dir__}/functions/#{e}.sh") }.join("\n\n")
  end

  def extra_installs
    extras.map { |e| File.read("#{__dir__}/installs/#{e}.sh") }.join("\n\n")
  end

  private

  def template
    @template ||= File.read("#{__dir__}/script.sh.template")
  end
end

Renderer.render_all if __FILE__ == $PROGRAM_NAME
