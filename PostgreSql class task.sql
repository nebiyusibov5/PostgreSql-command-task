create table films(
id int,
name varchar(50),
genre varchar(50),
raiting double precision,
duration int,
release_year int
);

INSERT INTO films (id, name, genre, raiting, duration, release_year) VALUES 
(1, 'The Shawshank Redemption', 'Drama', 9.3, 142, 1994),
(2, 'Inception', 'Sci-Fi', 8.8, 148, 2010),
(3, 'The Dark Knight', 'Action', 9.0, 152, 2008),
(4, 'Interstellar', 'Sci-Fi', 8.7, 169, 2014),
(5, 'Pulp Fiction', 'Crime', 8.9, 154, 1994),
(6, 'Forrest Gump', 'Drama', 8.8, 142, 1994),
(7, 'The Matrix', 'Sci-Fi', 8.7, 136, 1999),
(8, 'Gladiator', 'Action', 8.5, 155, 2000);

select * from films 
order by raiting asc; ---3

select * from films 
order by name asc;---3

select * from films
order by raiting desc
limit 3;---4

select * from films 
where duration < 120 and raiting > 8
order by raiting desc;---4

select * from films 
where genre in ('Drama', 'Crime', 'Action')
order by raiting desc;---4

select * from films;---1

select name, raiting from films;---1

select * from films 
where genre = 'Dram';---2

select * from films 
where raiting > 8;---2

select * from films 
where release_year > 2020;---2



