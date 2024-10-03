#Lancer une partie / oui ou non /
#-----------
#Exécuter la partie
#-----------
#Le joueur est en bas de 10 marches
#-----------
#x turns to do / un lancer de dés par tour / le dés à 6 faces
#-----------
#if 5 ou 6 : avancer d'une marche / dire à l'utilisateur qu'il avance d'une marche /
#Tu est à la marches #{numéro_de_marche}
#-----------
#if 1 : Tu descend d'une marche / dire à l'utilisateur qu'il descend d'une marche /
#Tu est à la marches #{numéro_de_marche}
#-----------
#if 2, 3 ,4 : Rien ne ce passe / dire à l'utilisateur que  rien ne ce passe /
#Tu est resté à la marches #{numéro_de_marche}
#-----------
#if #{numéro_de_marche} = 10 / Happy quack to you ! Tu a monter tout les étages (option / en x lancé)

def roll_dice
  return rand(6)+1
end

def analyse_dice(dice)
  if dice >=5
    puts "Vous avancez!"
    return 1
  elsif dice == 1
    puts "Vous reculez!"
    return -1
  else
    puts "rien ne se passe"
    return 0
  end
end

def show_state(num)
  puts "Vous êtes sur la marche n°#{num}"
end

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu !!"

  step = 1
  show_state(step)

  while( !is_over?(step) ) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyse_dice(roll_dice)
    show_state(step)
  end
end

play