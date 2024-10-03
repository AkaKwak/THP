require_relative("./00_journalists.rb")

def six_letters
  handles_6_char = $list.select { |list| list.length == 6 }
 puts "Il y a #{handles_6_char.size} handles avec 5 caractères."
end

six_letters