# Require this file for unit tests
ENV['HANAMI_ENV'] ||= 'test'

require_relative '../config/environment'
require 'simplecov'
require 'minitest/autorun'

SimpleCov.start

Hanami.boot
