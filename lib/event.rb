require './lib/standard_deviation'

class Event
  attr_reader :name,
              :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    sum = ages.sum.to_f
    total = ages.count.to_f
    sum/total
  end

  def standard_deviation_age
    std_dev(ages)
  end
end
