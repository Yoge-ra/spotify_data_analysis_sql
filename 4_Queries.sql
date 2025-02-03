--1.Calculate the average danceability of tracts in each album

select
album,
 avg(danceability)
from spotify
group by album;

--2.Find the top 5 tracks with the highest energy values.
select
	track,
	max(energy)
from spotify
group by track
order by 2 desc;

--3. List all tracks with their views and likes where official_vedio = 'True'
select 
	track,
	sum(views) as total_views,
	sum(likes) as total_likes
from spotify
where official_video=true
group by track;

-----------------------------------------------------------------------------------
--1. Find the top3 most viewed tracks for each artist using window function
with artist_ranking as
(select
	artist,
	track,
	sum(views) as total_views,
	dense_rank() over(partition by artist order by sum(views) desc) as rank
from spotify
group by 1,2)
select * from artist_ranking
where rank<= 3;

-- write query to find tracks where the liveness score above avg
select
	track,
	liveness
from spotify
where liveness > (select avg(liveness) from spotify);

-- Use a WITH clause to calculate the diff b/w the highest ans lowest energy values for tracks in each album

with album_energy as
(select
	album,
	max(energy) as highest_energy,
	min(energy) as lowest_energy
from spotify
group by album)
select
	album,
	highest_energy-lowest_energy as eng_diff
from album_energy
order by eng_diff desc;