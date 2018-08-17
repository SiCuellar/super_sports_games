require './lib/games'
require './lib/event'

puts "Hello!"
puts "Welcome to the game summary program!"
puts "Please enter the desired event year."
year = gets.chomp

game = Games.new(year)

While 
  puts "Please enter the name of the desired event"
  name  = gets.chomp


  puts "Please enter ages!"
  puts "when you are done enter Exit "
  ages = []
  age = gets.chomp

  while age != "Exit"
  ages << age.to_i
  age = gets.chomp
  end

  event = Event.new(name, ages)

  p game.event_summary(event)
