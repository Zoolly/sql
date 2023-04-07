insert into ganre(name)
values ('Rock'), ('Metall'), ('Blues'), ('Pop'), ('Classic');

insert into artist (name)
values ('Linkin Park'), ('Red Hot Chili Peppers'), ('Metallica'), ('Pantera'), ('Ray Charles'), ('Gary Moore'), ('Lady Gaga'), ('Britney Spears'), ('Tchaikovsky'), ('Mozart');

'Linkin Park'
insert into alboms (name, year)
values ('Meteora', 2003), ('Minutes to Midnight', 2007), ('One More Light', 2018);

'Red Hot Chili Peppers'
insert into alboms (name, year)
values ('Californication', 1999), ('By the Way', 2002);

'Metallica'
insert into alboms (name, year)
values ('Kill Em All', 1983), ('Death Magnetic', 2008);

'Pantera'
insert into alboms (name, year)
values ('Cowboys from Hell', 1990), ('Preliminary Groove Metal', 2015);

'Ray'
insert into alboms (name, year)
values ('Ray Charles', 2018), ('Friendship', 2020);

'Gary'
insert into alboms (name, year)
values ('Back to the Blues', 2018), ('How Blue Can You Get', 2021);

'Lady Gaga'
insert into alboms (name, year)
values ('Chromatica', 2020), ('Love for Sale', 2021);

'Britney'
insert into alboms (name, year)
values ('Britney', 2001), ('Blackout', 2020);

'Tchaikovsky'
insert into alboms (name, year)
values ('Childrens Album', 1878), ('Symphony No. 5', 1928);

'Mozart'
insert into alboms (name, year)
values ('Piano Concertos, Vol. 6', 2019), ('Piano Concertos, Vol. 5', 1734);

insert into ganreartist 
values (1,1),(1,2),(2,9),(2,10),(3,11),(3,12),(4,13),(4,14),(5,15),(1,9),(3,10),(5,16);

insert into song (albom_id, name, duration) 
values (1, 'Faint', time'00:02:37'),  
 (2, 'Wake', time'00:01:41'),
 (3, 'Talking to Myself', time'00:03:51'),
 (4, 'Californication', time'00:05:22'),
 (5, 'midnight', time'00:04:56'),
 (21, 'Metal Militia', time'00:05:11'),
 (22, 'Cyanide', time'00:06:40'),
 (23, 'Primal Concrete Sledge', time'00:02:13'),
 (24, 'Diamond Darrell Solo', time'00:09:01'),
 (25, 'Come Back Baby', time'00:03:07'),
 (26, 'Seven Spanish Angels', time'00:03:51'),
 (27, 'The Prophet', time'00:06:19'),
 (28, 'I Need You Baby', time'00:03:29'),
 (29, 'Sine From Above', time'00:04:05'),
 (30, 'Love for Sale', time'00:03:57'),
 (31, 'Boys', time'00:03:41'),
 (32, 'Gimme More', time'00:04:11'),
 (33,'Childrens Album', time'00:11:41'),
 (34, 'Symphony No. 5', time'00:35:01'),
 (35, 'Piano Concertos, Vol. 6', time'00:22:58'),
 (36, 'Piano Concertos, Vol. 5', time'00:31:15'),
 (21, 'Where my Brains', time'00:02:11'),
 (23, 'Zombie eating', time'00:04:42');

insert into artistalbom  
values (1,1),(2,1),(3,1),(4,2),(5,2),(21,9),(22,9),(23,10),(24,10),(25,11),(26,11),(27,12),(28,12),(29,13),(30,13),(31,14),(32,14),(33,15),(34,15),(35,16),(36,16);

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
