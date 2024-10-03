#exo_14.rb tu m'auras fait suer !
# --------------------------------------
# INVALIDE
# 5.times do |tenth|
#   10.times do |unit|
#     # PIPE pour faire les comparaisons OR / == c'est un test "comparaison"
#     if unit == 0 || unit == 2 || unit == 4 || unit == 6 || unit == 8
#       puts "jean.dupont.#{tenth}#{unit}@email.fr"
#     end
#   end
# end
# ------------------------------------------
# VALIDE
array_email = []
5.times do |tenth|
  10.times do |unit|
      email = "jean.dupont.#{tenth}#{unit}@email.fr"
      array_email.push(email)
  end
end
  50.times do |counter|
    #vérification que le nombre est pair (counter)
    if counter.even?
      puts array_email[counter]
    end
  end

#   array_email = []
# 5.times do |tenth|
#   10.times do |unit|
#       email = "jean.dupont.#{tenth}#{unit}@email.fr"
#       array_email.push(email)
#   end
# end
#   50.times do |counter|
#     rest=counter%2
#       if rest == 0
#         puts array_email[counter]
#       end
#   end