require '../lib/OperateDragon'

dragon = OperateDragon.new
dragon.create('Norbert')
dragon.help
puts ''

command = ""
while command != 'stop'
  puts "What would you like to do to your dragon (enter \"stop\" to quit)?"
  command = gets.chomp.to_s
  break if (command == 'stop')
  dragon.do(command)
  puts ''
end

