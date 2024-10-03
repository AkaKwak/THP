#exo_15.rb

puts "Salut sale architecte, combien d'étages veux-tu ?"
print "> "
user_number=gets.chomp.to_i
user_number.times do |floor|
  puts "#" * (floor+1)
end
