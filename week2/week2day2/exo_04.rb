#exo_04.rb


#target = +100
today = 2024
puts "Bonjour quel est on année de naissance ?"
print ">"
user_birth =gets.chomp.to_i

puts "Tu a #{today-user_birth} ans et tu seras centenaire en #{user_birth+100}"