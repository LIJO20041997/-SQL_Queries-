/* Finding the movies rated above 8 */

select movies.Title,movies.imdb_rating from movies
where imdb_rating > "8";

/* finding the highest rated movie */

select movies.Title, movies.imdb_rating from movies
order by imdb_rating Desc
Limit 1 ;

/* Find the highest rates movie in Bollywood */

select movies.Title, movies.imdb_rating, movies.industry from movies
where industry = "Bollywood"
order by imdb_rating desc
Limit 1 ;

/* find the movies before 2000 */

select movies.Title, movies.release_year from movies
where release_year < "2000";

/* find the average imdb rating for movies by Marvel_studios */

select avg(movies.imdb_rating) as imdb_ratings_marvel_studios from movies
group by movies.studio
having movies.studio = "Marvel Studio";
