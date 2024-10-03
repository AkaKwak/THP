# exo_12.rb

# Écris un programme exo_12.rb qui va faire la même chose, sauf que si X et Y sont égaux, il dira "Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui".*

puts "Quel est ton âge ?"
print "> "
user_age = gets.chomp.to_i
  #ARRAY ENTRE |PIPE|  = 0
  #si user_age = 6 / 6 boucles sont effectué pour tester le if
user_age.times do |i|
  # if = "Il y'a #{i + 1} ans, tu avais #{user_age - i - 1} ans"
  if (i+1) == (user_age - i - 1)
    puts "Il y'a #{i + 1} ans, tu avais la moitié de l'âge que tu as aujourd'hui."
  end
  end 


  #erreur car je n'affiche pas toute les lignes et ne transforme pas la ligne spécifique à la pair
