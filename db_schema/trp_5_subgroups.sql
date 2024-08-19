--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.23
-- Dumped by pg_dump version 11.2

-- Started on 2024-08-19 11:00:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1538 (class 1259 OID 3177928)
-- Name: trp_5_subgroups; Type: TABLE; Schema: gtlab; Owner: postgres
--

CREATE TABLE gtlab.trp_5_subgroups (
    id integer NOT NULL,
    name text,
    group_id integer,
    subgroup_cat_source text
);


ALTER TABLE gtlab.trp_5_subgroups OWNER TO postgres;

--
-- TOC entry 8611 (class 0 OID 3177928)
-- Dependencies: 1538
-- Data for Name: trp_5_subgroups; Type: TABLE DATA; Schema: gtlab; Owner: postgres
--

INSERT INTO gtlab.trp_5_subgroups VALUES (0, 'Jazz Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (1, 'Karaoke Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (2, 'Wine Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (3, 'Bar', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (4, 'Bars & Clubs', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (5, 'Blues Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (6, 'Cigar Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (7, 'Gay Bars', 28, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (8, 'Coffeehouses', 29, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (9, 'Libraries', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (10, 'Movie Theaters', 17, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (11, 'Observatories & Planetariums', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (12, 'Theaters', 17, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (13, 'Universities & Schools', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (14, 'Art Galleries', 18, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (15, 'Canyons', 2, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (16, 'Caverns & Caves', 0, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (17, 'Geologic Formations', 53, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (18, 'Hot Springs & Geysers', 5, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (19, 'Mountains', 53, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (20, 'Valleys', 53, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (21, 'Waterfalls', 6, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (22, 'Ancient Ruins', 15, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (23, 'Battlefields', 15, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (24, 'Historic Sites', 15, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (25, 'Historic Walking Areas', 15, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (26, 'Military Bases & Facilities', 15, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (27, 'Bridges', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (28, 'Marinas', 52, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (29, 'Scenic Railroads', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (30, 'Art Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (31, 'Children''s Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (32, 'History Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (33, 'Military Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (34, 'Natural History Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (35, 'Science Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (36, 'Speciality Museums', 16, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (37, 'Forests', 55, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (38, 'National Parks', 54, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (39, 'State Parks', 54, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (40, 'Lookouts', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (41, 'Nature & Wildlife Areas', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (42, 'Parks', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (43, 'Exhibitions', 58, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (44, 'Concerts', 57, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (45, 'Music Festivals', 57, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (46, 'Architectural Buildings', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (47, 'Civic Centres', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (48, 'Fountains', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (49, 'Gardens', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (50, 'Government Buildings', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (51, 'Hammams & Turkish Baths', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (52, 'Monuments & Statues', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (53, 'Neighborhoods', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (54, 'Piers & Boardwalks', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (55, 'Cooking Classes', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (56, 'Lessons & Workshops', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (57, 'Cabarets', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (58, 'Character Experiences', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (59, 'Comedy Clubs', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (60, 'Distilleries', 30, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (61, 'Convention Centers', 20, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (62, 'Antique Shops', 60, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (63, 'Department Stores', 60, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (64, 'Factory Outlets', 59, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (65, 'Shopping Malls', 60, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (66, 'Speciality & Gift Shops', 60, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (67, 'Boat Rentals', 39, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (68, 'Gear Rentals', 39, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (69, 'Farms', 61, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (70, 'Breweries', 30, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (71, 'Playgrounds', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (72, 'Sports Camps & Clinics', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (73, 'Sports Complexes', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (74, 'Points of Interest & Landmarks', 62, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (75, 'Health Clubs', 33, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (76, 'Literary', 19, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (77, 'Paint & Pottery Studios', 20, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (78, 'Biking Trails', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (79, 'Cross-country Ski Areas', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (80, 'Hiking Trails', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (81, 'Motorcycle Trails', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (82, 'Observation Decks & Towers', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (83, 'Scenic Walking Areas', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (84, 'Ski & Snowboard Areas', 56, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (85, 'Castles', 13, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (86, 'Cemeteries', 63, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (87, 'Churches & Cathedrals', 63, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (88, 'Religious Sites', 63, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (89, 'Wedding Chapels', 63, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (90, 'Amusement & Theme Parks', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (91, 'Arenas & Stadiums', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (92, 'Auto Racing Tracks', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (93, 'Balloon Rides', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (94, 'Bowling Alleys', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (95, 'Casinos', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (96, 'Dance Clubs & Discos', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (97, 'Escape Games', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (98, 'Farmers Markets', 61, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (99, 'Game & Entertainment Centers', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (100, 'Golf Courses', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (101, 'Horse Tracks', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (102, 'Miniature Golf', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (103, 'Ranches', 61, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (104, 'Shooting Ranges', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (105, 'Skydiving', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (106, 'Spas', 33, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (107, 'Stand Up Paddleboarding', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (108, 'Thermal Spas', 33, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (109, 'Water Parks', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (110, 'Water Sports', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (111, 'Waterskiing & Jetskiing', 34, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (112, 'Wineries & Vineyards', 35, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (113, 'Yoga & Pilates', 33, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (114, 'Zipline & Aerial Adventure Parks', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (115, 'Zoos', 64, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (116, 'Theater & Performances', 17, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (118, 'Art & Music Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (119, 'ATV & Off-Road Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (120, 'Club & Pub Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (121, '4WD', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (122, 'Adrenaline & Extreme Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (123, 'Air Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (124, 'Beer Tastings & Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (125, 'Bike Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (126, 'Boat Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (127, 'Bus Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (128, 'Canyoning & Rappelling Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (129, 'City Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (130, 'Climbing Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (131, 'Coffee & Tea Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (132, 'Cultural Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (133, 'Day Trips', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (134, 'Distillery Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (135, 'Eco Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (136, 'Fashion Shows & Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (137, 'Fishing Charters & Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (138, 'Food Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (139, 'Ghost & Vampire Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (140, 'Helicopter Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (141, 'Hiking & Camping Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (142, 'Historical & Heritage Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (143, 'Hop-On Hop-Off Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (144, 'Horseback Riding Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (145, 'Motorcycle Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (146, 'Multi-day Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (147, 'Nature & Wildlife Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (148, 'Night Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (149, 'Photography Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (150, 'Private Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (151, 'Rail Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (152, 'Running Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (153, 'Safaris', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (154, 'Scavenger Hunts', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (155, 'Scenic Drives', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (156, 'Segway Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (157, 'Self-Guided Tours & Rentals', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (158, 'Shopping Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (159, 'Sightseeing Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (160, 'Ski & Snow Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (161, 'Speed Boats Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (162, 'Walking Tours', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (163, 'Wine Tours & Tastings', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (164, 'Kayaking & Canoeing', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (165, 'River Rafting & Tubing', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (166, 'Parasailing & Paragliding', 37, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (167, 'Visitor Centers', 42, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (168, 'Bus Services', 52, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (169, 'Ferries', 46, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (170, 'Public Transportation Systems', 52, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (171, 'Rail Services', 43, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (172, 'Taxis & Shuttles', 51, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (173, 'Trams', 52, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (174, 'Beaches', 67, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (175, 'Bodies of Water', 65, 'TripAdvisor');
INSERT INTO gtlab.trp_5_subgroups VALUES (176, 'Dams', 66, 'TripAdvisor');


--
-- TOC entry 8493 (class 2606 OID 3177935)
-- Name: trp_5_subgroups trp_5_subgroups_pkey; Type: CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_5_subgroups
    ADD CONSTRAINT trp_5_subgroups_pkey PRIMARY KEY (id);


--
-- TOC entry 8494 (class 2606 OID 3177959)
-- Name: trp_5_subgroups group_subgroup; Type: FK CONSTRAINT; Schema: gtlab; Owner: postgres
--

ALTER TABLE ONLY gtlab.trp_5_subgroups
    ADD CONSTRAINT group_subgroup FOREIGN KEY (group_id) REFERENCES gtlab.trp_4_groups(id);


-- Completed on 2024-08-19 11:00:27

--
-- PostgreSQL database dump complete
--

