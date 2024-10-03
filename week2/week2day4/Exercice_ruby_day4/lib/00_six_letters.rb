require_relative("./00_journalists.rb")

def shortest_handle
  short = $list.min_by {|handle| handle.length}
 puts "Le nom d'utilisateur le plus court est #{short}"
end

shortest_handle

# handles_5_char = handles.select { |handle| handle.length - 1 == 5 } 
  # puts "Il y a #{handles_5_char.size} handles avec 5 caractères."