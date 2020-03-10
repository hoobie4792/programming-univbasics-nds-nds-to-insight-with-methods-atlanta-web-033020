$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  index = 0
  total = 0
  
  movies = director_data[:movies]
  while index < movies.length do
    total += movies[index][:worldwide_gross]
    index += 1
  end
  
  return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  while row_index < director_data.length do
    name = nds[:name]
    result[name] = resultgross_for_director(nds[row_index])
    row_index += 1
  end
  return result
end
