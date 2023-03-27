
def caesar_cipher(base_string, shift_factor)
    base_string = base_string.split('')
  
    string_lower_caesar = ('a'..'z').to_a
    string_upper_caesar = ('A'..'Z').to_a
  
  
    base_string.each_with_index do | char, index |
      
      if string_lower_caesar.include?(char) 
    
        base_string[index] = string_lower_caesar.select { |val| 
          (char.ord + shift_factor) == val.ord or  (val.ord == ((char.ord + shift_factor) - 26)) }
    
      elsif string_upper_caesar.include?(char) 
    
        base_string[index] = string_upper_caesar.select { |val| 
          (char.ord + shift_factor) == val.ord or (val.ord == ((char.ord + shift_factor) - 26))
        }
          
      end
   
    end
  
    return base_string.join('')
  end
  
  puts caesar_cipher("What a string!", 5)
  
  
  
  
  
  # First Attempt, Messy as hell
  
  # print  "Enter a string: "
  # input_string = gets.chomp.split('')
  
  # print  "Enter the shift offset: "
  # input_value = gets.chomp
  
  # input_string.each_with_index do |char, index |
  
  #     #puts char.ord.to_i + input_value.to_i
  
  #   if char.ord.to_i >= 97 && char.ord.to_i <= 122 then
  #     if (char.ord.to_i + input_value.to_i) > 122
  #       input_string[index] = (96 + ((char.ord.to_i + input_value.to_i) - 122)).chr
  #       puts (96 + ((char.ord.to_i + input_value.to_i) - 122))
  #     else
  #        input_string[index] = (char.ord.to_i + input_value.to_i).chr
  #     end
  #   end
  
  #   if char.ord.to_i >= 65 && char.ord.to_i <= 90
  #     if (char.ord.to_i + input_value.to_i) > 90
  
  #       input_string[index] = (64 + ((char.ord.to_i + input_value.to_i) - 90)).chr
  #       puts (64 + ((char.ord.to_i + input_value.to_i) - 90))
  #     else
  #        input_string[index] = (char.ord.to_i + input_value.to_i).chr
  #     end
  #     # if char.ord.to_i >= 65 && char.ord.to_i <= 90 || char.ord.to_i >= 97 && char.ord.to_i <= 122 then
  #     #   input_string[index] = (char.ord.to_i + input_value.to_i).chr
  #     #  # puts (char.ord.to_i + input_value.to_i)
  #   end
  
  # end
  # puts input_string.join
  