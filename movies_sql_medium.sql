/* find the movies with revenue units in Billions */

select movies.Title, movie_financials.unit from movies
left join movie_financials on
movies.movie_id = movie_financials.movie_id
where movie_financials.unit= "Billions" ;

/* find the movies with currency in USR */

select movies.Title, movie_financials.currency from movies
left join movie_financials on
movies.movie_id = movie_financials.movie_id
where currency = "USD";

/* find the movie with highest revenue in INR */

select movies.Title,movie_financials.revenue,movie_financials.currency 
from movies
left join movie_financials on
movies.movie_id = movie_financials.movie_id
where movie_financials.currency = "INR"
order by movie_financials.revenue desc
limit 1;

/* find the Top 5 studios in revenue in USD */

select movies.studio , sum(movie_financials.revenue) as Total_revenue from movies
left join movie_financials
on movies.movie_id = movie_financials.movie_id
where movie_financials.currency = "USD"
group by movies.studio
order by Total_revenue desc
limit 5;

/* find the movie with highest profit with name of actor, language in INR */

select movies.Title, movie_financials.revenue - movie_financials.budget as profit,
movie_actors.name,languages.name from movies
left join movie_financials on movies.movie_id = movie_financials.movie_id
left join movie_id on movies.movie_id = movie_id.movie_id
left join movie_actors on movie_id.actor_id = movie_actors.actor_id
left join languages on movies.language_id = languages.language_id
where currency = "INR"
order by profit 
limit 1 ;

