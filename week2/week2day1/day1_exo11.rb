
puts "Yo boy, t'es chaud tu me donnes un chiffre entre 0 et 100 ?"
print ">"
boy_number =gets.chomp.to_i
puts "Tu a choisis #{boy_number}"
boy_number.times do
    puts 'I Quack You <3'
end 

#number_true = boy_number.to_i > 100
#number_true = false
#puts "Tu a choisis un chiffre supérieur à 100 ! Coquin"
