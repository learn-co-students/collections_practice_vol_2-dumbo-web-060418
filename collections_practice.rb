#Return true if every element of the tools array starts with an "r" and false otherwise.
tools_one = ["ruby", "rspec", "rails"]
tools_two = ["ruby", "rspec", "sails"]

def begins_with_r(array)
  array.all? {|word| word[0] == 'r'}
end

begins_with_r(tools_one)

#return all elements that contain the letter 'a'
elements = ["earth", "fire", "wind", "water", "heart"]

def contain_a(array)
  has_a = []
  array.each do |word|
       if word.include?('a') == true
       has_a << word
       end
  end
  has_a
end

contain_a(elements)

#Return the first element that begins with the letters 'wa'
stuff = ["candy", :pepper, "wall", :ball, "wacky"]

def first_wa(array)
  array.find {|word| word[0] == 'w' && word[1] == 'a'}
end

#remove anything that's not a string from an array
random = ["blake", 1, :hello]

def remove_non_strings(array)
  array.delete_if do |item|
    !item.is_a?(String)
  end
end

#count how many times something appears in an array
people = [{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]

def count_elements(array)
  array.group_by(&:itself).map {|key, value| key.merge(count: value.length)}
end

#combines two nested data structures into one

def merge_data(keys, data)
  array = data[0].values.map.with_index do |v, i|
   keys[i].merge(v)
    end
  array
end

#find all cool hashes
def find_cool(hash)
  hash.select {|x| x[:temperature] == "cool"}
end

#organizes the schools by location
def organize_schools(hash)
  hash.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
  end
end
