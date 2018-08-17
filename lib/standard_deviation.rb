require 'pry'

ages = [24, 30, 18, 20, 41]

def std_dev(ages)
  sum = ages.sum.to_f
  total = ages.count.to_f
  average = sum/total

  x = ages.map do |age|
    age - average
  end

  rounded_x = x.map do |num|
    num.round(2)
  end

  rounded_x_squared = rounded_x.map do |num|
    num**2
  end

  std_dev = Math.sqrt(rounded_x_squared.sum/total)
  p std_dev.round(2)
end

std_dev(ages)
