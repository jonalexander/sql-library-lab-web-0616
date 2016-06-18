def select_books_titles_and_years_in_first_series_order_by_year
"SELECT books.title, books.year FROM books WHERE series_id = 1 GROUP BY books.year";
end

#series
#books belong to series (series_id)... series_id = 1
#dont need to join tables

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH (characters.motto) DESC LIMIT 1";
end

#return characters.name, characters.motto from characters where max(motto)

def select_value_and_count_of_most_prolific_species
  "select characters.species, COUNT(*) from characters group by characters.species ORDER BY COUNT(*)  DESC LIMIT 1";
end


def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON authors.id = series.author_id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

# return the authors name and the names of subgenres for each of the author's series

# author has many series'
# a series has one subgenre

#join authors to series then series to subgenres


def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.book_id = books.id JOIN characters ON character_books.character_id = characters.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT (*) DESC LIMIT 1;"
end

# dont know how this works exactly
# but we need to join series to books and books to characters by way of character_books join table...
# where species = human
# then group them by series (# of humans per series) in DESC order and limit to 1 result


def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) FROM character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY COUNT(*) DESC"

end
