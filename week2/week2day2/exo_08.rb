#exo_08.rb

puts "Entrez un nombre :"
print ">"
number = gets.chomp.to_i

#number=5 i récupère le nombre 0
(number+1).times do |i|
  #puts 5-0 puis loop 2 = 5-1 etc
  puts number - i
end
