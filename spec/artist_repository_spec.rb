RSpec.describe ArtistRepository do
  
  #this method reads a file and uses the PG gen to read and execute the database
  def reset_student_table  
    seed_sql = File.read('spec/seeds_artists.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test'})
    connection.exec(seed_sql)
  end


  before(:each) do #before each test reset the artists table
    reset_artists_table
  end

  it "" do
    repo = ArtistRespository.new #creates new object

    artist = repo.all

    expect(artists.length).to eq(2) # => 2
    expect(artists.first.id).to eq('1') # => 1
    expect(artists.first.name).to eq('Pixies') # => 'Pixies'
  end
end