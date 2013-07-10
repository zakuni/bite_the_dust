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

  def test_future?
    assert_respond_to(@bitethedust, :future?)
    assert(@bitethedust.future?(2112))
    refute(@bitethedust.future?(1900))
  end
end
