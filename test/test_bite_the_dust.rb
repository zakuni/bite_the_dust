#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require File.expand_path 'test_helper', File.dirname(__FILE__)

class TestBiteTheDust < MiniTest::Unit::TestCase
  include BiteTheDust

  def setup
    @bitethedust = BiteTheDust.new
  end

  def test_initialize
    assert_instance_of BiteTheDust, BiteTheDust.new
  end
end
