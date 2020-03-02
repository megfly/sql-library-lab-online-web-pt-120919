CREATE TABLE series (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);

CREATE TABLE series_author (id INTEGER PRIMARY KEY, author_id INTEGER);

CREATE TABLE series_subgenre (id INTEGER PRIMARY KEY, subgenre_id INTEGER);

CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT, year INTEGER, series_id INTEGER);

CREATE TABLE books_series (id INTEGER PRIMARY KEY, books_series_id INTEGER);

CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER);

CREATE TABLE character_books (id INTEGER PRIMARY KEY, book_id INTEGER, character_id INTEGER)

