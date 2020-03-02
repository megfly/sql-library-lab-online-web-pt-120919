def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters 
  ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
   "SELECT species, COUNT(species) from characters 
   GROUP BY species 
   ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series 
  INNER JOIN authors ON authors.id = author_id
  INNER JOIN subgenres ON subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series
  INNER JOIN characters ON series.author_id = characters.author_id
  WHERE characters.species = 'human'
  GROUP BY series.title
  ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(name)
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_id
  INNER JOIN books 
  ON books.id = book_id
  GROUP BY name 
  ORDER BY COUNT(name) DESC"
end
