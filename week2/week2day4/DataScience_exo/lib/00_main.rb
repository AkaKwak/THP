require_relative("./00_journalists.rb")###### Call my array as a symbol
#############################################

def howMany_handle
  total_journalist = $list.length  # Calcule la longueur de $list
  puts "#{total_journalist}"
end

#######################################

def shortest_handle
  short = $list.min_by {|handle| handle.length}  # Utilise min_by pour parcourir $list et trouver le handle avec la plus petite longueur
  puts "Le nom d'utilisateur le plus court est #{short}"
end

#######################################

def fiveChar_handle
  handles_6_char = $list.select { |list| list.length == 6 }  # Sélectionne tous les handles dont la longueur est exactement 6 caractères
  puts "Il y a #{handles_6_char.size} handles avec 5 caractères."  # Affiche le nombre d'éléments sélectionnés (même si le texte mentionne 5 caractères, le code sélectionne ceux de 6 caractères pour occulter le @)
end

#######################################

def capsChar_handle
  upper_case = $list.count do |str|  # Parcourt chaque handle dans $list et compte ceux qui remplissent la condition suivante
    str.length >= 2 && str[1] == str[1].upcase  # Vérifie si le deuxième caractère du handle (après '@') est une majuscule [A\/Z]
  end
  puts "Nombre de Handles commençant par une majuscule : #{upper_case}"
end

#######################################

def orderAZ_handle
  sorted_list = $list.sort  # Trie les handles dans l'ordre alphabétique (ordre croissant par défaut)
  puts "#{sorted_list}"
end

#######################################

def sortSmallToBig_handle
sorting_list = $list.sort_by {|handle| handle.length}  # Trie les handles en fonction de leur longueur, du plus court au plus long
puts "Voici la liste des Handles trié par taille"
puts "#{sorting_list}"
end
#######################################

def target_handle
  position = $list.index("@epenser")
  puts "La position de @epenser dans l'index est #{position}."
end

#######################################

def repartition_handle
  5.times do
    puts "I quacked you <3"
  end
  puts "J'ai pas réussis, je ferais mieux la prochaine fois. Il est 03h13"
  # var_x
  
  # var_y
  # puts "il y a #{x} noms de comptes avec #{y} caractères"
end

#######################################

def show_menu
  puts "=== Menu ==="
  puts "1. Combien y a-t-il de handle dans cette array ?"
  puts "2. Quel est le handle le plus court de cette liste ?"
  puts "3. Combien y-a-t'il de handle contenant 5 caractères ?"
  puts "4. Combien commencent par une majuscule ?"
  puts "5. Trie la liste par ordre alphabétique."
  puts "6. Trie la liste par taille des handle (Petit au plus grand)."
  puts "7. Quelle est la position dans l'array de la personne @epenser ?"
  puts "8. Répartition des handle par taille de ces derniers"
  puts "0. Quitter"
  puts "============"
end

def execute_function(choix)
  case choix
  when 1
    howMany_handle
  when 2
    shortest_handle
  when 3
    fiveChar_handle
  when 4
    capsChar_handle
  when 5
    orderAZ_handle
  when 6
    sortSmallToBig_handle
  when 7
    target_handle
  when 8
    repartition_handle

  else
    puts "T'essais de faire quoi là ?"
  end
end

choix = nil
until choix == 0
  show_menu
  print "Entrez votre choix : "
  choix = gets.chomp.to_i
  
  if choix == 0
    puts "Au revoir !"
  else
    execute_function(choix)
      print "Appuyez sur 'Entrée' pour continuer..."
    gets.chomp  
  end
  
  puts "\n"
end

