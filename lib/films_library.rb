require_relative "film"

class FilmsLibrary
  def initialize(file_path)
    @library = file_path.map { |file| File.readlines(file, mode: "r:UTF-8", chomp: true) }
    @library.map! { |info| Film.new(info) }
  end

  def directors
    @library.map(&:director).uniq.sort
  end

  def film(director)
    @library.select { |film| film.director == director  }
  end

  def random_film(director)
    film(director).sample
  end
end