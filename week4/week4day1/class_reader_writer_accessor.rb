require 'pry'

# class User
#   attr_writer :mastercard
#   def read_mastercard
#     return @mastercard
#   end
# end
# binding.pry 
# puts "end of file"
# 

# class User
#   attr_reader :birthdate

#   def update_birthdate(birthdate_to_update)
#     @birthdate = birthdate_to_update
#   end
# end

# binding.pry
# puts "end of file"  
# 

class User
  attr_accessor :email
end

binding.pry
puts "end of file"