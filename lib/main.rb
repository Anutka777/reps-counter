# frozen_string_literal: true

require './lib/rep_counter'
# Here will be a script for text-UI
workout = RepCounter.new
puts 'Enter the workout type.'
puts '1 for simple pyramid.'
puts '2 for diamond pyramid'
puts '3 for simple + reversed pyramids'
mode = gets.chomp
puts 'Enter the height of the pyramid'
height = gets.chomp.to_i
print 'Total amount of reps you\'ll be doing today is: '
if mode == '1'
  puts workout.simple_pyramid(height)
elsif mode == '2'
  puts workout.dimond_pyramid(height)
elsif mode == '3'
  puts workout.simple_with_reversed_pyramid(height)
end
