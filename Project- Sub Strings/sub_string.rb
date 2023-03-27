dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, _dictionary)

 string = string.split()
  
  _dictionary.reduce(Hash.new(0)) do | subs, num |

    string.each_with_index { |val|
      if val.downcase.include?(num)
        subs[num] += 1
      end
    }
    subs
    
  end
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("below", dictionary)