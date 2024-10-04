puts "non non non, il est 03h15 je vais allez dormir !"
puts "3h23 : j'avais besoin de savoir"
puts "CHAT GPT"

require_relative("./01_cryptocurrencies.rb")

hash_mixed = $cryptos.zip($prices).to_h

puts hash_mixed
######################################### A PARTIR D'ICI C'EST CHAT-GPT4o"#####################################################
def show_menu
    puts "=== Menu ==="
    puts "1. Afficher toutes les cryptos avec leurs prix"
    puts "2. Afficher la crypto la plus chère"
    puts "3. Afficher la crypto la moins chère"
    puts "4. Afficher les cryptos avec un prix inférieur à 6000"
    puts "5. Afficher la crypto la plus chère parmi celles inférieures à 6000"
    puts "0. Quitter"
    puts "============"
end
  
  # Méthodes pour les différentes fonctionnalités
  
  def display_all(hash_mixed)
    hash_mixed.each { |cryptos, price| puts "#{crypto}: #{price}" }
  end
  
  def most_expensive(hash_mixed)
    max_value = hash_mixed.max_by { |crypto, price| price }
    puts "La crypto avec la plus grande valeur est #{max_value[0]} avec un prix de #{max_value[1]}"
  end
  
  def least_expensive(hash_mixed)
    min_value = hash_mixed.min_by { |crypto, price| price }
    puts "La crypto avec la plus petite valeur est #{min_value[0]} avec un prix de #{min_value[1]}"
  end
  
  def below_6000(hash_mixed)
    below_6000 = hash_mixed.select { |crypto, price| price < 6000 }
    puts "Les devises avec un cours inférieur à 6000 sont :"
    below_6000.each { |crypto, price| puts "#{crypto}: #{price}" }
  end
  
  def most_expensive_below_6000(hash_mixed)
    below_6000 = hash_mixed.select { |crypto, price| price < 6000 }
    most_expensive = below_6000.max_by { |crypto, price| price }
    puts "La devise la plus chère parmi celles inférieures à 6000 est #{most_expensive[0]} avec un prix de #{most_expensive[1]}"
  end
  
  # Logique principale du menu
  choix = nil
  until choix == 0
    show_menu
    print "Entrez votre choix //MADE WITH CHAT GPT-4o\\ : "
    choix = gets.chomp.to_i
  
    case choix
    when 1
      display_all(hash_mixed)
    when 2
      most_expensive(hash_mixed)
    when 3
      least_expensive(hash_mixed)
    when 4
      below_6000(hash_mixed)
    when 5
      most_expensive_below_6000(hash_mixed)
    when 0
      puts "Au revoir !"
    else
      puts "Choix invalide, veuillez réessayer."
    end
  
    # Attente pour appuyer sur 'Entrée' avant de réafficher le menu
    if choix != 0
      print "Appuyez sur 'Entrée' pour continuer..."
      gets.chomp
    end
  
    puts "\n"
  end