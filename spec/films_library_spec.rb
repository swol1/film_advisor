require 'films_library'

describe FilmsLibrary do
  before do
    files_array = Dir['spec/fixtures/*.txt']
    @library = FilmsLibrary.new(files_array)
  end

  it 'show uniq directors' do
    expect(@library.directors).to eq ['Алехандро Иньярриту', 'Квентин Тарантино']
  end

  it 'show random film of the same director' do
    expect(@library.random_film('Квентин Тарантино').title).to eq('Омерзительная восьмёрка').or(eq('Бесславные ублюдки'))
  end
end
