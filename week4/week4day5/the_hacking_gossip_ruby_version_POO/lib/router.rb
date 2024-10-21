# router.rb

class Router
  def initialize
    @controller = Controller.new
  end

  def clear_screen
    system'clear'
  end

  def perform
    clear_screen
    puts "Bienvenue dans l'application Gossip Project"
    while true
      puts "===========MENU==========="
      puts "Que souhaitez vous faire ?"
      puts "1 - Ajouter un gossip"
      puts "4 - Quitter l'application"

      print ">"
      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.create_gossip #on apelle la méthode create gossip contenu dans le fichier controller.rb (cf ligne 5)
      when 4
        puts "A bientôt !"
        break
      else
        puts " Choix invalide, veuillez rééssayer."
      end
    end
  end
end