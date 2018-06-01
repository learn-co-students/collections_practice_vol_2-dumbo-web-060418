def begins_with_r(array)
  condition = true
  array.each do |element|
    if element[0]== 'r'
      condition
    else
      condition = false
    end
  end
  condition
end

def contain_a(array)
  elements_containing_a = []

  array.each do |element|
    if element.include?('a')
      elements_containing_a << element
    end
  end
  elements_containing_a
end

def first_wa(array)
  result = nil
  array.each do |element|
    if element.match(/wa/)
      result = element
      break
    end
  end
  result
end

def remove_non_strings(array)
  no_string_array = []

  array.each do |element|
    no_string_array << element if element.is_a?(String)\
  end
  no_string_array
end

def count_elements(array)
  array.each do |element|
    element[:count] = 0
    name = element[:name]
    array.each do |hash|
      if hash[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  result = []
  array.each do |element|
    result << element if element[:temperature] == "cool"
  end
  result
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
