require "pry"

def begins_with_r(array)
  newArray = []
  i = 0
            while i < array.length
              word = array[i]
              isTrue = word.start_with?("r")
              newArray << isTrue
              i += 1
            end
  if newArray.include?(false)
   return false
  else
    return true
  end
end

def contain_a(array)
  newArray = []
  i = 0
              while i < array.length
                word = array[i]
                  if word.include?(?a) == true
                    newArray << word
                  end
                i += 1
              end
  return newArray
end

def first_wa(array)
  i = 0
  newArray = []
  while i < array.length
    word = array[i]
    word = word.to_s
      if word.start_with?("wa") == true
        newArray << word
      end
    i += 1  
  end  
  return newArray.first
end

def remove_non_strings(array)
  i = 0
    newArray = []
  while i < array.length
  word = array[i]
      if word.class == String
        newArray << word
      end
  i += 1
  end
  return newArray
end

def count_elements(array)
  uniqArray = array.uniq
  countArray = []
  array.uniq.each do |entry|
    countArray << {:name => entry[:name], :count => array.count(entry)}
  end
  countArray
end


def merge_data(keys, data)
  newArray = []
  hsh = data[0]
  keys.each do |person|
    firstName = person[:first_name]
    attributes = hsh[firstName]
    attributes[:first_name] = firstName
    newArray << attributes
  end
  return newArray
end

def find_cool(cool)
  return cool.select {|hsh| hsh[:temperature] == "cool"} 
end

def organize_schools(schools)
  output = {}
  schools.each do |schoolName, locationHash|
    location = locationHash[:location]
    if output[location]
      output[location] << schoolName
    else
      output[location] = [schoolName]
    end
  end
  return output
end

