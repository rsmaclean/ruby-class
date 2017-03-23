require '../lib/OrangeTree'

tree = OrangeTree.new

def age_tree(tree)
  puts tree.one_year_passes
  puts "#{tree.status}\n\n"
end

def pick_orange(tree)
  puts tree.pick_orange
  puts "#{tree.count_oranges}\n\n"
end


## begin
puts tree.status
puts "#{tree.count_oranges}\n\n"

age_tree(tree)
pick_orange(tree)

(1..4).each do |year|
  age_tree(tree)
end

pick_orange(tree)

(1..6).each do |year|
  age_tree(tree)
end
