# # exo_16.rb

# user_number = nil

# def pyramid
#   puts "Salut sale architecte, combien d'étages veux-tu ?"
# print "> "
# user_number=gets.chomp.to_i


#   if user_number <= 0
#     print "Tu me prends pour qui ?"

#   elsif user_number > 25
#     print "Tu déconne là ?"

#   else
#   user_number.times do |floor|
#     puts " " * (user_number-floor-1) + "#" * (floor+1)
#   end
#   end
# end

# pyramid

def pyramid
  user_number = nil

  # Boucle pour relancer la demande tant que l'entrée est incorrecte
  loop do
    puts "Salut sale architecte, combien d'étages veux-tu ? (Entre 1 et 25)"
    print "> "
    user_number = gets.chomp.to_i

    if user_number <= 0
      puts "Tu me prends pour qui ?"
    elsif user_number > 25
      puts "Tu déconnes là ?"
    else
      break # Sort de la boucle si l'entrée est valide
    end
  end

  # Construction de la pyramide
  user_number.times do |floor|
    puts " " * (user_number - floor - 1) + "#" * (floor + 1)
  end
end

  pyramid