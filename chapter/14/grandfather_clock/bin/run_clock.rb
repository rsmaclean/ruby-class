require '../lib/GrandfatherClock'

clock = GrandfatherClock.new

clock.time { puts 'DONG!' }

clock.time do |n|
  puts '*' * (n+1)
end




