# exo_17.rb

puts "Salut sale architecte, combien d'étages veux-tu ?"
print "> "
user_number=gets.chomp.to_i
user_number.times do |floor|
  puts " " * (user_number-floor-1) + "#" * ((floor+1) * 2-1)
end