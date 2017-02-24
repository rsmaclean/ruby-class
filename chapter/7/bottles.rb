def bottle_desc(num)
  bottle = "bottle"
  if num != 1
    bottle<<"s"
  end
  bottle
end

num = 99
while num > 0
  puts "#{num} #{bottle_desc(num)} of beer on the wall, #{num} #{bottle_desc(num)} of beer. Take one down, pass it around, #{num-1} #{bottle_desc(num-1)} of beer on the wall."
  num = num-1
end

puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
