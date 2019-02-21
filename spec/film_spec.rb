require 'film'

describe Film do
  before do
    file_info = File.readlines('spec/fixtures/0.txt', chomp: true)
    @film = Film.new(file_info)
  end

  it 'show director for a file' do
    expect(@film.director).to eq 'Алехандро Иньярриту'
  end

  it 'show title for a file' do
    expect(@film.title).to eq 'Бёрдмен'
  end

  it 'show year for a file' do
    expect(@film.year).to eq '2014'
  end
end