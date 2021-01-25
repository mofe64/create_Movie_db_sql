select mov_title, mov_year from movie;
select mov_year from movie
where mov_title = 'American Beauty';
select * from movie
where mov_year = 1999;
select * from movie 
where mov_year < 1998;
select * from movie
where mov_year = 1999;	
select distinct movie.mov_title ,reviewer.rev_name
from movie inner join reviewer;
select * from reviewer;
select * from rating;
select * from reviewer join rating
on rating.rev_id = reviewer.rev_id
where rev_stars >= 7;

select * from movie;
select * from rating;

select mov_title from movie join rating
on movie.mov_id = rating.mov_id
where num_of_ratings is null;

select rev_name from reviewer join rating
on rating.rev_id = reviewer.rev_id
where rev_stars is null;
select movie.mov_title , director.dir_fname, director.dir_lname from director join movie_direction
on director.dir_id = movie_direction.dir_id
join movie 
on movie.mov_id = movie_direction.mov_id
where movie.mov_title = 'Eyes Wide Shut';