#!/usr/bin/env ruby
puts "\nEnter your first name:"
first = gets.chomp

puts 'Enter your middle name:'
middle = gets.chomp

puts 'Enter your last name:'
last = gets.chomp

puts 'Welcome '+first +' '+ middle +' '+ last,''


puts 'Tell me '+first+ ', what is your favorite number?'
favoriteNumber = gets.chomp

puts 'Well, '+ favoriteNumber +' is a most excellent number, but I have a slightly better one.  How about '+ favoriteNumber.next + "!\n\n"

