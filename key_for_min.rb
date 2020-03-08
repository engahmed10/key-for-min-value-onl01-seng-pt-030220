# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  arr=[]
    #we will find the value of all array and put them in new array
  arr=name_hash.collect do |key,value|
     value
  end

#find minimum
 c=1
 min=arr[0]
 while c < arr.length-1
   if (min <= arr[c] && arr[c+1] >= min)
            min=min
   elsif (min > arr[c] && arr[c] < arr[c+1])
     min=  arr[c]
   else
     min=arr[c+1]
   end
   c +=1
 end

return name_hash.key(min)

end
