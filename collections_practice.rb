def begins_with_r(arr)
arr.each do |e|
  if e.chars.first != "r"
    return false
  end
end
return true
end

def contain_a(arr)
arr.select {|e| e.include?("a")}
end

def first_wa(arr)
arr.find {|e| e[0,2]==("wa")}
end

def remove_non_strings(arr)
arr.delete_if {|e| e.class != String}
end

def count_elements(arr)
  arr.group_by(&:itself).map {|key, value| key.merge(count: value.length)}
end

def merge_data(keys, data)
  array = data[0].values.map.with_index do |v, i|
   keys[i].merge(v)
    end
  array
end

def find_cool(arr)
arr.select {|n| n[:temperature] == "cool"}
end

def organize_schools(arr)
arr.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
  end
end