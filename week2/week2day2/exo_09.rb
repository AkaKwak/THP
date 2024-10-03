#exo_09.rb

today = 2024
puts "Quelle est ton année de naissance ?"
print "> "
birth_year = gets.chomp.to_i

(today-birth_year+1).times do |i|
    puts "#{birth_year+i}"
end 