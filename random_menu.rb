adjective = File.open("adjectives.txt").read.split("\n").shuffle!
food = File.open("foods.txt").read.split("\n").shuffle!
twist = File.open("twists.txt").read.split("\n").shuffle!
menu_length = ARGV[0].to_i

shortest_list = [adjective.length, food.length, twist.length].min

if menu_length > shortest_list
  menu_length = shortest_list
  puts "\n(Due to budget constraints, menu has been shortened to #{menu_length} items. We apologize for the inconvenience.)"
end

puts "\nLe Menu:\n\n"

menu_length.times do |i|
  puts "#{i+1}. #{adjective.pop} #{food.pop} #{twist.pop}\n"
end

puts ""
