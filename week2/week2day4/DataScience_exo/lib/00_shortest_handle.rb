require_relative("./00_journalists.rb")

def shortest_handle
  short = $list.min_by {|handle| handle.length}
 puts "Le nom d'utilisateur le plus court est #{short}"
end

shortest_handle