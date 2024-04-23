# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require 'bundler/setup'
Bundler.require

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "ipgeobase"

require "minitest/autorun"

require "webmock/minitest"
