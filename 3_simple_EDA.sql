-- Lets do some EDA

-- Calculating total rows, Artist, Album_type and max/min duration
select 
	count(*),
	count(distinct artist),
	count(distinct album_type),
	max(duration_min),
	min(duration_min)
from spotify;

-- we found some songs have 0 duration, lets delete it.
DELETE from spotify
where duration_min=0;
select 
	min(duration_min)
from spotify;

--Counting unique channel
select
	count(distinct channel)
from spotify;

--most_played_on
select 
	distinct most_played_on
from spotify;