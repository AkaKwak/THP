#exo_11.rb

#qui va demander son âge à l'utilisateur, et qui, pour chaque année depuis sa naissance, dira "Il y a X ans, tu avais Y ans".

# today = 2024
puts "Quel est ton âge ?"
print "> "
user_age = gets.chomp.to_i
#ARRAY ENTRE |PIPE|  = 0
(user_age+1).times do |i|
    puts "Il y'a #{i} ans, tu avais #{user_age - i} ans"
  end 
