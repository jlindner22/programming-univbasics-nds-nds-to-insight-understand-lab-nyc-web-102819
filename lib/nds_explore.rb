$LOAD_PATH.unshift(File.dirname(__FILE__))
# require 'pp'
# # Call the method directors_database to retrieve the NDS
# def pretty_print_nds(nds)
#   # Change the code below to pretty print the nds with pp 
#   directors_database
# end

require 'pp'
require 'directors_database'
# Call the method directors_database to retrieve the NDS
directors_database
def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  spielberg = directors_database[0]
  movies_index = 0 
  movies = spielberg[:movies]
  while movies_index < movies.count do
    puts movies[movies_index][:title]
    movies_index += 1 
end
end

#within directors_database:
# :name 
# :movies 
#   { :title 
#   :studio
#   :worldwide_gross
#   :release_year}