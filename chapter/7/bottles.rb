num = 99
while num > 0

  bottle = "bottle"
  if num != 1
    bottle<<"s"
  end

  bottle_minus_1 = "bottle"
  if num-1 != 1
    bottle_minus_1<<"s"
  end

  puts "#{num} #{bottle} of beer on the wall, #{num} #{bottle} of beer. Take one down, pass it around, #{num-1} #{bottle_minus_1} of beer on the wall."
  num = num-1
end

puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
