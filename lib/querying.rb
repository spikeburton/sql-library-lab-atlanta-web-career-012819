def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series JOIN subgenres ON subgenres.id = series.subgenre_id AND authors.id = series.author_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON characters.series_id = series.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.name) FROM characters INNER JOIN character_books INNER JOIN books ON characters.id = character_books.character_id AND books.id = character_books.book_id GROUP BY characters.name ORDER BY COUNT(characters.name) DESC"
end
