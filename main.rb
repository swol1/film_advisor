require_relative "lib/films_library"

Dir.chdir(File.dirname(__FILE__) + "/data")

dir_films = Dir["*.txt"]

library = FilmsLibrary.new(dir_films)

puts "Фильм какого режиссера вы хотите посмотреть?"
library.directors.each_with_index { |item, index| puts "#{index + 1}. #{item}" }

user_input = gets.to_i
director_name = library.directors[user_input - 1]

puts library.random_film(director_name)