def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year FROM books
  LEFT JOIN series ON series.id = books.series_id
  WHERE series_id =1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT species, COUNT(species) FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name FROM authors
  LEFT JOIN series ON author_id = authors.id
  JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT title FROM series
  LEFT JOIN characters ON series_id = series.id
  GROUP BY species
  ORDER BY COUNT(species)
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT name, COUNT(character_books.book_id) FROM characters
  LEFT JOIN character_books ON character_id = characters.id
  GROUP BY character_id
  ORDER BY COUNT(character_books.book_id) DESC, characters.name;"
end
