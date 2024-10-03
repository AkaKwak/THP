#exo_07.rb

puts "Entrez un nombre :"
  print ">"
nombre = gets.chomp.to_i

(nombre + 1).times do |i|
  puts i
end