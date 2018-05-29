require "pry"

def begins_with_r(tools)
tools.all? { |x| x.start_with?("r") }
end

def contain_a(array)
array.collect do |x|
  if x.include?("a")
    x
  end
end.compact
end

def first_wa(array)
  array.collect do |x|
    if x.to_s.start_with?("wa")
      x
    end
  end.compact.first
end

def remove_non_strings(array)
array.delete_if {|x| x.class != String }
end

def count_elements(array)
  names = array.map{|x| x[:name]}
  counted = []
    array.each do |pair|
    pair.each do |word, name|
    counting = Hash.new
    working = []
    counting[:name] = name
    counting[:count] = names.count(name)
    working << counting
unless counted[0] == working[0]
  counted << counting
end
end
end
  return counted
end

def merge_data(keys, data)
newArray = []
blakeHash = keys[0]
ashleyHash = keys[1]
  data[0]["blake"].each do |x, y|
blakeHash[x] = y
end
  data[0]["ashley"].each do |z, w|
    ashleyHash[z] = w
end
newArray << blakeHash
newArray << ashleyHash
return newArray
end

def find_cool(argument)
argument.select { |array| array[:temperature] == "cool"}
end

def organize_schools(schools)
cities = schools.map { |x, y| y[:location]}
cities.uniq!
cityHash = Hash[cities.map {|x| [x, Array.new]}]
schools.each do |name, info|
  info.each do |word, location|
    cityHash[location] << name
end
end
return cityHash
end
