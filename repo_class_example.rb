#Hypothetical implementaion of Repository classes with SQL

artist = Artist.new

artist.name # Pixies
artist.genre # Rock

artist_repository = ArtistRepository.new

# Select all artists
# SQL: SELECT id, name, genre FROM artists;
#### => Return an array of Artist objects.
artist_repository.all


# Selects a single artist
# SQL: SELECT id, name, genre FROM artists WHERE id = '1';
#### => Return a single Aritst Object
artist_repository.find(1) # 1 is the id of the object we want


new_artist = Artist.new
new_artist = 'Radiohead'
# ...
# SQL: INSERT INTO artists...
artist_repository.create(new_artist)


# CRUD: Create Read Update Delete