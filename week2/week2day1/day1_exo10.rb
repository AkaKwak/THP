#year_today_is = 2024
#year_target_is = 2017 

today = 2024
target = 2017

puts "Bonjour, Quel âge as tu ?"
print ">"

difference = today - target 

user_age = gets.chomp.to_i
 puts "Tu a #{user_age} ans, et en 2017 tu avais #{user_age - difference} ans"
