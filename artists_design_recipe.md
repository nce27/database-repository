# Single Table Design Recipe Template

_Copy this recipe template to design and create a database table from a specification._

## 1. Extract nouns from the user stories or specification

```
# EXAMPLE USER STORY:
# (analyse only the relevant part - here the final line).

As a music lover,
So I can organise my records,
I want to keep a list of albums' titles.

As a music lover,
So I can organise my records,
I want to keep a list of albums' release year.
```

```
Nouns:

album, title, release year
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties          |
| --------------------- | ------------------  |
| album                 | title, release year

Name of the table (always plural): `albums` 

Column names: `title`, `release_year`

## 3. Decide the column types.

# EXAMPLE:

id: SERIAL
title: text
release_year: int


## 4. Write the SQL.

```sql
-- EXAMPLE
-- file: albums_table.sql

-- Replace the table name, columm names and types.

CREATE TABLE albums (
  id SERIAL PRIMARY KEY,
  title text,
  release_year int
);

```

## 5. Create the table.

```bash
psql -h 127.0.0.1 database_name < albums_table.sql

```



```ruby
class ArtistRepository

  # Selects all records
  # No arguments

  def all
  # Executes the SQL query:
  # SELECT id, name, genre FROM artists;


  #### => Return an array of Artist objects.
  end
end

```
# Test Examples


```ruby

# 1 
# Get all students

repo = ArtistRespository.new #creates new object

artists = repo.all 
artists.length # => 2
artists.first.id # => 1
artists.first.name # => 'Pixies'


```
```ruby
def reset_student_table
  seed_sql = File.read('spec/seeds_students.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'students'})
  connection.exec(seed_sql)
end


```