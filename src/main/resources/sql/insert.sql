SET GLOBAL time_zone = '+01:00';

INSERT INTO `klant` (`id`, `voornaam`, `achternaam`, `email`, `wachtwoord`)
VALUES (1, 'Alexander', 'V', 'alexander.v@gmail.com', 'test123456'),
       (2, 'Marie', 'B', 'marie.b@gmail.com', 'test2'),
       (3, 'Stef', 'DC', 'stef.dc@gmail.com', 'test3'),
       (4, 'Yannick', 'P', 'yannick.p@gmail.com', 'test4'),
       (5, 'Rob', 'W', 'rob.w@gmail.com', 'test5');


INSERT INTO `transportmiddel` (`id`, `naam`, `maxPlaatsen`)
VALUES (1, 'Bus', 60),
       (2, 'Vliegtuig', 250),
       (3, 'Trein', 200),
       (4, 'Minibus', 8),
	   (5, 'Cruiseschip', 300);

INSERT INTO `locatie` (`id`, `naam`, `code`)
VALUES (1, 'Verenigd Koninkrijk', 'VK-1'),
       (2, 'Andorra', 'AND-1'),
	   (3, 'Griekenland', 'GRI-1'),
	   (4, 'Spanje', 'SPA-1'),
	   (5, 'Canarische Eilanden', 'CAE-1'),
	   (6, 'Portugal', 'POR-1'),
	   (7, 'Montenegro', 'MON-1'),
	   (8, 'Malta', 'MAL-1'),
	   (9, 'Cyprus', 'CYP-1'),
	   (10, 'Mallorca', 'MAL-1');

INSERT INTO `boeking` (`id`, `klantId`, `prijs`, `isBetaald`, `heenReisId`, `terugReisId`)
VALUES (1, 1, 567.89, TRUE, 1, 2),
       (2, 2, 123.45, FALSE, 2, 3),
       (3, 3, 500.59, TRUE, 3, 4),
       (4, 4, 567.8, FALSE, 4, 5),
       (5, 5, 420.69, FALSE, 5, 1);

INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (2, 10, 4, 899.2, 3, '2017-08-26', '14:07:56');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (3, 7, 6, 847.8, 5, '2017-01-26', '6:31:20');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (4, 9, 3, 621.5, 2, '2018-07-22', '22:59:02');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (5, 7, 6, 573.2, 1, '2019-02-01', '19:04:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (6, 4, 8, 83.3, 1, '2017-03-27', '11:22:55');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (7, 9, 10, 303.0, 1, '2018-02-14', '14:09:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (8, 6, 6, 962.4, 5, '2019-06-29', '18:21:25');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (9, 9, 5, 405.7, 4, '2017-07-21', '20:26:44');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (10, 3, 2, 643.3, 5, '2018-03-09', '18:26:18');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (11, 3, 3, 392.8, 3, '2018-05-16', '4:03:41');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (12, 10, 8, 153.0, 1, '2019-01-19', '11:34:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (13, 3, 9, 523.7, 5, '2019-08-02', '21:08:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (14, 1, 5, 45.2, 1, '2017-01-16', '13:41:20');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (15, 9, 3, 333.5, 5, '2019-09-30', '19:27:09');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (16, 7, 7, 123.3, 2, '2018-02-06', '20:31:16');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (17, 3, 3, 371.8, 5, '2017-06-02', '3:30:15');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (18, 8, 5, 856.6, 4, '2017-03-27', '9:43:40');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (19, 8, 8, 422.9, 2, '2017-02-04', '2:52:59');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (20, 4, 9, 134.7, 3, '2018-07-21', '10:20:56');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (21, 3, 9, 178.4, 4, '2018-02-09', '14:30:43');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (22, 6, 4, 512.4, 5, '2019-09-18', '10:16:49');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (23, 6, 3, 715.9, 4, '2019-01-26', '22:32:47');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (24, 9, 3, 812.0, 3, '2017-06-23', '1:51:06');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (25, 9, 3, 916.6, 3, '2017-10-23', '0:24:02');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (26, 4, 2, 510.9, 4, '2017-05-11', '20:12:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (27, 5, 3, 873.4, 4, '2017-03-16', '22:09:35');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (28, 10, 2, 462.0, 4, '2019-02-02', '0:31:26');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (29, 4, 9, 219.9, 1, '2017-08-26', '6:25:17');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (30, 4, 2, 396.2, 1, '2019-09-20', '9:12:16');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (31, 6, 1, 845.9, 5, '2017-08-15', '10:14:49');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (32, 4, 5, 973.0, 3, '2017-10-14', '0:28:55');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (33, 6, 7, 561.6, 1, '2017-07-03', '20:46:01');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (34, 5, 5, 845.1, 3, '2017-02-12', '7:40:06');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (35, 5, 1, 120.9, 3, '2017-06-30', '11:43:30');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (36, 6, 9, 335.5, 5, '2017-11-13', '17:10:17');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (37, 6, 9, 950.1, 1, '2018-08-03', '5:23:31');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (38, 2, 3, 120.0, 4, '2018-11-12', '21:36:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (39, 9, 6, 920.9, 1, '2018-01-10', '5:55:32');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (40, 1, 9, 436.6, 3, '2017-03-28', '11:25:46');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (41, 9, 7, 968.8, 4, '2017-10-19', '22:31:12');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (42, 4, 6, 35.9, 1, '2019-10-26', '14:51:05');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (43, 9, 4, 873.2, 3, '2019-09-15', '13:45:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (44, 8, 2, 486.9, 5, '2017-04-11', '23:06:18');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (45, 8, 10, 724.3, 2, '2018-11-04', '3:26:51');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (46, 1, 6, 4.9, 2, '2017-03-28', '8:53:01');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (47, 4, 4, 370.5, 4, '2017-01-04', '4:54:52');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (48, 5, 5, 882.6, 1, '2018-11-16', '2:24:32');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (49, 1, 5, 125.8, 3, '2018-12-10', '4:50:29');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (50, 7, 1, 753.0, 1, '2017-09-15', '23:17:36');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (51, 4, 7, 12.0, 2, '2019-01-13', '4:13:04');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (52, 8, 9, 561.4, 2, '2017-06-27', '6:50:03');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (53, 8, 5, 224.1, 1, '2017-09-02', '14:03:18');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (54, 2, 5, 705.9, 5, '2017-01-06', '3:48:33');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (55, 9, 10, 717.2, 4, '2018-09-02', '22:07:42');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (56, 4, 10, 480.9, 1, '2018-04-03', '20:16:47');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (57, 8, 10, 66.7, 2, '2018-08-21', '1:46:54');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (58, 5, 2, 13.0, 3, '2017-03-28', '15:56:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (59, 8, 6, 55.9, 3, '2018-03-22', '4:35:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (60, 3, 10, 509.4, 1, '2018-05-10', '19:11:36');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (61, 7, 2, 311.3, 1, '2019-10-03', '22:15:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (62, 4, 1, 5.5, 1, '2017-12-05', '14:18:50');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (63, 2, 1, 998.9, 2, '2017-11-14', '16:25:47');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (64, 2, 1, 916.6, 2, '2018-05-27', '5:14:21');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (65, 10, 1, 101.5, 3, '2018-04-27', '12:14:06');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (66, 5, 7, 504.7, 2, '2017-05-13', '3:06:38');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (67, 5, 4, 978.7, 1, '2018-10-18', '8:46:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (68, 4, 10, 364.9, 3, '2017-11-15', '10:08:02');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (69, 7, 9, 771.5, 1, '2017-04-17', '13:38:52');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (70, 1, 3, 634.9, 2, '2018-10-30', '12:44:46');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (71, 9, 4, 103.3, 5, '2017-01-08', '1:57:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (72, 9, 3, 909.4, 3, '2017-11-21', '20:24:39');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (73, 7, 3, 453.1, 4, '2019-11-22', '16:18:28');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (74, 3, 8, 1.8, 2, '2019-12-03', '0:57:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (75, 9, 8, 583.8, 4, '2018-05-08', '20:32:02');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (76, 10, 7, 591.0, 4, '2019-10-05', '9:28:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (77, 2, 9, 123.2, 3, '2019-02-18', '23:03:32');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (78, 6, 9, 801.8, 2, '2019-05-02', '18:09:13');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (79, 8, 1, 155.0, 2, '2019-04-04', '20:18:25');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (80, 3, 10, 661.6, 5, '2017-11-14', '14:26:45');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (81, 1, 10, 77.6, 5, '2019-08-17', '19:40:09');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (82, 9, 10, 540.6, 3, '2018-06-17', '3:42:31');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (83, 9, 10, 427.1, 3, '2017-04-14', '16:11:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (84, 3, 6, 39.6, 2, '2017-08-05', '23:35:00');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (85, 6, 10, 202.8, 4, '2017-12-11', '16:20:43');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (86, 1, 2, 412.2, 2, '2019-04-23', '13:33:31');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (87, 5, 2, 6.4, 3, '2019-08-30', '4:22:27');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (88, 10, 2, 331.9, 5, '2018-07-28', '15:03:20');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (89, 2, 2, 791.9, 2, '2017-04-23', '23:25:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (90, 2, 10, 705.5, 4, '2019-08-03', '10:19:46');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (91, 8, 3, 536.3, 2, '2018-09-03', '4:07:19');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (92, 7, 2, 414.8, 3, '2018-11-02', '16:26:04');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (93, 6, 4, 771.1, 4, '2018-11-29', '2:38:21');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (94, 8, 4, 67.9, 4, '2018-05-09', '20:10:08');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (95, 6, 4, 989.1, 5, '2018-06-22', '6:48:13');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (96, 1, 8, 798.3, 4, '2018-07-05', '5:50:30');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (97, 6, 7, 183.0, 4, '2018-04-21', '8:34:00');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (98, 6, 9, 653.5, 3, '2018-07-06', '19:13:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (99, 4, 10, 437.6, 4, '2019-09-19', '13:12:43');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (100, 9, 8, 781.9, 2, '2018-03-17', '8:34:24');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (101, 3, 4, 885.2, 3, '2019-04-28', '8:25:38');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (102, 10, 1, 296.1, 3, '2019-01-06', '19:03:03');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (103, 7, 2, 594.7, 3, '2018-05-14', '22:17:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (104, 2, 6, 458.9, 1, '2018-04-23', '9:50:27');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (105, 2, 7, 823.6, 5, '2017-07-27', '6:21:23');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (106, 9, 5, 180.8, 3, '2017-11-22', '2:04:15');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (107, 3, 7, 494.1, 4, '2018-10-09', '16:03:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (108, 10, 3, 913.3, 2, '2017-09-11', '1:31:39');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (109, 3, 2, 61.9, 5, '2019-02-23', '23:38:12');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (110, 7, 6, 684.7, 4, '2017-11-21', '6:55:29');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (111, 9, 7, 681.3, 3, '2019-06-18', '9:25:59');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (112, 4, 1, 250.2, 2, '2017-02-24', '9:09:25');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (113, 2, 5, 876.0, 1, '2019-02-02', '5:06:05');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (114, 7, 4, 383.0, 1, '2019-03-07', '8:52:44');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (115, 10, 7, 920.8, 5, '2018-12-25', '7:27:27');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (116, 3, 9, 565.6, 4, '2018-08-20', '8:00:20');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (117, 7, 5, 334.7, 3, '2019-08-26', '1:55:19');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (118, 6, 7, 559.3, 1, '2017-10-17', '5:57:59');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (119, 10, 4, 572.0, 3, '2018-03-29', '21:02:10');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (120, 10, 4, 627.8, 4, '2017-12-09', '0:39:08');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (121, 4, 8, 816.8, 3, '2019-10-08', '9:07:05');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (122, 1, 8, 459.2, 3, '2017-01-30', '4:30:26');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (123, 2, 8, 937.2, 1, '2017-03-08', '13:37:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (124, 1, 9, 730.5, 3, '2017-05-23', '18:43:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (125, 2, 4, 520.0, 2, '2018-08-09', '12:20:08');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (126, 7, 6, 627.0, 2, '2018-04-16', '23:25:10');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (127, 2, 10, 700.5, 3, '2018-04-25', '16:14:21');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (128, 3, 6, 372.1, 5, '2019-06-13', '7:43:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (129, 5, 5, 462.2, 4, '2017-06-03', '16:40:24');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (130, 8, 6, 210.0, 4, '2019-03-19', '20:43:28');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (131, 3, 9, 542.5, 1, '2019-03-16', '22:35:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (132, 7, 8, 711.1, 2, '2019-03-21', '7:26:07');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (133, 5, 1, 491.1, 2, '2017-04-25', '20:56:29');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (134, 10, 4, 866.1, 2, '2017-11-11', '2:02:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (135, 6, 9, 283.6, 3, '2018-03-04', '4:07:28');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (136, 4, 1, 333.0, 5, '2017-07-23', '5:11:03');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (137, 7, 7, 902.8, 5, '2017-10-22', '11:01:55');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (138, 4, 10, 640.3, 2, '2019-07-31', '0:57:25');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (139, 9, 3, 770.3, 4, '2017-08-02', '9:41:17');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (140, 8, 4, 228.6, 2, '2017-02-23', '18:48:17');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (141, 3, 6, 902.2, 4, '2018-12-22', '0:24:56');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (142, 9, 10, 350.2, 3, '2018-07-10', '4:17:42');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (143, 5, 3, 201.9, 3, '2018-06-09', '0:07:32');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (144, 9, 5, 930.0, 1, '2018-01-03', '12:35:44');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (145, 3, 5, 455.6, 1, '2019-08-12', '2:07:08');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (146, 5, 5, 120.3, 2, '2019-03-06', '8:43:43');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (147, 8, 9, 843.5, 2, '2019-08-16', '12:45:38');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (148, 8, 4, 904.4, 5, '2018-03-05', '3:34:13');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (149, 9, 10, 448.6, 2, '2019-03-03', '15:20:55');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (150, 3, 4, 833.0, 5, '2017-09-29', '13:01:32');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (151, 2, 6, 479.6, 1, '2017-09-01', '12:55:02');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (152, 10, 7, 408.4, 1, '2017-12-31', '8:32:29');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (153, 1, 7, 413.3, 3, '2019-08-21', '1:47:49');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (154, 9, 8, 542.9, 5, '2017-08-04', '1:43:51');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (155, 10, 1, 891.6, 5, '2019-01-09', '17:49:53');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (156, 1, 9, 597.5, 2, '2019-10-06', '4:10:09');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (157, 5, 10, 470.1, 5, '2019-07-18', '16:31:31');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (158, 5, 3, 698.7, 2, '2017-11-19', '2:40:12');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (159, 3, 3, 531.0, 5, '2017-06-13', '2:27:13');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (160, 4, 6, 740.8, 3, '2019-09-21', '21:05:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (161, 10, 5, 723.3, 1, '2019-06-24', '16:53:34');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (162, 6, 5, 636.0, 3, '2017-03-03', '0:12:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (163, 1, 4, 793.5, 4, '2019-05-29', '14:06:39');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (164, 1, 7, 335.3, 5, '2018-09-26', '17:15:10');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (165, 8, 6, 22.9, 3, '2018-09-17', '7:23:06');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (166, 2, 8, 899.1, 5, '2017-12-04', '8:56:47');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (167, 10, 9, 565.4, 3, '2018-10-02', '9:41:51');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (168, 8, 3, 881.0, 3, '2017-11-02', '22:58:00');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (169, 7, 2, 913.7, 1, '2018-10-05', '5:29:22');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (170, 1, 9, 934.8, 4, '2018-01-04', '17:55:33');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (171, 9, 3, 281.2, 5, '2018-09-16', '8:20:25');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (172, 8, 4, 184.8, 3, '2017-11-03', '8:14:33');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (173, 9, 1, 758.7, 1, '2018-06-11', '7:58:56');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (174, 4, 6, 996.9, 1, '2017-07-07', '19:29:21');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (175, 9, 1, 351.7, 3, '2019-06-05', '4:06:51');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (176, 5, 9, 749.7, 4, '2017-11-07', '4:12:03');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (177, 10, 6, 204.5, 3, '2018-09-29', '6:48:00');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (178, 3, 8, 607.0, 1, '2017-05-13', '0:31:48');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (179, 4, 4, 258.5, 4, '2017-06-18', '16:25:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (180, 10, 10, 328.9, 5, '2019-06-23', '23:47:13');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (181, 6, 4, 716.6, 5, '2019-05-26', '12:12:03');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (182, 1, 2, 796.3, 2, '2017-08-25', '23:19:31');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (183, 4, 3, 486.8, 5, '2017-01-13', '1:13:10');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (184, 5, 4, 68.9, 4, '2017-12-15', '7:16:16');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (185, 3, 4, 204.6, 2, '2018-08-27', '2:36:27');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (186, 6, 10, 364.5, 2, '2017-03-15', '11:28:52');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (187, 2, 1, 521.3, 1, '2018-06-22', '14:23:29');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (188, 8, 2, 241.0, 4, '2017-12-27', '18:51:39');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (189, 5, 1, 118.9, 3, '2017-05-23', '6:10:12');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (190, 7, 4, 300.5, 1, '2018-05-16', '2:15:52');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (191, 1, 8, 992.0, 5, '2017-03-28', '21:45:16');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (192, 9, 9, 145.2, 1, '2019-05-04', '8:33:40');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (193, 9, 3, 294.7, 1, '2019-03-21', '2:41:39');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (194, 9, 5, 15.1, 5, '2019-11-25', '4:13:37');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (195, 7, 5, 595.1, 1, '2019-08-31', '22:14:30');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (196, 2, 4, 914.4, 3, '2017-04-22', '6:17:56');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (197, 4, 10, 15.5, 3, '2018-02-21', '0:37:41');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (198, 1, 3, 159.9, 4, '2017-05-05', '6:19:57');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (199, 5, 6, 625.2, 3, '2018-10-27', '10:17:21');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (200, 2, 4, 862.1, 3, '2019-01-24', '9:42:51');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (201, 6, 5, 903.8, 1, '2019-01-22', '19:39:23');
INSERT INTO reis (id, vertrekLocatieId, bestemmingLocatieId, prijs, transportmiddelId, vertrekDatum, vertrekUur) VALUES (202, 8, 9, 623.9, 3, '2018-04-10', '19:09:37');
