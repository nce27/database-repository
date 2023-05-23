# EXAMPLE USER STORY:
# (analyse only the relevant part - here the final line).

As a music lover,
So I can organise my records,
I want to keep a list of albums' titles.

As a music lover,
So I can organise my records,
I want to keep a list of albums' release year.

Nouns:

album, title, release year

# DESIGN THE COLUMN TYPES

(e.g.) boolean, numeric, bigint, int, text

_The primary key id will always be the first column & will be serial_

## EXAMPLE:

id: SERIAL
title: text
release_year: int


# WRITE THE SQL
## EXAMPLE:

id: SERIAL
title: text
release_year: int

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

# CREATE THE TABLE
psql -h 127.0.0.1 database_name < albums_table.sql