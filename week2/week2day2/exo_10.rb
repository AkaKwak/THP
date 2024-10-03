#exo_10.rb

today = 2024
puts "Quelle est ton année de naissance ?"
print "> "
birth_year = gets.chomp.to_i
#ARRAY ENTRE |PIPE|  = 0
(today-birth_year+1).times do |i|
    puts "En #{birth_year + i}, tu avais #{i} ans"
  end 

#i = puts "age de la personne"
    #Pour chaque année affichée, le programme devra annoncer l'âge que l'utilisateur avait cette année-là.
    ##2024-2021 = age de la personne
