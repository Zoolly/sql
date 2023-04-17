insert into ganre(name)
values ('Rock'), ('Metall'), ('Blues'), ('Pop'), ('Classic');

insert into artist (name)
values ('Linkin Park'), ('Red Hot Chili Peppers'), ('Metallica'), ('Pantera'), ('Ray Charles'), ('Gary Moore'), ('Lady Gaga'), ('Britney Spears'), ('Tchaikovsky'), ('Mozart');


insert into alboms (name, year)
values ('Meteora', 2003), ('Minutes to Midnight', 2007), ('One More Light', 2018);

insert into alboms (name, year)
values ('Californication', 1999), ('By the Way', 2002);


insert into alboms (name, year)
values ('Kill Em All', 1983), ('Death Magnetic', 2008);


insert into alboms (name, year)
values ('Cowboys from Hell', 1990), ('Preliminary Groove Metal', 2015);


insert into alboms (name, year)
values ('Ray Charles', 2018), ('Friendship', 2020);


insert into alboms (name, year)
values ('Back to the Blues', 2018), ('How Blue Can You Get', 2021);


insert into alboms (name, year)
values ('Chromatica', 2020), ('Love for Sale', 2021);


insert into alboms (name, year)
values ('Britney', 2001), ('Blackout', 2020);


insert into alboms (name, year)
values ('Childrens Album', 1878), ('Symphony No. 5', 1928);


insert into alboms (name, year)
values ('Piano Concertos, Vol. 6', 2019), ('Piano Concertos, Vol. 5', 1734);

insert into ganreartist 
values (1,1),(1,2),(2,3),(2,4),(3,6),(4,7),(4,8),(5,9),(1,4),(3,5),(1,10),(5,10);

insert into song (albom_id, name, duration) 
values (1, 'Faint', time'00:02:37'),  
 (2, 'Wake', time'00:01:41'),
 (3, 'Talking to Myself', time'00:03:51'),
 (4, 'Californication', time'00:05:22'),
 (5, 'midnight', time'00:04:56'),
 (6, 'Metal Militia', time'00:05:11'),
 (7, 'Cyanide', time'00:06:40'),
 (8, 'Primal Concrete Sledge', time'00:02:13'),
 (9, 'Diamond Darrell Solo', time'00:09:01'),
 (10, 'Come Back Baby', time'00:03:07'),
 (11, 'Seven Spanish Angels', time'00:03:51'),
 (12, 'The Prophet', time'00:06:19'),
 (13, 'I Need You Baby', time'00:03:29'),
 (7, 'Sine From Above', time'00:04:05'),
 (15, 'Love for Sale', time'00:03:57'),
 (16, 'Boys', time'00:03:41'),
 (17, 'Gimme More', time'00:04:11'),
 (18,'Childrens Album', time'00:11:41'),
 (19, 'Symphony No. 5', time'00:35:01'),
 (20, 'Piano Concertos, Vol. 6', time'00:22:58'),
 (21, 'Piano Concertos, Vol. 5', time'00:31:15'),
 (22, 'Where my Brains', time'00:02:11'),
 (23, 'Zombie eating', time'00:04:42'), 
 (24, 'Front', time'00:05:37');

insert into artistalbom  
values (1,1),(2,1),(3,1),(4,2),(5,2),(6,3),(7,3),(8,4),(9,4),(10,5),(11,5),(12,6),(13,6),(14,7),(15,7),(16,8),(17,8),(18,9),(19,9),(20,10),(21,10);

insert into collection (name, year)
values ('Havy', 2018), ('Rock', 2020),('RocKnRoll', 2005),('Pop', 2019),('Havy Blues', 2000),('FanyBany', 2021),('BestCollection', 2001),('GoldVinil', 2018);

insert into collectionsong  
values (1,4),(1,5),(1,8),(1,9),
(2,5),(2,6),(2,7),(2,12),
(3,12),(3,13),(3,14),(3,15),
(4,16),(4,17),(4,18),(4,19),
(5,3),(5,5),(5,12),(5,13),
(6,5),(6,10),(6,20),(6,22),
(7,4),(7,6),(7,12),(7,23),
(8,20),(8,21),(8,22),(8,23);
