-- INSERT INTO [table name]
--   ( [list of columns] )
--   VALUES( [list of values] );

-- INSERT INTO artists
--   ( name, genre )
--   VALUES( 'Massive Attack', 'Alternative' );



-- Creates a new album called Mezzanie, released in 1998
-- Update statement used to set the artist id to 5 in the 13th numeric id (the new album)

-- INSERT INTO albums
--   ( title, release_year )
--   VALUES( 'Mezzanie', '1998');

-- UPDATE albums SET artist_id = '5' WHERE id = '13';

INSERT INTO artists
  (name, genre)
  VALUES ( 'King Krule', 'Alt-Jazz' );

INSERT INTO albums 
  ( title, release_year)
  VALUES( 'The Ooz', '2017');