# frozen_string_literal: true

require "rake/testtask"
require "minitest/autorun"
require_relative "test/test_ipgeobase"
require_relative "test/test_helper"

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.libs << "test"
  t.pattern = "test/**/*_test"
  t.verbose = true
end

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]
