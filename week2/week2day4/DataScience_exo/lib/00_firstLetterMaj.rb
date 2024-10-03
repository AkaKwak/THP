require_relative("./00_journalists.rb")

def letter_caps
  upper_case = $list.count do |str|
    str.length >= 2 && str[1] == str[1].upcase
  end
  puts "Nombre de Handles commençant par une majuscule : #{upper_case}"
end

letter_caps 