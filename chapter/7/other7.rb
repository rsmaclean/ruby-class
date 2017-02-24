byeCount = 0
puts 'begin'
while true
  sheSaid = gets.chomp
  if sheSaid != '' && sheSaid == 'BYE'.upcase
    byeCount = byeCount + 1
    if byeCount >= 3
      break
    end
  else
    byeCount = 0
  end
  puts 'WHAT?'
end
puts 'bye'



=begin
puts 'enter year 1'
year1 = gets.chomp.to_i

puts 'enter year 2'
year2 = gets.chomp.to_i

while year1 <= year2
  if year1 % 4 == 0 && (year1 % 100 != 0 || year1 % 400 == 0 )
    puts year1.to_s
  end
  year1 = year1 + 1
end
puts 'bye'
=end