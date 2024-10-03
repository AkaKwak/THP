require_relative("./00_journalists.rb")
def sort_sized
sorting_list = $list.sort_by {|handle| handle.length}
puts "Voici la liste des Handles trié par taille"
puts "#{sorting_list}"
end

sort_sized

# Trie la liste de handle par taille des handle (les plus petits en premiers, les plus grands après)