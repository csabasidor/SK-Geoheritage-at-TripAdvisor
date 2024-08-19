ALTER TABLE gtlab.sk_pois_activities_tripadvisor_0723_details ADD COLUMN gku_mun_rel_poi text;

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g1087674-d12173418', 'g1087674-d12173299', 'g1087674-d12173416', 'g1087674-d10685852', 'g1087674-d12173255', 'g1087674-d12173260')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE municipality_str_url like '%Bratislava%' 
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g799607-d25347232', 'g799607-d10195554', 'g799607-d25432445', 'g799607-d25347235', 'g799607-d25432399', 'g799607-d24799682', 'g3148687-d21328549', 'g3148687-d21328858', 'g3148687-d8532473', 'g3148687-d21328551', 'g3148687-d21328530', 'g3148687-d21328511', 'g12815741-d21329450', 'g12815741-d19003520', 'g12815741-d21254046', 'g19093851-d23776000')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g6632747-d25237130', 'g6632747-d25237027', 'g6632747-d25237066', 'g6632747-d25237128', 'g6632747-d25237107', 'g6632747-d25237087')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g274927-d12571602', 'g274927-d21213714', 'g274927-d23197929', 'g274927-d13437811', 'g274927-d16813810', 'g274927-d23317862', 'g274927-d1537841', 'g274927-d13437757', 'g274927-d23753112', 'g274927-d15515149', 'g274927-d24837925', 'g274927-d10685935', 'g274927-d2422819', 'g274927-d17738576', 'g274927-d20255832', 'g274927-d13985943', 'g274927-d8510909', 'g274927-d17339790', 'g274927-d6816696', 'g274927-d10449576', 'g274927-d13348044', 'g274927-d11694489', 'g274927-d8556115',  'g274927-d24901192', 'g274927-d14791409', 'g274927-d4959442', 'g274927-d2175881', 'g274927-d17519339', 'g274927-d8434540', 'g274927-d10045960', 'g274927-d12948824', 'g274927-d10025622', 'g274927-d15033722', 'g7753883-d20198560', 'g274927-d14803903', 'g274927-d21346730', 'g274927-d19178447', 'g274927-d8703331', 'g274927-d10548507', 'g274927-d13511641', 'g274927-d10289916', 'g274927-d3494074', 'g274927-d14966821', 'g274927-d19415234', 'g274927-d4787100',  'g274927-d3641547', 'g274927-d7148817', 'g274927-d15060547', 'g274927-d3660690', 'g274927-d6528671', 'g274927-d7085382', 'g274927-d8457682', 'g274927-d8628098', 'g274927-d23332239', 'g274927-d3902434', 'g274927-d12081259', 'g274927-d26168450', 'g274927-d25574940', 'g17439270-d17436678', 'g274927-d7391437', 'g274927-d21311745', 'g274927-d12035492', 'g274927-d12135164', 'g274927-d15060518', 'g274927-d13402043', 'g274927-d15060516', 'g274927-d19357247', 'g274927-d21364591', 'g274927-d17452111', 'g274927-d13129289', 'g274927-d8791728', 'g274927-d11621090',  'g274927-d519663', 'g274927-d12200532', 'g274927-d7184337', 'g274927-d23606088', 'g274927-d15306533', 'g274927-d11664819', 'g274927-d23636814',  'g274927-d26108801', 'g274927-d21332168', 'g274927-d17659150', 'g274927-d4814083', 'g274927-d4814080', 'g274927-d15222449', 'g274927-d4263333',' g274927-d12571602','g274927-d19813386','g274927-d11830568','g274927-d23851543','g274927-d25096451','g274927-d19981180','g274927-d4814081','g274927-d23963466', 'g274927-d13359323', 'g274927-d14791416', 'g274927-d10617511', 'g274927-d23700340')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g277810-d15656081', 'g277810-d10781714', 'g274943-d21095501', 'g19093881-d21148291', 'g277810-d23730859', 'g277810-d19526692', 'g274943-d12081251', 'g274943-d11629671', 'g274943-d11999699', 'g277810-d10816911', 'g277810-d4312850', 'g274943-d17625292', 'g274943-d8443507', 'g277810-d18942424', 'g274943-d21311749', 'g277810-d10643528', 'g277810-d12000136', 'g277810-d10198307', 'g277810-d16662643', 'g274943-d10449970', 'g277810-d15060794')
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g274929-d3936253', 'g274929-d1930970', 'g274929-d3190440')

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE municipality_str_url = 'Spisska Sobota' and gku_municipality_id = 'SK0416523381'
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE municipality_str_url = 'Strbske Pleso' and gku_municipality_id = 'SK0416523933'
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.271165', lon= '20.255571', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.255571 49.271165)', 4326),
gkU_municipality_id =  'SK0416524131', dmo_id = 24, gku_mun_rel_poi = 'ok'
where id = 'g652099-d23171253'
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='47.985709120096445', lon= '17.995473968584335', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.995473968584 47.985709120096)'::text, 4326),
gkU_municipality_id =  'SK0234503649', dmo_id = null, gku_mun_rel_poi = 'ok'
where id = 'g17580212-d17578788'
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.64901890331011', lon= '19.154834827931197', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.154834827931197 48.64901890331011)'::text, 4326),
gkU_municipality_id =  'SK0321580236', dmo_id = 15, gku_mun_rel_poi = 'ok'
where id = 'g2554443-d5532903';

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.276174', lon= '17.082993', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.082993 48.276174)'::text, 4326),
gkU_municipality_id =  'SK0106508233', dmo_id = 27, gku_mun_rel_poi = 'ok'
where id = 'g609045-d11512717';
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.575831527690646', lon= '19.126252659321317', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.126252659321317 48.575831527690646)'::text, 4326),
gkU_municipality_id =  'SK032B518158', dmo_id = 15, gku_mun_rel_poi = 'ok'
where id = 'g799606-d12173465';

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.5773522', lon= '19.1263183', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.1263183 48.5773522)'::text, 4326),
gkU_municipality_id =  'SK032B518158', dmo_id = 15, gku_mun_rel_poi = 'ok'
where id = 'g799606-d12190117';

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.8340250', lon= '19.1127761', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.1127761 48.8340250)'::text, 4326),
gkU_municipality_id =  'SK0321509019', dmo_id = null, gku_mun_rel_poi = 'ok'
where id = 'g667108-d21339026';

---
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.996931097176514', lon= '21.23822136080283', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(21.23822136080283 48.996931097176514)'::text, 4326),
gkU_municipality_id =  'SK0417524140', dmo_id = 20, gku_mun_rel_poi = 'ok'
where id = 'g799591-d19944868';
---
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='17.797747324424076', lon= '48.426583999027535', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.797747324424076 48.426583999027535)'::text, 4326),
gkU_municipality_id =  'SK0213507032', dmo_id = 34, gku_mun_rel_poi = 'ok'
where id = 'g2540356-d12597457';
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.12800905659287', lon= '18.114825253184115', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.114825253184115 49.12800905659287)'::text, 4326),
gkU_municipality_id =  'SK0222512931', dmo_id = null, gku_mun_rel_poi = 'ok'
where id = 'g3383652-d11817401';
-----------------------------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.0864258', lon= '18.1829029', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.1829029 49.0864258)'::text, 4326),
gkU_municipality_id =  'SK0222512931', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g3383652-d11817401', 'g3383652-d11855668', 'g3383652-d11817398');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.74230988856559', lon= '17.886431600736287', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.886431600736287 48.74230988856559)'::text, 4326),
gkU_municipality_id =  'SK0224506125', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g8028613-d8022769');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.089384', lon= '19.579438', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.579438 49.089384)'::text, 4326),
gkU_municipality_id =  'SK0315510262', dmo_id = 21, gku_mun_rel_poi = 'ok'
where id in ('g274929-d11999627');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.670954', lon= '19.697521', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.697521 48.670954)'::text, 4326),
gkU_municipality_id =  'SK0323508527', dmo_id = 4, gku_mun_rel_poi = 'ok'
where id in ('g1009465-d21286990');
-----

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.74245051337327', lon= '19.143328042143583', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.143328042143583 48.670954)'::text, 4326),
gkU_municipality_id =  'SK0321508438', dmo_id = 15, gku_mun_rel_poi = 'ok'
where id in ('g274923-d23987547');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat=' 48.459672576450814', lon= '18.892459836507392', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.892459836507392  48.459672576450814)'::text, 4326),
gkU_municipality_id =  'SK0322516643', dmo_id = 17, gku_mun_rel_poi = 'ok'
where id in ('g612451-d12338022');
------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.293331968207866', lon= '21.274044557414634', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(21.274044557414634  49.293331968207866)'::text, 4326),
gkU_municipality_id =  'SK0411519006', dmo_id = 5, gku_mun_rel_poi = 'ok'
where id in ('g277805-d16756265');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.2946134', lon= '21.2764363', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(21.2764363  49.2946134)'::text, 4326),
gkU_municipality_id =  'SK0411519006', dmo_id = 5, gku_mun_rel_poi = 'ok'
where id in ('g277805-d12172352');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.3473578', lon= '18.9412548', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.9412548  49.3473578)'::text, 4326),
gkU_municipality_id =  'SK0312509477', dmo_id = 7, gku_mun_rel_poi = 'ok'
where id in ('g799593-d11849042');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.43899081187591', lon= '17.42844468900387', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.42844468900387  48.43899081187591)'::text, 4326),
gkU_municipality_id =  'SK0217506940', dmo_id = 0, gku_mun_rel_poi = 'ok'
where id in ('g20380223-d20379011');
-----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.107700979270675', lon= '17.77960946858952', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.77960946858952  48.107700979270675)'::text, 4326),
gkU_municipality_id =  'SK0212503746', dmo_id = 0, gku_mun_rel_poi = 'ok'
where id in ('g20124939-d20379051');
-------------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.426576879594954', lon= '17.797876070453604', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.797876070453604  48.426576879594954)'::text, 4326),
gkU_municipality_id =  'SK0213507032', dmo_id = 20, gku_mun_rel_poi = 'ok'
where id in ('g2540356-d12597457');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.21115941138869', lon= '18.80510781277282', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.80510781277282  48.21115941138869)'::text, 4326),
gkU_municipality_id =  'SK0232545350', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g15363207-d21024771');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.58621899322325', lon= '19.48660656810278', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.48660656810278  48.58621899322325)'::text, 4326),
gkU_municipality_id =  'SK0324518468', dmo_id = 22, gku_mun_rel_poi = 'ok'
where id in ('g3382239-d21244776');
--------------- 
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.1373033', lon= '20.4303759', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.4303759  49.1373033)'::text, 4326),
gkU_municipality_id =  'SK0413523585', dmo_id = 24, gku_mun_rel_poi = 'ok'
where id in ('g1600817-d12080624');
------------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.13423387269099', lon= '20.424992236128116', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.424992236128116 49.13423387269099)'::text, 4326),
gkU_municipality_id =  'SK0413523585', dmo_id = 24, gku_mun_rel_poi = 'ok'
where id in ('g1600817-d12363524');
---------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.13423387269099', lon= '20.424992236128116', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.424992236128116 49.13423387269099)'::text, 4326),
gkU_municipality_id =  'SK0413523585', dmo_id = 24, gku_mun_rel_poi = 'ok'
where id in ('g1600817-d12363524');
-----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.658515', lon= '20.600564', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.600564 48.658515)'::text, 4326),
gkU_municipality_id =  'SK0428525871', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g12365776-d12365851');
----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.025406416180545', lon= '20.587591155474744', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.587591155474744 49.025406416180545)'::text, 4326),
gkU_municipality_id =  'SK0414543292', dmo_id = 24, gku_mun_rel_poi = 'ok' 
where id in ('g277807-d12120346');
----

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.453893', lon= '19.483593', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.483593 49.453893)'::text, 4326), gku_mun_rel_poi = 'ok'
where id in ('g799597-d10826155');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.284238', lon= '18.377679', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.3776794 48.284238)'::text, 4326),
gkU_municipality_id =  'SK0237500607', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g20818865-d20817126');
------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.317258400902226', lon= '18.088380610926787', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.088380610926787 48.317258400902226)'::text, 4326),
gkU_municipality_id =  'SK0233500011', dmo_id = 13, gku_mun_rel_poi = 'ok'
where id in ('g274933-d23834112');
---------------

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.047552095022766', lon= '17.56356490401426', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.56356490401426 48.047552095022766)'::text, 4326),
gkU_municipality_id =  'SK0211501859', dmo_id = 35, gku_mun_rel_poi = 'ok'
where id in ('g7915819-d10730289');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.66247311151372', lon= '20.533959071457943', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.533959071457943 48.66247311151372)'::text, 4326),
gkU_municipality_id =  'SK0428525529', dmo_id = 33, gku_mun_rel_poi = 'ok'
where id in ('g1137995-d11435331');
-----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.5488863', lon= '20.5035068', ggl_address = '049 11 Silická Brezová, Slovakia', ggl_place_id = 'ChIJJSsNHdqjP0cRUfLj8CXVXeM' , adr_type ='GEOMETRIC_CENTER',
geom = st_pointfromtext('POINT( 20.5035068 48.5488863)'::text, 4326),
gkU_municipality_id =  'SK0428526231', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g1137995-d12856832'); 
-----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.66368245318823', lon= '20.53167167046381', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.53167167046381 48.66368245318823)'::text, 4326),
gkU_municipality_id =  'SK0428525529', dmo_id = 33, gku_mun_rel_poi = 'ok'
where id in ('g1137995-d11434533');
--------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.03125365819329', lon= '20.327677883972303', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.327677883972303 49.03125365819329)'::text, 4326),
gkU_municipality_id =  'SK0416523437', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g274938-d10617601');
-------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.0873968', lon= '18.6331875', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.6331875 49.0873968)'::text, 4326),
gkU_municipality_id =  'SK031B517917', dmo_id = 10, gku_mun_rel_poi = 'ok'
where id in ('g1785010-d11873828');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.0395275325018', lon= '19.278474736119925', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.278474736119925 49.0395275325018)'::text, 4326),
gkU_municipality_id =  'SK0318510998', dmo_id = 21, gku_mun_rel_poi = 'ok'
where id in ('g675047-d11999657');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.04200', lon= '19.302015', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.302015 49.04200)'::text, 4326),
gkU_municipality_id =  'SK0318510998', dmo_id = 21, gku_mun_rel_poi = 'ok'
where id in ('g675047-d2249495');
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.6589822', lon= '20.3642492', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.3642492 48.6589822)'::text, 4326),
gkU_municipality_id =  'SK0428526312', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g12364528-d12413035');
--------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.04200', lon= '19.302015', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.302015 49.04200)'::text, 4326),
gkU_municipality_id =  'SK0318510998', dmo_id = 21, gku_mun_rel_poi = 'ok'
where id in ('g675047-d2249495');
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.313103835152106', lon= '21.574361989229175', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(21.574361989229175 49.313103835152106)'::text, 4326),
gkU_municipality_id =  'SK041C527106', dmo_id = 5, gku_mun_rel_poi = 'ok'
where id in ('g1927728-d12365815');

----------

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.04200', lon= '19.302015', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.302015 49.04200)'::text, 4326),
gkU_municipality_id =  'SK0318510998', dmo_id = 21, gku_mun_rel_poi = 'ok'
where id in ('g675047-d2249495');
---------------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.4215051820697', lon= '18.41323305012344', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.41323305012344 48.4215051820697)'::text, 4326),
gkU_municipality_id =  'SK0237500828', dmo_id = 13, gku_mun_rel_poi = 'ok'
where id in ('g2554429-d21339550');
---------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.3766219957733', lon= '17.585878930965876', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(17.585878930965876 48.3766219957733)'::text, 4326),
gkU_municipality_id =  'SK0217506745', dmo_id = 9, gku_mun_rel_poi = 'ok'
where id in ('g663679-d11805993');

----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.27528838575988', lon= '18.25771381778853', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.25771381778853 48.27528838575988)'::text, 4326),
gkU_municipality_id =  'SK0233500933', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g5561693-d25423312');
----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.158695811717095', lon= '20.22491056863472', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.22491056863472 49.158695811717095)'::text, 4326),
gkU_municipality_id =  'SK0416560103', dmo_id = 0, gku_mun_rel_poi = 'ok'
where id in ('g285716-d7698050');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.158695811717095', lon= '20.22491056863472', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.22491056863472 49.158695811717095)'::text, 4326),
gkU_municipality_id =  'SK0416560103', dmo_id = 0, gku_mun_rel_poi = 'ok'
where id in ('g285716-d7698050');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.05331765196411', lon= '19.651015241644867', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.651015241644867 49.05331765196411)'::text, 4326),
gkU_municipality_id =  'SK0315511196', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g2650288-d25562938');
----------
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.27265758689787', lon= '20.309733064938495', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.309733064938495 49.27265758689787)'::text, 4326),
gkU_municipality_id =  'SK0416524131', dmo_id = 24, gku_mun_rel_poi = 'ok'
where id in ('g652099-d6962055');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.999653780453755', lon= '20.76753315513522', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(20.76753315513522 48.999653780453755)'::text, 4326),
gkU_municipality_id =  'SK042A526657', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g12371571-d290674');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.4103675', lon= '19.1510235', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.1510235 48.4103675)'::text, 4326),
gkU_municipality_id =  'SK032B518689', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g799606-d24156233');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='48.54379083446606', lon= '19.050827749272834', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(19.050827749272834 48.54379083446606)'::text, 4326),
gkU_municipality_id =  'SK032B518671', dmo_id = null, gku_mun_rel_poi = 'ok'
where id in ('g799606-d12793359');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.2238634', lon= '18.7383752', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.7383752 49.2238634)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23755705');
-----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.214897788173246', lon= '18.7758277395637', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.7758277395637 49.214897788173246)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d10331756');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.2019762425208', lon= '18.7215237370269', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.7215237370269 49.2019762425208)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23760226');
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.224973927650815', lon= '18.742724799586522', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.742724799586522 49.224973927650815)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23773490');
---
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.213495289581154', lon= '18.755524302436875', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.755524302436875 49.213495289581154)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23759082');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.21605684069321', lon= '18.726191664978398', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.726191664978398 49.21605684069321)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d12001491');
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.22512807952062', lon= '18.742003286713363', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.742003286713363 49.22512807952062)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23759057');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.212699051204794', lon= '18.710947261140312', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.710947261140312 49.212699051204794)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23760214');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.217808087342', lon= '18.692659960291227', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.692659960291227 49.217808087342)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23773570');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.22505970937323', lon= '18.74535818398459', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.74535818398459 49.22505970937323)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d20082975');

UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET lat='49.21342339925171', lon= '18.755856349845555', ggl_address = null, ggl_place_id = null , adr_type =null,
geom = st_pointfromtext('POINT(18.755856349845555 49.21342339925171)'::text, 4326),
gkU_municipality_id =  'SK031B517402', dmo_id = 16, gku_mun_rel_poi = 'ok'
where id in ('g274946-d23759034');



, 

, , 
, , 

select * from ta_karim_dp_sample where poi_id = 'g274924-d17168885'

select * from gtlab.sk_pois_activities_tripadvisor_0723_details where id = 'g274924-d17168885' 
select "Kód_obce", "Názov_obce" from gtlab.sk_municipalities_gku where "Názov_obce" = 'Žilina'
select * from gtlab.sk_dmo_boundaries_Susr_codes where "Kód_obce" =  'SK031B517402'

----
with foo as (
SELECT url, sk_pois_activities_tripadvisor_0723_details.id, sk_pois_activities_tripadvisor_0723_details.dmo_id, sk_pois_activities_tripadvisor_0723_details.municipality_str_url, sk_pois_activities_tripadvisor_0723_details.gku_mun_rel_poi,
sk_pois_activities_tripadvisor_0723_details.gku_municipality_id,
sk_municipalities_gku."Názov_obce"
FROM gtlab.sk_pois_activities_tripadvisor_0723_details, gtlab.sk_municipalities_gku
where sk_pois_activities_tripadvisor_0723_details.gku_municipality_id = sk_municipalities_gku."Kód_obce"
) select * from foo
where lower(municipality_str_url) <> unaccent(lower("Názov_obce")) --and "Názov_obce" = 'Vysoké Tatry'
and  gku_mun_rel_poi is null
order by "municipality_str_url"
----
UPDATE gtlab.sk_pois_activities_tripadvisor_0723_details SET gku_mun_rel_poi = 'ok' WHERE id in ('g799606-d24149828','g799606-d24149822','g274946-d23773947','g274946-d11775627','g274946-d23760229','g274946-d23770571','g274946-d23773438','g274946-d23773469','g274946-d4322099','g274946-d23773442','g274946-d23773946','g274946-d23773437','g274946-d23773453','g274946-d23773949','g274946-d12837999','g274946-d12200559','g799606-d12793362','g7739967-d12856739','g14188208-d24036165','g14188208-d24036786','g652099-d12986684','g15240141-d10408282','g23316369-d24989254','g285716-d25219508','g285716-d20350945','g285716-d12374708','g6538933-d12183449','g1784976-d24984754','g1784976-d24984688','g1784976-d25004748','g7602660-d10898537','g7602660-d11434422', 'g277810-d277736','g12371035-d14150078','g13628303-d21206622','g676528-d3337456','g8132632-d8123807','g8132632-d10464662','g21340862-d21338586','g12364301-d10401033','g12364301-d12480959','g1602226-d6960278','g2645496-d12680829','g274938-d16662860','g285716-d19289096','g285716-d25219572', 'g285716-d25219495', 'g285716-d7698046', 'g609046-d23246509', 'g609046-d2719115','g274943-d10518350','g274941-d4412947','g1137995-d12856832', 'g799591-d10711638','g1183433-d21006623', 'g1183433-d11779701','g12500843-d23300690','g19093967-d20329703','g2278163-d10826104','g7066414-d21336030','g3649135-d3645143', 'g3649135-d13199443','g5288168-d12173497','g274933-d23140846', 'g274933-d25425242','g274933-d25423267','g274933-d25423269','g274942-d6439669', 'g274942-d13129141','g15735481-d15694703','g15735481-d15695114', 'g799610-d14760723','g799610-d12900926','g799610-d12900639', 'g799610-d15020490','g2554435-d24995701','g2554435-d25004730','g3576671-d19987238','g274929-d15123840','g277807-d12135180','g1602161-d8471983','g799609-d25952585','g799609-d12837611','g7680567-d24989374','g2554438-d23724053','g274927-d25318423','g1600817-d15265834','g15200025-d15010856','g2554442-d23242830','g17793409-d17791340','g6599146-d12180421','g2540356-d21177688','g2554444-d12657669','g21239537-d25233658','g15880364-d23996257','g1077230-d12518852', 'g1009332-d12176697','g799593-d25004755','g799593-d11849076','g274925-d13564970','g1535802-d11887066','g277805-d10841352','g612451-d3929412','g274923-d24992356','g1009465-d23178835','g1009467-d23568851','g1009465-d23178844','g1009466-d23756719','g274942-d12080917', 'g274942-d21238513', 'g274942-d12080910','g7061019-d11892379','g23301826-d23300629','g1602161-d21170249','g277807-d26245320','g1784976-d24989342','g274946-d23773969','g799593-d24984767','g3383652-d3348838','g799606-d12442142','g2540356-d21173271', 'g2540356-d26153383', 'g2540356-d26153382', 'g2540356-d26153410','g1927728-d12223870', 'g799602-d5967213','g1009465-d23049142','g1009465-d23049142','g3175023-d2719150','g3175023-d2719150','g3554709-d12100811','g274935-d23959497','g19097176-d10440833','g799612-d12120609')

select * from information_schema.tables where table_name::text like '%karim%'


SELECT dmo_id, count(*) FROM gtlab.sk_pois_activities_tripadvisor_0723_details group by dmo_id order by count desc



