#exo_13.rb
  array_email = []
  5.times do |tenth|
    10.times do |unit|
        email = "jean.dupont.#{tenth}#{unit}@email.fr"
        array_email.push(email)
    end
  end


  # Écris un programme exo_13.rb qui va créer une liste de 50 faux emails et les stocker dans une array. Voici le format que devront avoir les faux emails : "jean.dupont.01@email.fr"

  # Création de l'array pour stocker les emails
# emails = []

# Boucle pour générer 50 emails
# 50.times do |i|