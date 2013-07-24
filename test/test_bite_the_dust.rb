#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require File.expand_path 'test_helper', File.dirname(__FILE__)

class TestBiteTheDust < MiniTest::Unit::TestCase
  def setup
    @bitethedust = BiteTheDust::BiteTheDust.new(Time.now+5)
    @future = Time.new(2100-01-01)
    @past   = Time.new(1900-01-01)
    @btd_future = BiteTheDust::BiteTheDust.new(@future)
    @btd_past   = BiteTheDust::BiteTheDust.new(@past)
  end

  def test_self_future?
    assert_respond_to BiteTheDust, :future?
    assert BiteTheDust.future?(@future)
    refute BiteTheDust.future?(@past)
  end

  def test_self_countdown
    assert_respond_to BiteTheDust, :countdown
    assert_equal "done", BiteTheDust.countdown(2){|n| "done"}
  end

  def test_initialize
    assert_raises(ArgumentError) { BiteTheDust::BiteTheDust.new }
    assert_instance_of BiteTheDust::BiteTheDust, BiteTheDust::BiteTheDust.new(Time.new(2100-01-01))
  end

  def test_future?
    assert_respond_to(@bitethedust, :future?)
    assert @btd_future.future?
    refute @btd_past.future?
  end

  def test_set_timer
    assert_respond_to(@bitethedust, :set_timer)
    assert_equal "done", @bitethedust.set_timer {|n| "done"}
  end
end
