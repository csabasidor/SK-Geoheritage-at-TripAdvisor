CREATE TABLE gtlab.trp_0_ps (id integer primary key, name text);

INSERT INTO gtlab.trp_0_ps (id, name)
	VALUES
		(0, 'Tourism preconditions'),
		(1, 'Tourism resources');

CREATE TABLE gtlab.trp_1_sources (id integer primary key, name text, trp_id integer)
INSERT INTO gtlab.trp_1_sources (id, name, trp_id) 
	VALUES 
		(0, 'Primary Tourism Resources', 1),
		(1, 'Secondary Tourism Resources', 1);

ALTER TABLE gtlab.trp_1_sources ADD CONSTRAINT ps_to_source FOREIGN KEY (trp_id) REFERENCES gtlab.trp_0_ps (id);


CREATE TABLE gtlab.trp_2_classes (id integer primary key, name text, sources_id integer);
INSERT INTO gtlab.trp_2_classes (id, name, sources_id)
	VALUES 
		(0, 'Natural', 0),
		(1, 'Anthropogenic', 0),
		(2, 'Organized events', 0),
		(3, 'T & T Suprastructure', 1),
		(4,'T & T Infrastructure', 1),
		(5,'General Local Infrastructure', 1);

ALTER TABLE gtlab.trp_2_classes ADD CONSTRAINT source_to_class FOREIGN KEY (sources_id) REFERENCES gtlab.trp_1_sources (id);

select * from gtlab.trp_3_subclasses


CREATE TABLE gtlab.trp_3_subclasses (id integer primary key, name text, class_id integer);
INSERT INTO gtlab.trp_3_subclasses (id, name, class_id)
	VALUES
		(27, 'Cultural events', 2),
		(0, 'Outdoor landscapes', 0),
		(1, 'Geosites', 0),
		(2, 'Bodies of water', 0),
		(5, 'Tangible cultural heritage', 1),
		(6, 'Cultural services', 1),
		(7, 'Expos', 2),
		(8, 'Conferences', 2),
		(9, 'Active sport events', 2),
		(10, 'Pasive sport events', 2),
		(11, 'Religious events', 2),
		(12, 'Political events', 2),
		(13, 'Other events', 2),
		(14, 'Accommodation', 3),
		(15, 'Food & Bevarage', 3),
		(16, 'Services of Individual recreation', 3),
		(17, 'Intermediary services', 4),
		(18, 'Public services', 4),
		(19, 'Transportation services', 4),
		(20, 'Emeregency services', 5),
		(21, 'Financial services', 5),
		(22, 'Telecommunication services', 5),
		(23, 'Postal services', 5),
		(24, 'Whole sale and Retail', 5),
		(25, 'Local Transportation I & S', 5),
		(26, 'Other', 5);



ALTER TABLE gtlab.trp_3_subclasses ADD CONSTRAINT class_to_subclass FOREIGN KEY (class_id) REFERENCES gtlab.trp_2_classes (id);


CREATE TABLE gtlab.trp_4_groups (id integer primary key, name text, subclass_id integer);
INSERT INTO gtlab.trp_4_groups (id, name, subclass_id)
VALUES
(63, 'Relegious sites', 5),
(67, 'Shores and Beaches', 2),
(66, 'Dams', 2),
(65, 'Other Bodies of Water', 2),
(64, 'Family entertainment', 16),

(62, 'Other', 5),
(61, 'Food production', 26),
(59, 'Whole sale', 24),
(60, 'Retail', 24),
(58, 'Exhibitons', 13),
(57, 'Music', 27),
(54, 'Protected sites', 0),
(55, 'Forests', 0),
(56, 'Other landscapes', 0),
(53, 'Other geosites', 1),
(0, 'Caves', 1),
(1, 'Peaks', 1),
(2, 'Canyons', 1),
(3, 'Cliffs', 1),
(4, 'Volcanos', 1),
(5, 'Springs', 1),
(6, 'Waterfalls', 1),
(7, 'Castel hills', 1),
(8, 'Mineral & Fossile collections', 1),
(9, 'Oceans & Seas', 2),
(10, 'Sea sides', 2),
(11, 'Rivers', 2),
(12, 'Lakes', 2),
(13, 'Architectural monuments', 5),
(14, 'Current architectonics', 5),
(15, 'Historical sites', 5),
(16, 'Museums', 6),
(17, 'Theaters', 6),
(18, 'Galleries', 6),
(19, 'Educational services', 6),
(20, 'Other cultural services', 6),
(21, 'Hotels', 14),
(22, 'Guest houses', 14),
(23, 'Rental apartments', 14),
(24, 'Other', 14),
(25, 'Restaurants', 15),
(26, 'Eating  houses', 15),
(27, 'Pubs', 15),
(28, 'Bars', 15),
(29, 'Cafés', 15),
(30, 'Other', 15),
(32, 'Destination specific service providers', 16),
(33, 'Health and Life style services', 16),
(34, 'Sport services', 16),
(35, 'Adult entertainment', 16),
(36, 'Travel Agencies', 17),
(37, 'Tour Operators', 17),
(38, 'Insurance companies', 17),
(39, 'Rental services', 17),
(40, 'Border crossings', 18),
(41, 'Customs', 18),
(42, 'Tourist information services', 18),
(43, 'Railway transporters', 19),
(44, 'Airlines', 19),
(45, 'Bus carriers', 19),
(46, 'Ferries', 19),
(47, 'Airports', 25),
(48, 'Bus stations', 25),
(49, 'Railway stations', 25),
(50, 'Bus stations', 25),
(51, 'Taxi', 25),
(52, 'Local public mass transportation', 25);


ALTER TABLE gtlab.trp_4_groups ADD CONSTRAINT subclass_group FOREIGN KEY (subclass_id) REFERENCES gtlab.trp_3_subclasses (id);

CREATE  TABLE gtlab.trp_5_subgroups (id integer PRIMARY KEY, name text, group_id integer, subgroup_cat_source text);

INSERT INTO gtlab.trp_5_subgroups (id, name, group_id, subgroup_cat_source)
VALUES
	(0, 'Jazz Bars', 28, 'TripAdvisor'),
	(1, 'Karaoke Bars', 28, 'TripAdvisor'),
	(2, 'Wine Bars', 28, 'TripAdvisor'),
	(3, 'Bar', 28, 'TripAdvisor'),
	(4, 'Bars & Clubs', 28, 'TripAdvisor'),
	(5, 'Blues Bars', 28, 'TripAdvisor'),
	(6, 'Cigar Bars', 28, 'TripAdvisor'),
	(7, 'Gay Bars', 28, 'TripAdvisor'),
	(8, 'Coffeehouses', 29, 'TripAdvisor'),
	(9, 'Libraries', 19, 'TripAdvisor'),
	(10, 'Movie Theaters', 17, 'TripAdvisor'),
	(11, 'Observatories & Planetariums', 19, 'TripAdvisor'),
	(12, 'Theaters', 17, 'TripAdvisor'),
	(13, 'Universities & Schools', 19, 'TripAdvisor'),
	(14, 'Art Galleries', 18, 'TripAdvisor'),
	(15, 'Canyons', 2, 'TripAdvisor'),
	(16, 'Caverns & Caves', 0, 'TripAdvisor'),
	(17, 'Geologic Formations', 53, 'TripAdvisor'),
	(18, 'Hot Springs & Geysers', 5, 'TripAdvisor'), 
	(19, 'Mountains', 53, 'TripAdvisor'),
	(20, 'Valleys', 53, 'TripAdvisor'),
	(21, 'Waterfalls', 6, 'TripAdvisor'),
	(22, 'Ancient Ruins', 15, 'TripAdvisor'),
	(23, 'Battlefields', 15, 'TripAdvisor'),
	(24, 'Historic Sites', 15, 'TripAdvisor'),
	(25, 'Historic Walking Areas', 15, 'TripAdvisor'),
	(26, 'Military Bases & Facilities', 15, 'TripAdvisor'),
	(27, 'Bridges', 13, 'TripAdvisor'),
	(28, 'Marinas', 52,  'TripAdvisor'),
	(29, 'Scenic Railroads', 13,  'TripAdvisor'),
	(30, 'Art Museums', 16,  'TripAdvisor'),
	(31, 'Children''s Museums', 16,  'TripAdvisor'),
	(32, 'History Museums', 16,  'TripAdvisor'),
	(33, 'Military Museums', 16,  'TripAdvisor'),
	(34, 'Natural History Museums', 16,  'TripAdvisor'),
	(35, 'Science Museums', 16,  'TripAdvisor'),
	(36, 'Speciality Museums', 16,  'TripAdvisor'),
	(37, 'Forests', 55,  'TripAdvisor'),
	(38, 'National Parks', 54,  'TripAdvisor'),
	(39, 'State Parks', 54,  'TripAdvisor'),
	(40, 'Lookouts', 56,  'TripAdvisor'),
	(41, 'Nature & Wildlife Areas', 56,  'TripAdvisor'),
	(42, 'Parks', 56,  'TripAdvisor'),
	(43, 'Exhibitions', 58, 'TripAdvisor'),
	(44, 'Concerts', 57, 'TripAdvisor'),
	(45, 'Music Festivals', 57, 'TripAdvisor'),
	(46, 'Architectural Buildings', 13, 'TripAdvisor'),
	(47, 'Civic Centres', 13, 'TripAdvisor'),
	(48, 'Fountains', 13, 'TripAdvisor'),
	(49, 'Gardens', 13, 'TripAdvisor'),
	(50, 'Government Buildings', 13, 'TripAdvisor'),
	(51, 'Hammams & Turkish Baths', 13, 'TripAdvisor'),
	(52, 'Monuments & Statues', 13, 'TripAdvisor'),
	(53, 'Neighborhoods', 13, 'TripAdvisor'),
	(54, 'Piers & Boardwalks', 13, 'TripAdvisor'),
	(55, 'Cooking Classes', 19, 'TripAdvisor'),
	(56, 'Lessons & Workshops', 19, 'TripAdvisor'),
	(57, 'Cabarets', 35, 'TripAdvisor'),
	(58, 'Character Experiences', 35, 'TripAdvisor'),
	(59, 'Comedy Clubs', 35, 'TripAdvisor'),
	(60, 'Distilleries', 30, 'TripAdvisor'),
	(61, 'Convention Centers', 20, 'TripAdvisor'),
	(62, 'Antique Shops', 60, 'TripAdvisor'),
	(63, 'Department Stores', 60, 'TripAdvisor'),
	(64, 'Factory Outlets', 59, 'TripAdvisor'),
	(65, 'Shopping Malls', 60, 'TripAdvisor'),
	(66, 'Speciality & Gift Shops', 60, 'TripAdvisor'),
	(67, 'Boat Rentals', 39, 'TripAdvisor'),
	(68, 'Gear Rentals', 39, 'TripAdvisor'),
 	(69, 'Farms', 61, 'TripAdvisor'),
 	(70, 'Breweries', 30, 'TripAdvisor'),
	(71, 'Playgrounds', 34, 'TripAdvisor'),
	(72, 'Sports Camps & Clinics', 34, 'TripAdvisor'),
	(73, 'Sports Complexes', 34, 'TripAdvisor'),
	(74, 'Points of Interest & Landmarks', 62, 'TripAdvisor'),
	(75, 'Health Clubs', 33, 'TripAdvisor'),
	(76, 'Literary', 19, 'TripAdvisor'),
	(77, 'Paint & Pottery Studios', 20, 'TripAdvisor'),
	(78, 'Biking Trails', 56, 'TripAdvisor'),
	(79, 'Cross-country Ski Areas', 56, 'TripAdvisor'),
	(80, 'Hiking Trails', 56, 'TripAdvisor'),
	(81, 'Motorcycle Trails', 56, 'TripAdvisor'),
	(82, 'Observation Decks & Towers', 56, 'TripAdvisor'),
	(83, 'Scenic Walking Areas', 56, 'TripAdvisor'),
	(84, 'Ski & Snowboard Areas', 56, 'TripAdvisor'),
	(85, 'Castles', 13, 'TripAdvisor'),
	(86, 'Cemeteries', 63, 'TripAdvisor'),
	(87, 'Churches & Cathedrals', 63, 'TripAdvisor'), 
	(88, 'Religious Sites', 63, 'TripAdvisor'),
	(89, 'Wedding Chapels', 63, 'TripAdvisor'),
	(90, 'Amusement & Theme Parks', 64, 'TripAdvisor'),
	(91, 'Arenas & Stadiums', 34, 'TripAdvisor'),
	(92, 'Auto Racing Tracks', 34, 'TripAdvisor'),
	(93, 'Balloon Rides', 64, 'TripAdvisor'),
	(94, 'Bowling Alleys', 64, 'TripAdvisor'),
	(95, 'Casinos', 35, 'TripAdvisor'),
	(96, 'Dance Clubs & Discos', 35, 'TripAdvisor'),
	(97, 'Escape Games', 64, 'TripAdvisor'),
	(98, 'Farmers Markets', 61, 'TripAdvisor'),
	(99, 'Game & Entertainment Centers', 64, 'TripAdvisor'),
	(100, 'Golf Courses', 34, 'TripAdvisor'),
	(101,'Horse Tracks', 34, 'TripAdvisor'),
	(102,'Miniature Golf', 64, 'TripAdvisor'),
	(103,'Ranches', 61, 'TripAdvisor'),
	(104,'Shooting Ranges', 34, 'TripAdvisor'),
	(105,'Skydiving',34, 'TripAdvisor'),
	(106,'Spas', 33, 'TripAdvisor'),
	(107,'Stand Up Paddleboarding', 34, 'TripAdvisor'),
	(108,'Thermal Spas', 33, 'TripAdvisor'),
	(109,'Water Parks', 64, 'TripAdvisor'),
	(110,'Water Sports', 34, 'TripAdvisor'),
	(111,'Waterskiing & Jetskiing', 34, 'TripAdvisor'),
	(112,'Wineries & Vineyards', 35, 'TripAdvisor'),
	(113,'Yoga & Pilates', 33, 'TripAdvisor'),
	(114,'Zipline & Aerial Adventure Parks', 64, 'TripAdvisor'),
	(115,'Zoos', 64, 'TripAdvisor'),
	(116, 'Theater & Performances', 17, 'TripAdvisor'),
   (118, 'Art & Music Tours', 37, 'TripAdvisor'),
   (119, 'ATV & Off-Road Tours', 37, 'TripAdvisor'),
 	(120, 'Club & Pub Tours', 37, 'TripAdvisor'),
	(121, '4WD', 37, 'TripAdvisor'),
	(122, 'Adrenaline & Extreme Tours', 37, 'TripAdvisor'),
	(123, 'Air Tours', 37, 'TripAdvisor'),
	(124, 'Beer Tastings & Tours', 37, 'TripAdvisor'),
	(125, 'Bike Tours', 37, 'TripAdvisor'),
	(126, 'Boat Tours', 37, 'TripAdvisor'),
	(127, 'Bus Tours', 37, 'TripAdvisor'),
	(128, 'Canyoning & Rappelling Tours', 37, 'TripAdvisor'),
	(129, 'City Tours', 37, 'TripAdvisor'),
	(130, 'Climbing Tours', 37, 'TripAdvisor'),
	(131, 'Coffee & Tea Tours', 37, 'TripAdvisor'),
	(132, 'Cultural Tours', 37, 'TripAdvisor'),
	(133, 'Day Trips', 37, 'TripAdvisor'),
	(134, 'Distillery Tours', 37, 'TripAdvisor'),
	(135, 'Eco Tours', 37, 'TripAdvisor'),
	(136, 'Fashion Shows & Tours', 37, 'TripAdvisor'),
	(137, 'Fishing Charters & Tours', 37, 'TripAdvisor'),
	(138, 'Food Tours', 37, 'TripAdvisor'),
	(139, 'Ghost & Vampire Tours', 37, 'TripAdvisor'),
	(140, 'Helicopter Tours', 37, 'TripAdvisor'),
	(141, 'Hiking & Camping Tours', 37, 'TripAdvisor'),
	(142, 'Historical & Heritage Tours', 37, 'TripAdvisor'),
	(143, 'Hop-On Hop-Off Tours', 37, 'TripAdvisor'),
	(144, 'Horseback Riding Tours', 37, 'TripAdvisor'),
	(145, 'Motorcycle Tours', 37, 'TripAdvisor'),
	(146, 'Multi-day Tours', 37, 'TripAdvisor'),
	(147, 'Nature & Wildlife Tours', 37, 'TripAdvisor'),
	(148, 'Night Tours', 37, 'TripAdvisor'),
	(149, 'Photography Tours', 37, 'TripAdvisor'),
	(150, 'Private Tours', 37, 'TripAdvisor'),
	(151, 'Rail Tours', 37, 'TripAdvisor'),
	(152, 'Running Tours', 37, 'TripAdvisor'),
	(153, 'Safaris', 37, 'TripAdvisor'),
	(154, 'Scavenger Hunts', 37, 'TripAdvisor'),
	(155, 'Scenic Drives', 37, 'TripAdvisor'),
	(156, 'Segway Tours', 37, 'TripAdvisor'),
	(157, 'Self-Guided Tours & Rentals', 37, 'TripAdvisor'),
	(158, 'Shopping Tours', 37, 'TripAdvisor'),
	(159, 'Sightseeing Tours', 37, 'TripAdvisor'),
	(160, 'Ski & Snow Tours', 37, 'TripAdvisor'),
	(161, 'Speed Boats Tours', 37, 'TripAdvisor'),
	(162, 'Walking Tours', 37, 'TripAdvisor'),
	(163, 'Wine Tours & Tastings', 37, 'TripAdvisor'),
	(164, 'Kayaking & Canoeing', 37, 'TripAdvisor'),
	(165, 'River Rafting & Tubing', 37, 'TripAdvisor'),
	(166, 'Parasailing & Paragliding', 37, 'TripAdvisor'), 
	(167, 'Visitor Centers', 42, 'TripAdvisor'), 
	(168, 'Bus Services', 52, 'TripAdvisor'), 
	(169, 'Ferries', 46, 'TripAdvisor'), 
	(170, 'Public Transportation Systems', 52, 'TripAdvisor'), 
	(171, 'Rail Services', 43, 'TripAdvisor'), 
	(172, 'Taxis & Shuttles', 51 , 'TripAdvisor'), 
	(173, 'Trams', 52, 'TripAdvisor'), 
 	(174, 'Beaches', 67, 'TripAdvisor'),  	
	(175, 'Bodies of Water', 65, 'TripAdvisor'), 
	(176, 'Dams', 66, 'TripAdvisor');

 
ALTER TABLE gtlab.trp_5_subgroups ADD CONSTRAINT group_subgroup FOREIGN KEY (group_id) REFERENCES gtlab.trp_4_groups (id);

 
with foo as (
create table gtlab.sk_ta_trp_cat_test as
select 
sk_pois_activities_tripadvisor_0723_details.url,	
sk_pois_activities_tripadvisor_trp_categorization.*, 
trp_1_sources.name trp_1_source,
trp_2_classes.name trp_2_class,
trp_3_subclasses.name trp_3_subclass,
trp_4_groups.name trp_4_groups


from 
	gtlab.sk_pois_activities_tripadvisor_0723_details,
	gtlab.sk_pois_activities_tripadvisor_trp_categorization,
	gtlab.trp_1_sources,
	gtlab.trp_2_classes,
	gtlab.trp_3_subclasses,
	gtlab.trp_4_groups
	
where 
	sk_pois_activities_tripadvisor_0723_details.id = sk_pois_activities_tripadvisor_trp_categorization.id
and sk_pois_activities_tripadvisor_trp_categorization.tr_source_1 = trp_1_sources.id
and sk_pois_activities_tripadvisor_trp_categorization.tr_class_2 = trp_2_classes.id
and sk_pois_activities_tripadvisor_trp_categorization.tr_subclass_3 = trp_3_subclasses.id
and sk_pois_activities_tripadvisor_trp_categorization.tr_group_4 = trp_4_groups.id
)

select trp_1_source, trp_2_class, trp_3_subclass, trp_4_groups, count(*)  
from foo 
group by trp_1_source, trp_2_class, trp_3_subclass, trp_4_groups
order by trp_1_source, trp_2_class, trp_3_subclass, trp_4_groups


select * from gtlab.sk_pois_activities_tripadvisor_trp_categorization

select * from gtlab.trp_5_subgroups where name in ('Canyons')
select * from gtlab.trp_5_subgroups where id = 2
select * from gtlab.trp_4_groups where id = 2
select * from gtlab.trp_3_subclasses where id = 1
select * from gtlab.trp_2_classes where id = 0


select * from gtlab.sk_pois_activities_tripadvisor_0723_details where poi_tags_list like '%Escape Games%' and poi_tags_list like '%Scavenger Hunts%'

select array_agg(id) from gtlab.sk_ta_trp_cat_test where trp_3_subclass = 'Geosites'


SELECT sk_pois_activities_tripadvisor_0723_details.*, sk_ta_trp_cat_test.*
FROM 
gtlab.sk_ta_trp_cat_test,
gtlab.sk_pois_activities_tripadvisor_0723_details
WHERE 
sk_ta_trp_cat_test.trp_3_subclass = 'Geosites'
AND
sk_ta_trp_cat_test.id = sk_pois_activities_tripadvisor_0723_details.id


select sum(poi_n_reviews)  from gtlab.sk_pois_activities_tripadvisor_0723_details
877347


where id in ('g23301823-d23300975',
 'g652099-d23171253',
 'g7718445-d25060057',
 'g8048262-d23996089',
 'g612452-d25060053',
 'g4579949-d2642969',
 'g23301826-d23300978',
 'g13628303-d23034843',
 'g15880364-d23996257',
 'g12182959-d24042843',
 'g15240085-d23996303')


select * from gtlab.sk_pois_activities_tripadvisor_0723_details
select * from karim_ta_gt_reviews_transformed
select * from  karim_ta_gt_reviews_t_clean
select * from  karim_ta_gt_reviews
select * from karim_ta_sample

select * from karim_ta_sample_rev_sent_poi_cat_final

select karim_ta_sample_rev_sent_poi_cat_final.*, select poi_id, count(*) from .* 
from karim_ta_sample_rev_sent_poi_cat_final, karim_ta_gt_reviews_transformed
where karim_ta_gt_reviews_transformed.poi_id = karim_ta_sample_rev_sent_poi_cat_final.poi_id

select poi_id, poi_name, count(*)
from karim_ta_sample_rev_sent_poi_cat_final
group by poi_id, poi_name
order by count desc


select round((477::numeric/118703::numeric),4	)


with foo as (
select poi_id, count(*) from karim_ta_gt_reviews_transformed 
group by poi_id
	)
select * from foo
left join 


UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET reviews_in_db = 'yes' where id in ('g1009470-d547439','g1028715-d3205316','g1057708-d4173419','g1137995-d12856832','g12182959-d1537901','g12500762-d12415590','g12500843-d23300690','g14145241-d19274398','g15240141-d10408282','g1535802-d11887066','g15362914-d21287594','g1602225-d3447701','g17531581-d17529819','g18721430-d23300680','g19365200-d19357227','g2059474-d13414676','g2317481-d12364236','g23301823-d23300604','g23301826-d23300629','g23301826-d23300984','g23301829-d23300650','g23301836-d23300667','g23301851-d23300987','g2554436-d10408392','g274923-d12236179','g274929-d1930970','g274929-d3190440','g274931-d25445719','g274942-d6439669','g274943-d10518350','g274943-d8443507','g274945-d11849019','g277810-d12000136','g277810-d18942424','g277810-d4312850','g285716-d12374708','g285716-d21236818','g285716-d2355559','g285716-d8073984','g3181359-d20662552','g4422051-d12236181','g612452-d11892375','g612452-d12081069','g612452-d547433','g6375766-d17801972','g6495481-d8077844','g6882280-d6881651','g6952937-d6952269','g7602660-d10898537','g799591-d10184453','g799594-d8544722','g799606-d24149822','g799612-d12837873','g799614-d10720232','g799614-d12847421','g799614-d15187453','g799614-d8078021','g799617-d12691087','g8048262-d23300685','g8048262-d8042006','g9698122-d11664638','g982822-d10902687')

CREATE TABLE gtlab.sk_ta_geosites_reviews_raw AS
select * from  karim_ta_gt_reviews where poi_id in ('g9698122-d11664638','g23301823-d23300975','g1009470-d547439','g799617-d12691087','g15362914-d21287594','g6952937-d6952269','g274945-d11849019','g12500762-d12415590','g274942-d6439669','g799591-d10184453','g652099-d23171253','g2059474-d13414676','g612452-d12081069','g3181359-d20662552','g277810-d18942424','g2554436-d10408392','g285716-d2355559','g799614-d10720232','g4422051-d12236181','g285716-d8073984','g23301826-d23300629','g7718445-d25060057','g277810-d12000136','g8048262-d23996089','g1137995-d12856832','g2317481-d12364236','g612452-d25060053','g12182959-d1537901','g1602225-d3447701','g612452-d11892375','g274929-d3190440','g23301829-d23300650','g4579949-d2642969','g8048262-d23300685','g274923-d12236179','g799614-d8078021','g285716-d12374708','g7602660-d10898537','g277810-d4312850','g982822-d10902687','g14145241-d19274398','g274931-d25445719','g19365200-d19357227','g274943-d10518350','g8048262-d8042006','g612452-d547433','g23301851-d23300987','g23301826-d23300978','g799594-d8544722','g1028715-d3205316','g274929-d1930970','g6375766-d17801972','g17531581-d17529819','g23301836-d23300667','g23301823-d23300604','g13628303-d23034843','g15240141-d10408282','g799614-d15187453','g23301826-d23300984','g12500843-d23300690','g799606-d24149822','g285716-d21236818','g274943-d8443507','g1535802-d11887066','g6495481-d8077844','g799612-d12837873','g1057708-d4173419','g15880364-d23996257','g12182959-d24042843','g799614-d12847421','g18721430-d23300680','g6882280-d6881651','g15240085-d23996303')



select * from gtlab.sk_ta_geosites_reviews_raw
select * from  gtlab.sk_ta_geosites_reviews

select * from information_schema.columns where table_name = 'sk_ta_geosites_reviews'


"alter table gtlab.sk_ta_geosites_reviews_transformed add column review_rand_unique_id text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column  py_langid_title_review text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column  py_langid_review text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column  py_langdetect_title_review text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column py_langdetect_review text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column py_langdetect_review_str text;"
"alter table gtlab.sk_ta_geosites_reviews_transformed add column review_en text;",
"alter table gtlab.sk_ta_geosites_reviews_transformed add column review_title_en text;",

select * from gtlab.sk_ta_geosites_reviews_transformed where sent1_title_polarity is not null




update gtlab.sk_ta_geosites_reviews_transformed set review_en = nv.review_en, review_title_en = nv.review_title_en
from (select * from gtlab.sk_ta_geosites_reviews) nv
where nv.review_title = sk_ta_geosites_reviews_transformed.review_title and clean_review

select * from gtlab.sk_pois_activities_tripadvisor_0723_details where poi_rating is not null order by poi_n_reviews desc


select * from gtlab.sk_ta_geosites_reviews


select * from information_schema.columns where table_name = 'sk_ta_geosites_reviews'


select length(review_en) from gtlab.sk_ta_geosites_reviews_transformed where sent1_title_polarity is null and review_title_en is not null order by length(review_en) desc

select py_langdetect_review_str, count(*) 
from gtlab.sk_ta_geosites_reviews 
group by py_langdetect_review_str
order by count desc

1295
773
