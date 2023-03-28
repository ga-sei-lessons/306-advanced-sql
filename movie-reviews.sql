-- -- a table that holds movie reviews
-- CREATE TABLE movie_reviews (
--   id SERIAL PRIMARY KEY,
--   description TEXT,
--   reviewer TEXT,
--   score INT,
--   -- a foreing key that lets us find the movie that this review is for
--   movie_id INT REFERENCES movies(id)
-- );

-- adds a review to which ever movie has an id of 5
-- INSERT INTO movie_reviews (description, reviewer, score, movie_id)
-- VALUES ('pretty good', 'The Critic', 7, 5); 

-- nested queries to find movies and add reviews to them
-- INSERT INTO movie_reviews (description, reviewer, score, movie_id)
-- VALUES ('Love them Dinos', 'The Critic', 10,  
--   -- the parans  ()  allow one query to be inside another
--   (SELECT id FROM movies WHERE title='Jurassic Park')
-- );

-- INSERT INTO movie_reviews (description, reviewer, score, movie_id)
-- VALUES ('Cars p good', 'The Critic', 7,  
--   (SELECT id FROM movies WHERE title='Cars')
-- );

-- INSERT INTO movie_reviews (description, reviewer, score, movie_id)
-- VALUES ('Awesome for Sci-fi nerds', 'The Critic', 9,  
--   (SELECT id FROM movies WHERE title='Back to the Future')
-- );

SELECT movies.title, movies.description, movie_reviews.description, movie_reviews.reviewer FROM movies
JOIN movie_reviews ON movies.id = movie_reviews.movie_id;