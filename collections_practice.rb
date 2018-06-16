def begins_with_r(array)
  boo = true
  array.each{|str|
    if str.index('r') != 0
      boo = false
    end}
  boo
end


def contain_a(array)
  rrray = []
  array.each{|str|
    if str.index('a').class == Fixnum
      rrray << str
    end}
  rrray
end

def first_wa(array)
  rrray = []
  array.each{|str|
    if str.class == String
      if str.start_with?("wa") == true
      rrray << str
      end
    end}
  rrray[0]
end

def remove_non_strings(array)
  only_strings = []
  array.each {|str|
    if str.class == String
      only_strings << str
    end}
  only_strings
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    current_name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == current_name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  counter = -1
  merged_array = []
  while counter < data.size
    merged_array.unshift(keys[counter].merge(data[counter].values[counter]))
    counter += 1
  end
  merged_array
end

def find_cool(array)
  array.select{|hash| hash[:temperature] == "cool"}
end

def organize_schools(school_hash)
  organized_schools = {}
  school_hash.each do |school, hash|
    hash.each do |data, location|
      organized_schools[location] = []
    end
  end

  organized_schools.each do |place, schools|
   school_hash.each do |school, hash|
    hash.each do |data, location|
      if location == place
       schools << school
       end
    end
  end
  end

  organized_schools
end
