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
       (4, 'Andere bus', 80),
       (5, 'waggie', 30);

INSERT INTO `locatie` (`id`, `naam`, `code`)
VALUES (1, 'Verenigd Koninkrijk', 'VK153-6'),
       (2, 'Andorra', 'AD-4'),
       (3, 'Kamping Kitsch', 'MARG1N44-L'),
       (4, 'Turkije', 'TK-87'),
       (5, 'De zee. Spannend.', 'ZEEKE');

INSERT INTO `boeking` (`id`, `klantId`, `prijs`, `isBetaald`, `heenReisId`, `terugReisId`)
VALUES (1, 1, 567.89, TRUE, 1, 2),
       (2, 2, 123.45, FALSE, 2, 3),
       (3, 3, 500.59, TRUE, 3, 4),
       (4, 4, 567.8, FALSE, 4, 5),
       (5, 5, 420.69, FALSE, 5, 1);

 INSERT INTO `reis` (`id`,
                    `vertrekLocatieId`,
                    `bestemmingLocatieId`,
                    `prijs`,
                    `transportmiddelId`,
                    `vertrekDatum`,
                    `vertrekUur`)
VALUES (1, 1, 2, 870.12, 1, '2018-12-01', '08:30:00'),
       (2, 2, 3, 890.4, 1, '2018-12-02', '09:30:00'),
       (3, 3, 4, 910.1, 1, '2018-12-03', '10:30:00'),
       (4, 4, 5, 1000.150, 1, '2018-12-04', '11:30:00'),
       (5, 5, 1, 1432.16, 1, '2018-12-05', '12:30:00');
