def bubble_sort (unsorted_array)

    sorted = false
    swapped = false
    
    
    until sorted
  
      unsorted_array.each_with_index do | value, index |
  
      if index != unsorted_array.length
      if value > unsorted_array[index+1].to_i && unsorted_array[index+1] != nil
        unsorted_array[index] = unsorted_array[index+1]
        unsorted_array[index+1] = value
        swapped = true
      end
      end
  
  
    end
    if !swapped then sorted = true end
      
      swapped = false
    end
  
    return unsorted_array
  end
  
  print bubble_sort([80,70,1,4,3,78,2,0,2])