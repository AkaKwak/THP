require_relative("./00_journalists.rb")

def target
  position = $list.index("@epenser")
  puts "La position de @epenser dans l'index est #{position}."
end 

target

# Quelle est la position dans l'array de la personne @epenser ?