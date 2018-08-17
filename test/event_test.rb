require "minitest/emoji"
require "minitest/autorun"
require "./lib/event"

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_it_has_attributes
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal "Curling", event.name
    assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_it_shows_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
  end

  def test_it_shows_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 18, event.min_age
  end

  def test_it_can_give_standard_deviation
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal 8.28, event.standard_deviation_age
  end
end
