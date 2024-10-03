#exo_06.rb

puts "Yo boy, choisis un chiffre !"
  print ">"
user_number = gets.chomp.to_i

(user_number - 1).times do
  puts "Quacked you !"
end
