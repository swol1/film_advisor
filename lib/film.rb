class Film
  attr_reader :director, :title, :year

  def initialize(films)
    @director = films[1]
    @title = films[0]
    @year = films[2]
  end

  def to_s
    "#{@title} (#{@director}, #{@year})"
  end
end