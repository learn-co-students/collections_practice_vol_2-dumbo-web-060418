# your code goes here
#.all? returns boolean
# returns true if true; false, otherwise

require 'pry'

def begins_with_r(arr)
  arr.all? { |word| word.start_with? "r" }
end

def contain_a(arr)
  new_arr = []
  arr.each do |word|
    new_arr << word if word.include?("a")
  end
  new_arr
end

#returns true if true; false, otherwise
def first_wa(arr)
  arr.find { |word| word[0..1] == "wa" }
end

#.is_a? => class
def remove_non_strings(arr)
  arr.delete_if { |el| !(el.is_a? String)}
end

#needed to go through hashes in order to finish this one
def count_elements(arr)
  arr.uniq.collect do |el|
    el[:count] = arr.count(el)
    el
  end
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |datum|
      datum[key[:first_name]].each do |k, v|
        key[k] = v
      end
    end
  end
  keys

end

# key = [{:first_name => "blake"},{:first_name => "ashley"}]

# data =[{"blake" => {
#         :awesomeness => 10,
#         :height => "74",
#         :last_name => "johnson"
#         },
#         "ashley" => {
#         :awesomeness => 9,
#         :height => 60,
#         :last_name => "dubs"
#         }
#       }]

def find_cool(arr)
  final_arr = []
  arr.each do |info|
    info.each do |key, value|
      if info[key] == "cool"
        final_arr << info
      end
    end
  end
  final_arr
end

def organize_schools(arr)
  organized = {}
  arr.each do |k, v|
    v.each do |key, value|
      if organized[value]
        organized[value] << k
      else
        organized[value] = []
        organized[value] << k
      end
    end
    #binding.pry

  end
  #binding.pry
  organized
end

=begin
schools = [
  {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    },
  }
]
=end
