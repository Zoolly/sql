insert into song (albom_id, name, duration) 
values (21, 'Where my Brains', time'00:02:11'),
(23, 'Zombie eating', time'00:04:42')

"альбомы вышедшие в 2018"

select name, year from alboms where "year" = 2018

"самый динный трек"

select max(duration) from song  

"длительность менее 3,5мин"

select *  from song  where duration >= '00:03:30' order by duration 

"сборники с 2018 по 2020"

select name from collection where "year" >= 2018 and "year" <=2020

"Исполнители с именем из 1 слова"

select name from artist where "name" not like '% %';

"треки которые содержат My"

select name from song where "name" like '%My%' or "name" like '%my%';

--"колличество исполнителей в каждом жанре"
select g."name" , count(*) from ganreartist g2  
join ganre g on g.id = g2.ganre_id 
group by g."name"  
order by count(*) desc ; 

--"Количество треков, вошедших в альбомы 2019–2020 годов"
select count(*)  from song s 
join alboms a on a.id  = s.albom_id
where "year" = 2020 or "year" = 2019

--**Средняя продолжительность треков по каждому альбому**
select avg(duration), s."name"  from song s 
join alboms a on a.id  = s.albom_id 
group by s."name" ;

--'Все исполнители, которые не выпустили альбомы в 2020 году.'
select distinct a.name from artist a 
where a.name not in ( 
	select distinct a.name from artist
	join artistalbom a2 on a2.artist_id = a.id 
	join alboms a3 on a3.id = a2.albom_id 
	where a3."year" = 2020
)
order by a.name

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)*
select distinct  c."name", a2."name"  from collection c 
join collectionsong c2 on c.id = c2.song_id 
join song s on s.id = c2.song_id 
join alboms a on a.id = s.albom_id 
join artist a2 on a2.id = a.id 
where a2."name" like 'Red%'


--*Названия альбомов, в которых присутствуют исполнители более чем одного жанра.*
select a3.name, count(ganre_id)  from ganreartist g
join artist a on g.artist_id = a.id
join artistalbom a2 on a.id =a2.artist_id 
join alboms a3 on a2.albom_id = a3.id 
group by a3.name 
having count(ganre_id) > 1 

--*Наименования треков, которые не входят в сборники*
select s.name  from song s 
full join collectionsong c on c.song_id = s.id 
full join collection c2 on c2.id = c.collection_id 
group by s.name
having count(c2.id) < 1 
 
--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько
select a.name, MIN(s.duration) from artist a 
join artistalbom a2 on a2.artist_id = a.id 
join artist a3 on a3.id = a.id 
join song s on s.albom_id = a2.albom_id 
group by a.name, s.duration 
having s.duration = (select min(duration) from song s4 )
order by a.name



--Названия альбомов, содержащих наименьшее количество треков"
select distinct a.name from alboms a 
join song s on s.albom_id = a.id
where s.albom_id  in (
	select albom_id from song s2
	group by albom_id
	having count(id) = (
		select count(id) from song s3 
		group by albom_id
		order by count limit 1
	)
)
order by a.name
	
	
