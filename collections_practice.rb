def begins_with_r(array)
  array.all? do |tool|
  tool[0] == "r"
  end
end

def contain_a(array)
  arr = []
  array.each do |element|
    if element.include?("a")
      arr << element
    end
  end
  arr
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if { |x| !(x.is_a? String) }
end

def merge_data(keys, data)
  arr = data[0].values.map.with_index do |v, i|
    keys[i].merge(v)
    end
  arr
end

def count_elements(array)
  array.group_by(&:itself).map {|k, v| k.merge(count: v.length)}
end
  
def find_cool(hash)
  hash.select {|x| x[:temperature] == "cool"}
end

def organize_schools(hash)
  hash.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end

