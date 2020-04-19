#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (86, 'accusamus');
INSERT INTO `communities` (`id`, `name`) VALUES (31, 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES (97, 'aliquam');
INSERT INTO `communities` (`id`, `name`) VALUES (89, 'aliquid');
INSERT INTO `communities` (`id`, `name`) VALUES (51, 'assumenda');
INSERT INTO `communities` (`id`, `name`) VALUES (61, 'atque');
INSERT INTO `communities` (`id`, `name`) VALUES (55, 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES (83, 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES (93, 'consectetur');
INSERT INTO `communities` (`id`, `name`) VALUES (28, 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES (60, 'culpa');
INSERT INTO `communities` (`id`, `name`) VALUES (30, 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES (23, 'cupiditate');
INSERT INTO `communities` (`id`, `name`) VALUES (26, 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES (62, 'delectus');
INSERT INTO `communities` (`id`, `name`) VALUES (100, 'deserunt');
INSERT INTO `communities` (`id`, `name`) VALUES (59, 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES (76, 'dolore');
INSERT INTO `communities` (`id`, `name`) VALUES (66, 'doloribus');
INSERT INTO `communities` (`id`, `name`) VALUES (65, 'dolorum');
INSERT INTO `communities` (`id`, `name`) VALUES (88, 'ducimus');
INSERT INTO `communities` (`id`, `name`) VALUES (24, 'ea');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'eaque');
INSERT INTO `communities` (`id`, `name`) VALUES (71, 'earum');
INSERT INTO `communities` (`id`, `name`) VALUES (53, 'eius');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES (34, 'error');
INSERT INTO `communities` (`id`, `name`) VALUES (25, 'et');
INSERT INTO `communities` (`id`, `name`) VALUES (63, 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES (77, 'eveniet');
INSERT INTO `communities` (`id`, `name`) VALUES (21, 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES (49, 'excepturi');
INSERT INTO `communities` (`id`, `name`) VALUES (58, 'exercitationem');
INSERT INTO `communities` (`id`, `name`) VALUES (29, 'facilis');
INSERT INTO `communities` (`id`, `name`) VALUES (64, 'fuga');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'fugit');
INSERT INTO `communities` (`id`, `name`) VALUES (57, 'id');
INSERT INTO `communities` (`id`, `name`) VALUES (78, 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'illum');
INSERT INTO `communities` (`id`, `name`) VALUES (41, 'in');
INSERT INTO `communities` (`id`, `name`) VALUES (67, 'incidunt');
INSERT INTO `communities` (`id`, `name`) VALUES (22, 'inventore');
INSERT INTO `communities` (`id`, `name`) VALUES (96, 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES (48, 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES (54, 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES (47, 'iusto');
INSERT INTO `communities` (`id`, `name`) VALUES (92, 'laboriosam');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'laudantium');
INSERT INTO `communities` (`id`, `name`) VALUES (40, 'magni');
INSERT INTO `communities` (`id`, `name`) VALUES (45, 'maiores');
INSERT INTO `communities` (`id`, `name`) VALUES (73, 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES (35, 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'modi');
INSERT INTO `communities` (`id`, `name`) VALUES (36, 'molestiae');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES (87, 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES (69, 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES (44, 'nemo');
INSERT INTO `communities` (`id`, `name`) VALUES (84, 'nesciunt');
INSERT INTO `communities` (`id`, `name`) VALUES (33, 'non');
INSERT INTO `communities` (`id`, `name`) VALUES (56, 'nostrum');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES (42, 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES (81, 'placeat');
INSERT INTO `communities` (`id`, `name`) VALUES (95, 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES (74, 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'provident');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES (70, 'quas');
INSERT INTO `communities` (`id`, `name`) VALUES (10, 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES (38, 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'quidem');
INSERT INTO `communities` (`id`, `name`) VALUES (39, 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'quisquam');
INSERT INTO `communities` (`id`, `name`) VALUES (75, 'quod');
INSERT INTO `communities` (`id`, `name`) VALUES (98, 'recusandae');
INSERT INTO `communities` (`id`, `name`) VALUES (46, 'rem');
INSERT INTO `communities` (`id`, `name`) VALUES (50, 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'reprehenderit');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES (85, 'sapiente');
INSERT INTO `communities` (`id`, `name`) VALUES (37, 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES (94, 'sequi');
INSERT INTO `communities` (`id`, `name`) VALUES (52, 'sint');
INSERT INTO `communities` (`id`, `name`) VALUES (91, 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES (79, 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES (99, 'suscipit');
INSERT INTO `communities` (`id`, `name`) VALUES (68, 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES (43, 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES (32, 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES (90, 'veniam');
INSERT INTO `communities` (`id`, `name`) VALUES (72, 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES (82, 'voluptate');
INSERT INTO `communities` (`id`, `name`) VALUES (27, 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES (80, 'voluptates');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'voluptatibus');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'voluptatum');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (36, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (49, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (50, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (52, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (79, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 100);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (86, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (97, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (100, 26);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 48, 4, '2018-08-16 22:48:42', '2013-10-06 00:45:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 65, 3, '2018-01-14 17:55:21', '2017-03-15 12:13:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 62, 3, '2012-06-29 03:24:50', '2011-09-08 17:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 98, 3, '2012-08-02 00:32:14', '2020-03-02 06:48:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 75, 2, '2011-09-22 19:22:51', '2016-12-27 03:03:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 79, 1, '2013-06-08 11:01:27', '2016-04-24 06:05:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 4, 2, '2010-06-20 12:56:20', '2016-08-28 23:30:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 18, 4, '2018-09-07 19:33:07', '2016-11-06 03:24:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 53, 3, '2011-11-27 16:12:52', '2014-11-21 11:29:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 53, 3, '2018-10-08 06:00:51', '2017-04-30 03:53:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 69, 2, '2012-05-20 13:28:15', '2015-03-09 19:48:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 1, 3, '2014-09-23 11:22:29', '2010-10-24 04:31:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 2, 3, '2014-01-09 07:01:49', '2017-05-16 02:24:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 35, 2, '2019-02-25 13:37:47', '2016-03-16 14:52:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 50, 1, '2012-05-06 07:51:50', '2018-04-22 18:15:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 89, 2, '2012-04-02 03:22:13', '2014-10-12 10:09:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 32, 3, '2019-05-23 00:48:18', '2013-03-22 08:02:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 5, 4, '2014-05-07 09:33:23', '2013-09-08 01:29:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 72, 4, '2014-08-06 16:06:17', '2015-06-15 12:49:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 30, 2, '2017-01-07 16:04:40', '2014-12-09 20:03:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 55, 3, '2019-01-17 03:39:21', '2018-11-24 16:03:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 86, 4, '2011-05-03 07:03:48', '2014-05-06 12:01:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 31, 4, '2013-08-02 00:40:48', '2016-12-04 06:28:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 52, 4, '2015-03-04 14:09:44', '2019-09-14 08:52:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 83, 1, '2017-11-28 20:31:03', '2018-11-21 19:45:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 25, 2, '2019-06-18 13:34:04', '2015-08-05 02:59:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 57, 3, '2017-01-07 07:23:00', '2011-02-04 23:38:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 8, 1, '2017-09-18 12:51:41', '2012-02-21 12:21:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 44, 1, '2010-07-14 06:51:48', '2017-04-18 12:51:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 53, 3, '2018-11-28 11:17:00', '2011-07-29 01:59:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 79, 1, '2011-12-06 21:23:27', '2015-03-13 06:01:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 29, 3, '2016-12-26 02:05:32', '2010-08-29 07:36:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 1, 4, '2013-10-21 13:34:33', '2015-10-18 08:07:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 50, 3, '2010-09-18 01:53:45', '2014-02-21 21:08:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 9, 4, '2017-02-10 04:30:38', '2019-04-18 09:42:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 34, 3, '2013-11-22 17:39:25', '2018-05-10 20:01:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 54, 3, '2010-10-24 10:20:23', '2011-11-22 09:45:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 96, 3, '2014-05-27 01:40:29', '2011-03-30 05:41:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 59, 1, '2016-08-29 09:52:15', '2010-04-25 19:21:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 72, 2, '2018-03-14 04:55:49', '2015-12-13 07:18:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 50, 1, '2014-11-20 05:56:57', '2019-01-07 05:04:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 14, 3, '2018-10-17 15:06:50', '2016-02-17 15:00:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 50, 2, '2014-11-01 18:13:44', '2013-12-28 13:29:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 75, 3, '2018-02-07 18:25:24', '2019-04-01 13:37:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 76, 4, '2014-12-18 22:18:45', '2017-03-30 02:30:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 97, 1, '2010-05-11 13:34:30', '2012-11-10 18:20:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 75, 4, '2016-01-14 03:34:43', '2019-07-05 09:45:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 12, 1, '2016-06-13 20:37:12', '2018-02-26 22:15:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 13, 4, '2018-08-20 07:01:01', '2010-09-04 05:10:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 46, 2, '2017-04-09 02:32:58', '2013-11-28 15:29:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 81, 4, '2018-09-01 19:13:17', '2020-04-16 18:53:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 80, 1, '2013-06-02 22:47:15', '2010-05-30 21:40:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 98, 2, '2015-05-10 09:34:25', '2012-06-09 00:56:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 46, 3, '2018-11-20 10:38:49', '2015-09-16 11:48:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 98, 1, '2015-09-22 17:14:00', '2012-11-20 22:18:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 48, 1, '2012-03-16 06:40:23', '2015-06-22 18:45:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 46, 1, '2018-07-30 23:37:16', '2018-06-09 09:22:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 80, 2, '2012-03-27 22:43:47', '2016-09-23 15:18:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 21, 3, '2010-08-23 17:06:14', '2017-08-10 16:39:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 41, 2, '2013-11-15 20:34:04', '2014-07-24 15:36:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 73, 1, '2015-05-09 03:30:16', '2014-07-07 12:24:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 3, 4, '2012-01-31 07:34:28', '2012-08-03 22:32:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 33, 1, '2017-01-02 18:05:41', '2017-06-05 12:59:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 54, 4, '2016-02-29 15:49:07', '2016-03-16 14:56:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 73, 2, '2019-10-04 06:31:37', '2013-06-08 18:55:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 96, 1, '2018-08-25 13:52:12', '2017-04-01 05:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 8, 2, '2019-10-30 17:45:20', '2012-07-30 02:24:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 47, 1, '2015-12-29 19:26:34', '2019-03-31 07:40:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 56, 2, '2018-08-17 20:12:21', '2012-11-12 16:29:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 14, 1, '2010-11-12 00:57:04', '2017-01-18 20:56:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 18, 3, '2011-07-13 10:23:53', '2015-11-28 06:50:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 31, 2, '2013-03-20 13:32:42', '2017-02-19 01:50:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 18, 4, '2012-07-30 19:14:03', '2018-07-06 04:38:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 92, 3, '2010-05-16 08:27:57', '2011-10-12 23:25:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 22, 3, '2010-11-26 15:19:17', '2013-04-05 15:48:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 52, 4, '2017-01-25 16:02:22', '2014-11-22 13:00:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 95, 4, '2015-01-04 10:33:18', '2012-01-04 18:07:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 15, 3, '2019-08-13 02:48:18', '2020-01-16 16:05:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 33, 4, '2012-05-05 01:18:09', '2010-07-19 19:18:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 35, 2, '2017-04-13 19:19:41', '2012-02-28 19:17:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 69, 2, '2015-06-05 22:59:06', '2011-06-26 21:56:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 52, 2, '2010-07-13 01:50:47', '2011-05-01 09:23:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 4, 1, '2010-11-28 16:41:33', '2017-06-06 18:04:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 61, 4, '2019-07-13 06:08:14', '2019-10-09 02:14:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 79, 4, '2014-05-16 21:57:48', '2012-01-13 08:26:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 12, 4, '2016-08-31 15:24:54', '2011-11-25 02:36:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 63, 2, '2017-09-22 09:05:50', '2018-05-21 08:56:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 82, 2, '2019-11-01 10:40:13', '2017-02-28 01:18:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 96, 1, '2016-09-10 04:19:54', '2016-05-16 11:25:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 95, 4, '2019-11-01 10:20:07', '2015-12-07 05:14:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 76, 2, '2011-06-19 14:36:41', '2010-05-08 21:54:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 11, 4, '2015-05-20 12:32:52', '2017-03-30 02:16:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 55, 2, '2011-09-04 23:37:30', '2012-07-17 22:30:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 44, 1, '2010-08-25 06:48:48', '2020-02-22 17:42:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 61, 1, '2019-02-11 02:17:24', '2017-12-25 08:09:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 1, 1, '2018-10-29 21:08:25', '2013-06-11 11:12:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 41, 3, '2019-01-20 08:46:16', '2011-02-16 22:20:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 30, 4, '2019-09-30 02:18:38', '2020-01-12 09:35:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 59, 2, '2012-03-20 12:31:44', '2017-12-03 14:48:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 30, 1, '2019-04-27 19:13:27', '2017-02-25 07:55:00');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'blacklist');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'deleted');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'friend');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'request');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 69, 'consectetur', 3630, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5311 (KHTML, like Gecko) Chrome/15.0.800.0 Safari/5311', '2015-01-11 05:16:05', '2011-03-14 05:41:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 12, 'iure', 7280, 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5310 (KHTML, like Gecko) Chrome/13.0.874.0 Safari/5310', '2010-10-18 11:53:24', '2017-03-19 06:26:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 30, 'voluptatum', 7426, 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5351 (KHTML, like Gecko) Chrome/13.0.803.0 Safari/5351', '2020-01-11 17:27:45', '2015-08-19 09:40:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 89, 'officia', 8565, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5340 (KHTML, like Gecko) Chrome/14.0.813.0 Safari/5340', '2020-02-06 10:00:35', '2012-12-24 08:54:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 2, 68, 'quia', 3516, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_8) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.857.0 Safari/5362', '2017-05-13 21:50:30', '2011-05-17 01:00:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 3, 12, 'ut', 9462, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_1) AppleWebKit/5330 (KHTML, like Gecko) Chrome/13.0.826.0 Safari/5330', '2015-06-29 10:19:39', '2019-03-16 01:21:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 4, 'sit', 3532, 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.871.0 Safari/5362', '2010-10-22 04:15:22', '2010-11-01 04:30:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 2, 87, 'et', 7601, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/5360 (KHTML, like Gecko) Chrome/15.0.812.0 Safari/5360', '2016-10-06 20:21:34', '2011-06-18 20:08:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 3, 95, 'doloremque', 7493, 'Mozilla/5.0 (Windows CE) AppleWebKit/5311 (KHTML, like Gecko) Chrome/14.0.837.0 Safari/5311', '2013-10-17 10:40:51', '2014-06-07 04:46:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 98, 'blanditiis', 1540, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5352 (KHTML, like Gecko) Chrome/14.0.874.0 Safari/5352', '2011-12-28 18:32:07', '2012-05-07 04:42:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 2, 77, 'voluptatem', 3866, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5312 (KHTML, like Gecko) Chrome/13.0.818.0 Safari/5312', '2011-01-10 18:13:44', '2010-09-22 13:51:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 3, 62, 'rem', 9578, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_8) AppleWebKit/5342 (KHTML, like Gecko) Chrome/13.0.874.0 Safari/5342', '2018-09-28 08:11:15', '2011-03-21 15:24:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 1, 86, 'nesciunt', 1582, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.843.0 Safari/5361', '2016-04-16 08:01:28', '2011-08-29 21:49:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 2, 57, 'laudantium', 9439, 'Mozilla/5.0 (Windows 95) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.824.0 Safari/5342', '2012-09-24 00:55:31', '2014-12-08 04:36:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 3, 90, 'pariatur', 3603, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/5342 (KHTML, like Gecko) Chrome/14.0.824.0 Safari/5342', '2019-01-07 20:46:22', '2010-07-08 04:47:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 68, 'provident', 4486, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/15.0.872.0 Safari/5331', '2016-05-04 13:16:53', '2013-03-10 19:17:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 81, 'suscipit', 6681, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/15.0.829.0 Safari/5312', '2011-07-18 21:13:57', '2018-04-29 11:13:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 23, 'dolore', 6405, 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5331 (KHTML, like Gecko) Chrome/13.0.857.0 Safari/5331', '2015-09-16 13:46:50', '2016-12-26 12:55:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 23, 'cumque', 9591, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/14.0.819.0 Safari/5342', '2012-05-02 20:26:40', '2017-12-29 22:39:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 2, 45, 'at', 870, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/13.0.871.0 Safari/5341', '2015-12-17 16:01:19', '2015-02-03 16:45:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 3, 24, 'laborum', 4129, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/5341 (KHTML, like Gecko) Chrome/14.0.845.0 Safari/5341', '2016-02-20 04:18:01', '2015-02-15 13:15:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 96, 'consequatur', 8983, 'Mozilla/5.0 (Windows CE) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.823.0 Safari/5342', '2017-04-15 14:17:11', '2014-08-30 21:17:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 2, 63, 'voluptatem', 8625, 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5310 (KHTML, like Gecko) Chrome/14.0.843.0 Safari/5310', '2018-07-30 05:17:13', '2015-10-09 03:40:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 3, 13, 'magnam', 1429, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/15.0.814.0 Safari/5321', '2014-11-02 18:26:49', '2010-08-20 14:07:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 1, 75, 'expedita', 1585, 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5340 (KHTML, like Gecko) Chrome/13.0.892.0 Safari/5340', '2016-11-19 02:47:28', '2015-01-13 21:39:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 2, 14, 'et', 3891, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/14.0.899.0 Safari/5342', '2016-04-27 12:28:17', '2019-04-15 11:39:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 3, 88, 'sunt', 6476, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_7) AppleWebKit/5322 (KHTML, like Gecko) Chrome/14.0.829.0 Safari/5322', '2015-10-17 21:20:15', '2017-02-15 14:00:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 1, 69, 'debitis', 4502, 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5350 (KHTML, like Gecko) Chrome/15.0.824.0 Safari/5350', '2012-05-28 07:51:44', '2016-05-17 09:40:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 2, 39, 'blanditiis', 4304, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_1) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.861.0 Safari/5362', '2014-08-30 05:38:28', '2012-09-26 17:09:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 3, 75, 'ut', 4096, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5360 (KHTML, like Gecko) Chrome/13.0.860.0 Safari/5360', '2012-02-20 00:20:31', '2011-03-10 13:55:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 13, 'possimus', 3230, 'Mozilla/5.0 (Windows 98) AppleWebKit/5361 (KHTML, like Gecko) Chrome/13.0.843.0 Safari/5361', '2014-06-01 09:34:12', '2020-02-22 20:32:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 7, 'tempora', 6708, 'Mozilla/5.0 (Windows 98) AppleWebKit/5340 (KHTML, like Gecko) Chrome/14.0.884.0 Safari/5340', '2020-03-02 08:50:53', '2010-07-28 22:06:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 87, 'libero', 9472, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7) AppleWebKit/5320 (KHTML, like Gecko) Chrome/14.0.818.0 Safari/5320', '2011-08-21 16:25:31', '2017-10-01 15:01:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 1, 43, 'odio', 909, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1) AppleWebKit/5351 (KHTML, like Gecko) Chrome/15.0.884.0 Safari/5351', '2020-03-15 04:32:53', '2013-06-03 21:55:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 95, 'aut', 3062, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/14.0.881.0 Safari/5321', '2011-09-18 16:38:03', '2014-01-03 10:41:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 3, 55, 'est', 6574, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/14.0.825.0 Safari/5310', '2020-01-10 15:56:49', '2016-06-07 10:36:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 54, 'dolores', 9938, 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5320 (KHTML, like Gecko) Chrome/15.0.821.0 Safari/5320', '2011-08-03 23:55:11', '2015-05-19 20:49:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 2, 99, 'non', 7101, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/14.0.813.0 Safari/5361', '2017-11-22 01:41:08', '2016-10-27 09:35:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 3, 41, 'autem', 9222, 'Mozilla/5.0 (Windows 95) AppleWebKit/5321 (KHTML, like Gecko) Chrome/13.0.885.0 Safari/5321', '2011-10-07 12:04:46', '2010-08-25 19:04:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 1, 48, 'temporibus', 3392, 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5320 (KHTML, like Gecko) Chrome/13.0.840.0 Safari/5320', '2018-09-08 05:18:55', '2011-06-08 10:58:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 2, 97, 'aliquid', 5120, 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/13.0.864.0 Safari/5341', '2011-11-06 22:15:47', '2018-02-27 16:19:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 3, 17, 'eos', 7784, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.810.0 Safari/5350', '2013-02-19 02:39:39', '2015-01-05 18:05:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 10, 'dignissimos', 6447, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/14.0.834.0 Safari/5331', '2013-03-26 02:01:06', '2016-01-15 18:05:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 2, 83, 'id', 187, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.829.0 Safari/5362', '2011-05-03 19:00:00', '2011-08-21 20:17:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 3, 74, 'numquam', 8221, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/15.0.860.0 Safari/5341', '2015-04-24 03:02:36', '2018-11-06 02:43:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 99, 'aut', 1052, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_6) AppleWebKit/5310 (KHTML, like Gecko) Chrome/14.0.807.0 Safari/5310', '2014-03-01 06:37:52', '2014-09-15 04:20:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 51, 'reprehenderit', 9807, 'Mozilla/5.0 (Windows 98) AppleWebKit/5321 (KHTML, like Gecko) Chrome/14.0.817.0 Safari/5321', '2019-07-10 07:57:46', '2019-12-01 07:54:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 55, 'labore', 5463, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/15.0.868.0 Safari/5312', '2013-05-14 19:53:27', '2019-01-22 13:19:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 1, 22, 'quia', 185, 'Mozilla/5.0 (Windows 98) AppleWebKit/5351 (KHTML, like Gecko) Chrome/14.0.865.0 Safari/5351', '2017-01-28 16:03:40', '2011-12-12 07:01:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 2, 73, 'veniam', 5015, 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5322 (KHTML, like Gecko) Chrome/13.0.817.0 Safari/5322', '2012-02-24 08:03:09', '2014-10-10 09:21:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 3, 99, 'tempora', 5338, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.877.0 Safari/5361', '2016-09-09 13:01:12', '2018-02-28 21:35:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 1, 45, 'enim', 8474, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5340 (KHTML, like Gecko) Chrome/15.0.803.0 Safari/5340', '2019-02-10 16:32:44', '2020-02-22 06:39:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 69, 'magni', 4823, 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/15.0.820.0 Safari/5321', '2011-12-03 08:46:34', '2018-02-14 22:32:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 3, 61, 'sed', 4882, 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5322 (KHTML, like Gecko) Chrome/14.0.841.0 Safari/5322', '2010-07-21 02:25:09', '2019-09-21 00:18:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 1, 57, 'ratione', 5260, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.811.0 Safari/5342', '2013-10-30 00:24:47', '2018-06-15 07:41:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 2, 43, 'voluptatem', 3893, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/15.0.864.0 Safari/5332', '2013-12-01 00:10:12', '2014-09-24 02:19:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 3, 75, 'ut', 6834, 'Mozilla/5.0 (Windows CE) AppleWebKit/5342 (KHTML, like Gecko) Chrome/14.0.897.0 Safari/5342', '2014-01-31 15:20:08', '2019-07-28 20:53:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 45, 'aut', 4813, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/13.0.869.0 Safari/5310', '2017-03-07 13:50:33', '2016-04-16 10:16:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 12, 'est', 8950, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/13.0.898.0 Safari/5310', '2012-10-31 20:54:25', '2019-05-11 06:33:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 3, 13, 'qui', 5697, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_3) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.861.0 Safari/5312', '2010-07-12 09:58:15', '2016-11-13 20:38:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 20, 'magnam', 2748, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit/5350 (KHTML, like Gecko) Chrome/14.0.873.0 Safari/5350', '2011-01-04 08:22:44', '2018-02-15 15:49:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 25, 'qui', 3980, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.889.0 Safari/5312', '2015-02-23 03:54:47', '2015-11-25 14:57:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 20, 'cum', 8709, 'Mozilla/5.0 (Windows 95) AppleWebKit/5362 (KHTML, like Gecko) Chrome/13.0.814.0 Safari/5362', '2014-08-07 18:55:18', '2014-07-03 04:10:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 1, 7, 'magni', 217, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/5360 (KHTML, like Gecko) Chrome/14.0.870.0 Safari/5360', '2018-03-22 00:26:07', '2012-08-01 09:01:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 67, 'molestiae', 3003, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.846.0 Safari/5361', '2018-05-08 17:03:20', '2011-06-02 04:12:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 3, 14, 'ipsam', 1764, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.858.0 Safari/5310', '2013-11-13 19:49:23', '2010-08-13 04:45:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 1, 61, 'et', 5147, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.826.0 Safari/5342', '2019-06-21 05:26:10', '2014-04-07 11:07:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 2, 20, 'possimus', 3420, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.883.0 Safari/5310', '2017-10-23 15:40:16', '2016-01-01 01:33:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 3, 13, 'quis', 6412, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5331 (KHTML, like Gecko) Chrome/14.0.871.0 Safari/5331', '2013-01-04 13:39:41', '2017-04-21 07:31:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 1, 1, 'minus', 7125, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.809.0 Safari/5311', '2015-02-02 23:50:48', '2016-12-22 22:23:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 68, 'maiores', 1502, 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5330 (KHTML, like Gecko) Chrome/13.0.878.0 Safari/5330', '2017-05-08 00:03:35', '2014-01-19 18:45:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 3, 10, 'amet', 3637, 'Mozilla/5.0 (Windows CE) AppleWebKit/5361 (KHTML, like Gecko) Chrome/13.0.853.0 Safari/5361', '2014-12-09 14:24:33', '2014-04-24 23:21:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 1, 18, 'atque', 1511, 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5310 (KHTML, like Gecko) Chrome/14.0.888.0 Safari/5310', '2013-11-18 22:34:21', '2014-12-23 18:52:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 2, 77, 'libero', 2713, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.841.0 Safari/5362', '2010-09-08 07:06:14', '2013-11-13 15:18:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 92, 'fugiat', 2920, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_6) AppleWebKit/5352 (KHTML, like Gecko) Chrome/15.0.823.0 Safari/5352', '2016-01-30 11:01:10', '2017-11-23 02:14:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 91, 'ut', 6406, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8) AppleWebKit/5340 (KHTML, like Gecko) Chrome/13.0.864.0 Safari/5340', '2012-12-01 19:40:09', '2015-03-10 06:52:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 76, 'dolor', 9554, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_0) AppleWebKit/5340 (KHTML, like Gecko) Chrome/13.0.891.0 Safari/5340', '2019-01-27 03:52:27', '2013-03-19 09:33:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 42, 'voluptatem', 7699, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5362 (KHTML, like Gecko) Chrome/15.0.859.0 Safari/5362', '2010-09-01 23:47:22', '2013-02-15 05:59:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 1, 46, 'enim', 6571, 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5330 (KHTML, like Gecko) Chrome/15.0.847.0 Safari/5330', '2012-12-17 10:09:01', '2016-02-02 02:59:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 2, 97, 'quia', 8483, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/13.0.856.0 Safari/5342', '2012-04-13 16:27:17', '2018-12-21 21:58:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 3, 15, 'quam', 5297, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.800.0 Safari/5312', '2015-11-12 04:46:25', '2018-09-02 19:11:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 1, 44, 'quos', 4316, 'Mozilla/5.0 (Windows CE) AppleWebKit/5312 (KHTML, like Gecko) Chrome/13.0.852.0 Safari/5312', '2011-10-12 19:03:55', '2016-04-14 20:09:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 2, 42, 'tenetur', 3242, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_6) AppleWebKit/5310 (KHTML, like Gecko) Chrome/15.0.885.0 Safari/5310', '2016-08-14 18:27:37', '2019-07-22 16:59:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 3, 84, 'corporis', 3877, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_6) AppleWebKit/5312 (KHTML, like Gecko) Chrome/13.0.849.0 Safari/5312', '2013-09-08 02:42:57', '2011-11-12 11:29:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 1, 4, 'atque', 4502, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/14.0.883.0 Safari/5310', '2016-09-16 15:47:01', '2012-06-29 03:18:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 98, 'est', 2761, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_2) AppleWebKit/5361 (KHTML, like Gecko) Chrome/13.0.863.0 Safari/5361', '2010-11-18 20:06:05', '2015-04-08 13:35:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 3, 27, 'harum', 6105, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/14.0.831.0 Safari/5342', '2017-02-07 11:33:07', '2018-05-12 14:27:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 1, 78, 'ea', 4943, 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.856.0 Safari/5311', '2010-07-11 04:57:14', '2019-07-03 19:18:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 2, 43, 'consectetur', 564, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5340 (KHTML, like Gecko) Chrome/14.0.871.0 Safari/5340', '2019-11-15 16:37:42', '2011-01-03 04:38:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 3, 38, 'accusantium', 4880, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/15.0.855.0 Safari/5361', '2019-03-09 11:47:08', '2010-05-07 05:16:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, 'vero', 3630, 'Mozilla/5.0 (Windows 98) AppleWebKit/5312 (KHTML, like Gecko) Chrome/14.0.841.0 Safari/5312', '2016-08-29 18:17:49', '2011-05-17 07:01:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 63, 'id', 4367, 'Mozilla/5.0 (Windows 98) AppleWebKit/5342 (KHTML, like Gecko) Chrome/15.0.884.0 Safari/5342', '2019-04-13 03:16:27', '2016-01-17 01:56:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 63, 'quos', 7818, 'Mozilla/5.0 (Windows 98) AppleWebKit/5322 (KHTML, like Gecko) Chrome/14.0.868.0 Safari/5322', '2016-07-31 22:26:06', '2011-07-16 01:39:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 1, 10, 'sit', 5922, 'Mozilla/5.0 (X11; Linuxx86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/13.0.824.0 Safari/5321', '2016-08-14 04:21:48', '2010-09-20 11:45:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 69, 'accusamus', 6940, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/14.0.844.0 Safari/5341', '2013-04-09 09:40:07', '2011-12-13 21:49:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 3, 29, 'quis', 4359, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.821.0 Safari/5311', '2014-08-22 02:40:03', '2019-05-17 21:36:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 1, 24, 'veniam', 5728, 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_9) AppleWebKit/5331 (KHTML, like Gecko) Chrome/14.0.822.0 Safari/5331', '2016-04-20 09:03:29', '2012-01-27 03:51:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 2, 29, 'qui', 335, 'Mozilla/5.0 (X11; Linuxi686) AppleWebKit/5360 (KHTML, like Gecko) Chrome/13.0.862.0 Safari/5360', '2014-07-06 09:20:52', '2010-08-30 04:37:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 49, 'impedit', 8934, 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_3) AppleWebKit/5350 (KHTML, like Gecko) Chrome/15.0.832.0 Safari/5350', '2013-10-16 12:38:56', '2019-10-07 12:41:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 1, 36, 'consequatur', 5381, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5362 (KHTML, like Gecko) Chrome/15.0.821.0 Safari/5362', '2016-07-23 17:38:26', '2015-09-29 01:41:33');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'audio');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'photo');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'video');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 73, 91, 'Voluptas expedita cumque fugit alias nisi saepe cupiditate. Et consectetur ut libero eveniet est ut aut et. Suscipit doloremque libero dolores molestiae possimus ullam enim. Nesciunt officiis dolorum est expedita autem est dolorem et.', 1, 0, '2010-07-16 15:00:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 14, 51, 'Minima inventore itaque sed ipsam. Voluptates voluptas voluptates delectus sit. Doloribus molestiae ipsum et. In nihil praesentium unde neque consequatur omnis nesciunt. Sequi hic itaque ut quas quod.', 0, 1, '2018-02-26 09:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 55, 6, 'Nemo quo quia est beatae. Nihil tempora debitis totam sed sapiente qui. Rerum itaque fugit officiis provident. Pariatur cumque numquam omnis amet molestiae.', 0, 1, '2013-09-04 18:38:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 59, 1, 'In excepturi sit iste repudiandae omnis voluptatem est. Consequuntur est quia aut repellat deleniti nihil. Error laborum autem ea ut. Itaque velit soluta molestiae pariatur magnam.', 0, 1, '2011-12-21 06:36:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 48, 71, 'Impedit enim recusandae veritatis et placeat in repudiandae. Maiores quis quae dolore fuga beatae. Qui reiciendis doloremque sed soluta eligendi. Non rerum hic numquam voluptates est sit mollitia.', 0, 0, '2016-06-18 21:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 62, 67, 'Qui esse repellendus facere ipsum quas distinctio. Est numquam nihil facilis iusto non veniam iusto. Odio ab architecto voluptas autem nemo. Aliquam enim recusandae reprehenderit quam veniam corporis.', 0, 0, '2014-07-25 02:16:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 87, 33, 'Illum optio reprehenderit quae sunt rem. Harum et corrupti voluptatem at ut. Amet aspernatur non voluptas consectetur maiores.', 0, 1, '2012-03-09 21:00:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 99, 14, 'Inventore sequi debitis dignissimos odio necessitatibus minima. Facere cum enim id sit quidem. Quia quia omnis consequatur porro.', 0, 1, '2016-09-04 05:19:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 16, 24, 'Ipsum facere nihil delectus eaque repellendus. Quam architecto voluptas dolorum dignissimos. Autem placeat eligendi dignissimos reiciendis ab minus dolorum. Aut maxime quidem et harum nam.', 0, 1, '2018-11-22 15:11:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 61, 72, 'Non sit eius aut natus est hic. Totam commodi omnis distinctio aut consequatur aspernatur. Aliquam eum ea occaecati ut sunt illo et. Consectetur ipsum optio inventore exercitationem recusandae.', 0, 0, '2016-09-20 21:13:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 14, 26, 'Ullam fugiat tempore aut maiores voluptatem occaecati. Magni saepe natus aut voluptas. Expedita delectus laborum et quisquam quis est. Est enim porro est repellendus id similique beatae.', 1, 0, '2014-06-18 15:17:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 64, 79, 'Ipsa cumque ullam autem qui nemo in. Et magnam recusandae at enim. Aliquam ea voluptatem sit ea cum. Pariatur sed omnis natus et illum distinctio consequatur.', 1, 0, '2014-05-26 03:01:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 56, 64, 'Cumque est tenetur commodi quae in aut. Accusantium et quis non placeat eius fugit magnam. Ea eveniet voluptate eveniet reiciendis ut.', 0, 0, '2017-03-01 07:22:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 12, 84, 'Odit nam occaecati recusandae ut voluptatibus. Dolores rerum sed qui omnis sed possimus voluptas. Ut ullam ducimus similique ipsum vel. Dolor error modi et dolor doloribus placeat.', 0, 1, '2017-03-27 07:08:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 90, 11, 'Dolor veritatis mollitia cupiditate nam. Inventore vel est quos unde. Illum debitis nulla sunt praesentium. Esse eveniet odio laudantium error voluptatibus quia distinctio.', 0, 0, '2018-11-09 09:34:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 4, 62, 'Dolor non dolorem reiciendis. Qui natus maiores est eius voluptas quia. Voluptate ut est iure quia.', 0, 0, '2015-06-27 11:28:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 2, 18, 'Repellat minima rerum et eveniet odit. Occaecati molestiae vel eos autem possimus. Enim quo rem consequatur qui recusandae. Id rem ut dolorem voluptas qui inventore quas.', 1, 0, '2017-11-18 15:18:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 13, 56, 'Quibusdam consequatur est eaque ratione sint dolorem. Enim veritatis ut quis necessitatibus dolorem ut ut. Hic qui sapiente iusto ipsam quis. Laudantium maxime quos expedita voluptas eum. Recusandae voluptatem beatae consequuntur qui.', 1, 0, '2014-05-25 23:31:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 23, 71, 'Repellat molestiae et et. Temporibus laudantium qui perferendis optio. Non quisquam et similique molestias quam rem sequi. Repudiandae qui sint aperiam delectus aut. Autem quia necessitatibus consequatur explicabo occaecati.', 1, 1, '2013-08-04 20:43:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 57, 70, 'Provident sequi aliquid deserunt quia et voluptatum voluptas veniam. Aperiam laudantium ea magnam deleniti praesentium. Ipsam nemo labore consequuntur facilis ducimus unde aut perferendis. Sed dolorum commodi alias.', 0, 0, '2017-07-28 09:45:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 42, 18, 'Velit amet expedita dicta consequuntur nulla ut. Saepe esse et quaerat ea voluptatem. Ex vel rerum voluptas doloremque eum quisquam. Qui molestiae modi quos saepe minus.', 0, 0, '2012-03-11 23:41:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 37, 28, 'Nobis veniam rerum et quisquam voluptatem ullam rerum. Aliquam eum sapiente a quaerat nemo expedita. Nemo quibusdam quidem ad tempora. Deserunt aliquid omnis nulla omnis dicta.', 1, 1, '2017-06-08 21:34:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 51, 35, 'Repudiandae nihil sed quia asperiores. Nisi quia velit illum voluptas non non maxime. Voluptatibus magnam reprehenderit assumenda. Ut qui dolorem vel ullam aliquam quia.', 0, 0, '2013-01-07 02:27:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 42, 66, 'Optio maiores vel facere ipsam. Consequatur delectus ratione eos modi veritatis. Nihil libero enim quis deleniti et. Molestiae qui optio qui dolores dolor aut.', 0, 1, '2013-04-04 06:49:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 59, 2, 'Nisi libero cumque sed id. Cumque ipsam inventore quos perspiciatis. Iure officia sequi et provident.', 0, 1, '2013-02-01 02:43:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 38, 73, 'Officiis dignissimos est quo modi. Labore soluta architecto quis in sint. Corporis et et dolore id sint hic dolor. Iste iure soluta quia est.', 0, 0, '2019-01-26 05:13:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 28, 1, 'Nemo cumque minima odio fugiat in assumenda. Dolores molestiae quisquam maxime dolores laboriosam possimus. Non ut et sed. Pariatur tempore sapiente quidem rerum. Voluptas odit sint fugit nostrum in ratione dicta.', 1, 1, '2013-03-08 09:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 52, 84, 'Saepe laborum sapiente autem doloribus libero. Eius ut nobis voluptatem velit. Incidunt accusantium possimus sit iste esse quidem nostrum pariatur. Rerum doloremque quia nihil quia animi.', 0, 0, '2018-07-03 09:09:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 64, 63, 'Eligendi rerum debitis vel beatae. Et ipsam qui molestiae minima. Quia neque totam maiores animi doloremque architecto dolores voluptas.', 0, 1, '2011-10-27 21:21:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 67, 54, 'Quas enim inventore consectetur. Vel ullam consequatur nam quae omnis qui esse. Vel cum molestiae quo quibusdam autem recusandae id quae. Quasi natus porro fugiat molestiae doloremque numquam voluptate. Aut accusamus eos eaque provident possimus et occaecati.', 1, 0, '2011-04-14 07:19:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 73, 71, 'Eos consequatur laudantium aliquid mollitia ut possimus. Velit qui eum qui minima. Sapiente ea voluptatem exercitationem corrupti.', 0, 0, '2012-12-20 09:19:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 16, 75, 'Qui vel perspiciatis quia quisquam reprehenderit. Error et dolorem quidem nesciunt. Qui illum minus incidunt mollitia.', 1, 1, '2012-04-12 10:47:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 89, 28, 'Qui eligendi qui omnis perspiciatis sit architecto. Et ipsa quo qui ut ut nisi sunt. At sint nobis quo occaecati adipisci voluptates ad dolor. Ex est eaque voluptatem sit est sed.', 1, 1, '2016-12-17 16:38:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 30, 11, 'Recusandae voluptatem repudiandae aut qui. Quibusdam voluptas velit recusandae sint placeat. Voluptatibus qui non harum. Quia doloribus aliquam eum.', 1, 1, '2010-08-17 07:54:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 99, 87, 'Unde aliquid inventore non qui. Tempora voluptas explicabo impedit libero sed odio sint. Excepturi expedita eius temporibus dolorem.', 1, 1, '2016-12-11 20:24:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 81, 40, 'Beatae sunt quidem praesentium impedit aut pariatur repudiandae. Temporibus iusto numquam cum quia. Repellendus cumque tempore suscipit debitis sit iure aut. Modi ullam quia et et.', 0, 0, '2019-07-01 14:55:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 5, 18, 'Dolores enim voluptatibus incidunt. Ut ut facere libero praesentium omnis. Odio dolores iusto corrupti aspernatur error. Dolore earum tempora maxime est.', 1, 0, '2019-08-29 05:50:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 68, 56, 'Minus ea quia eos quos voluptas suscipit. Dolores quam quia iste sunt id ratione. Ut non sunt quia qui ipsam cumque magni et. Necessitatibus sed accusantium consequatur sit eos corrupti perspiciatis ea.', 0, 1, '2013-10-04 07:50:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 52, 9, 'Suscipit magni minima eius qui quibusdam sunt inventore. Iusto expedita dolorem impedit voluptas et commodi. Inventore mollitia ex deleniti illo et iusto id.', 1, 0, '2011-10-21 11:00:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 21, 10, 'Sint error sed consequatur aut sed qui. Sed eos quas quod corporis reprehenderit dolores amet. Vel commodi possimus quisquam rerum reprehenderit.', 0, 0, '2015-04-30 03:23:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 11, 58, 'Est fugiat quod sit quos laboriosam. Aut odio in sed consequatur tempore nulla. Aut voluptate nemo quam perferendis qui quam laudantium. Rerum in minima doloribus.', 1, 1, '2017-08-16 21:13:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 82, 39, 'Sequi sit minus consequatur vero. Commodi officiis voluptatem dolor occaecati ipsam aliquid praesentium. Ratione libero nihil molestias est aut laborum. Rerum vitae sit incidunt sint.', 0, 0, '2018-10-06 00:41:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 59, 33, 'Beatae fuga minus molestias aut. Blanditiis dolor sint ea quo molestiae. Perferendis ut ut maxime suscipit dolorem velit quam.', 0, 0, '2010-06-14 03:06:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 22, 22, 'Consequatur mollitia cumque voluptas ea quidem. Quia dignissimos deserunt cupiditate perferendis tempore non impedit. Rerum et illum assumenda et.', 0, 1, '2018-08-29 03:48:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 96, 88, 'Ratione aspernatur dignissimos eveniet non quas enim provident. Sed qui enim velit eaque ea. Placeat possimus porro tempora magnam possimus ipsam. Eos consequatur soluta non inventore qui cum et.', 0, 0, '2018-11-24 20:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 76, 68, 'Eum temporibus dolorem velit in velit amet itaque. Dolor quia dolore maiores praesentium neque illo alias. Aut exercitationem similique assumenda et. Qui in incidunt ex reiciendis voluptate.', 0, 1, '2014-11-27 17:25:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 59, 91, 'Aut et sit velit fugiat. Nihil illo quidem occaecati officia ut odit. Aspernatur maiores inventore ea. Hic autem omnis asperiores sint ipsa modi quia. Ut laudantium quisquam error inventore aut mollitia.', 1, 0, '2012-08-12 17:39:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 42, 47, 'Atque illo nobis veniam quia hic. Et ab ipsam veniam rem ut et nesciunt. Laboriosam enim quia incidunt fugiat itaque quo magni voluptate. Incidunt quasi omnis ab.', 1, 0, '2015-08-09 07:53:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 18, 72, 'Vel laborum iusto aut. Vero sunt perspiciatis asperiores aut dolorum voluptatem consequuntur debitis. Occaecati ex placeat quo fugiat alias soluta. Error sunt fuga quos.', 1, 1, '2016-06-30 21:12:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 58, 17, 'Aut voluptatem quia inventore animi autem ratione quas. Soluta magni vero saepe quis. Sit architecto exercitationem qui est vel eius.', 0, 1, '2019-01-05 22:39:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 59, 39, 'Est non sint voluptas dolores quae. Voluptas velit temporibus vel occaecati. Impedit necessitatibus neque consequatur nihil sequi. Soluta nesciunt maxime quidem qui saepe.', 1, 0, '2013-10-05 17:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 57, 64, 'Quod facere ipsa nulla modi. A dolores recusandae dolor non tempore ipsum. Eligendi molestias occaecati fuga earum.', 1, 0, '2017-01-22 04:22:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 56, 25, 'Accusamus ut qui enim magnam et. Aut pariatur dolor iusto et harum voluptatem maiores. Consequatur quasi impedit atque.', 1, 1, '2011-11-12 03:33:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 19, 7, 'Dignissimos amet et fugit saepe recusandae. Quia quia odit rerum sequi. Accusamus quaerat maxime et neque. Vitae numquam dolor distinctio fugit et. Eos earum sint consequuntur labore molestias.', 1, 0, '2015-05-02 09:47:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 34, 39, 'Est molestiae necessitatibus expedita ut neque. Minus est eum qui similique laboriosam velit dolorum. Qui voluptatum earum dolores. Nemo quas labore occaecati voluptatem molestiae eligendi est.', 0, 0, '2011-07-27 08:06:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 17, 44, 'Vero dicta et aut et nulla unde necessitatibus alias. Et quidem qui perferendis neque quos. Omnis eaque modi nesciunt tenetur sunt. Illum earum culpa in officia ipsa eum excepturi. Aliquam vel id ut eveniet.', 0, 0, '2015-12-23 18:55:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 97, 99, 'Debitis accusamus maiores modi molestiae voluptatem animi magnam. Non explicabo dignissimos incidunt repudiandae. Temporibus nobis omnis aut et voluptatibus. Sunt repudiandae eos ratione consequatur quisquam.', 0, 0, '2011-02-03 15:15:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 82, 55, 'Repudiandae quia ad et voluptatibus nobis porro. Non natus pariatur voluptatem maiores perferendis repudiandae. Qui voluptatem nisi doloribus ut cupiditate enim. Et autem odit mollitia sed saepe.', 0, 0, '2011-03-11 13:04:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 32, 3, 'Possimus officia deleniti autem dolorem nesciunt est. Ut asperiores debitis est nesciunt rem. Voluptates soluta natus magni reprehenderit et.', 1, 1, '2019-11-18 23:35:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 77, 27, 'Qui est illum voluptatem beatae non blanditiis. Rerum nisi ipsa qui.', 1, 0, '2017-10-21 10:01:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 91, 52, 'Asperiores qui consequatur ipsum magnam debitis quas. Eum animi iste rerum ab cupiditate explicabo aut. Exercitationem sapiente qui est commodi sint.', 1, 1, '2014-07-18 04:08:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 95, 49, 'Necessitatibus tenetur quam id quia maxime nisi. Ducimus est quo iste quia voluptates modi unde. Cum quia quidem soluta error qui.', 1, 1, '2015-12-07 20:54:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 42, 37, 'Qui et nihil ut deserunt possimus. Ex blanditiis fugit quaerat nam mollitia quia ea quas.', 0, 1, '2013-10-21 19:23:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 95, 60, 'Non est repudiandae rem rem libero culpa. Quis rerum molestiae eaque doloremque quis nisi. Placeat et repellendus quaerat ut sit. Sed suscipit voluptas ullam voluptates id architecto ut.', 1, 1, '2016-08-17 18:41:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 9, 53, 'Cum et et qui quam sapiente quaerat similique. Esse saepe et voluptatum sint non recusandae architecto. Aliquid natus quisquam iusto tempore. Deserunt et porro iusto nisi. Cupiditate architecto omnis est ipsa vero vel quae.', 1, 1, '2017-03-28 19:44:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 77, 67, 'Sunt ad voluptatem asperiores velit. Fugit nihil alias illo corporis aperiam omnis quae. Dicta odio ullam aut nobis.', 0, 0, '2011-04-30 10:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 91, 34, 'Ut ut non non occaecati. Eum voluptas eveniet voluptatem autem sed velit. Voluptatem quis non est nihil quia optio. Ut quia similique cupiditate laborum tempora quaerat.', 1, 0, '2018-07-11 22:25:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 31, 46, 'Quis dolores facere et architecto eius doloremque quasi. Explicabo ut et suscipit blanditiis aliquid. Nemo quos distinctio nostrum impedit aspernatur quia.', 1, 0, '2013-10-08 04:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 58, 49, 'Quaerat cum ratione molestias veritatis deleniti eius. Consectetur odio occaecati ea et ut alias. Ad sint magni quia consequatur eligendi.', 1, 1, '2017-06-29 22:33:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 52, 91, 'Ea facere ut consequatur ipsum corrupti autem cumque. Similique dolor ut quam omnis excepturi facere iste.', 0, 0, '2013-12-01 06:18:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 88, 69, 'Veniam sunt expedita optio qui sunt praesentium omnis voluptatem. Dolores et sed modi cumque aspernatur ut. Sequi autem quis hic nulla architecto nihil optio doloremque.', 1, 0, '2012-09-04 17:21:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 35, 84, 'Sit tempore nisi quaerat non itaque. Quas voluptates dolorem facere voluptatem. Molestias sed voluptatem odio esse deserunt aut. Asperiores in delectus accusantium aspernatur praesentium sed blanditiis. Voluptates repellendus omnis provident inventore laudantium maiores quia.', 0, 1, '2011-12-09 22:19:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 67, 17, 'Sit et totam ad maxime accusantium explicabo corporis exercitationem. Et expedita et quas et id quam minima. Ex omnis odio aut velit.', 0, 0, '2018-12-10 21:32:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 39, 98, 'Sed inventore sed commodi recusandae ducimus culpa. Voluptates enim quisquam ut ullam nostrum. Pariatur est ut voluptatem dolore ducimus sequi praesentium. Ut consectetur minus tempora in laborum libero.', 1, 0, '2018-12-19 06:09:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 20, 16, 'Ut quia non corporis et nulla. Ab ipsam sint nam illo. Sequi voluptate culpa fugit odit nesciunt culpa. Facilis excepturi deleniti amet dignissimos nulla sit perferendis eos.', 1, 0, '2017-03-07 02:56:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 24, 10, 'Enim sunt deleniti ut soluta aliquid explicabo sapiente. Consequatur voluptas molestias est temporibus. Pariatur nisi dolor iste aut eum quia incidunt.', 1, 0, '2013-02-09 18:47:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 68, 19, 'Et sequi nisi doloribus voluptatem qui id. Eos sit distinctio ad rem nisi sed. Non eum consequatur qui.', 0, 0, '2014-06-29 01:14:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 59, 10, 'Eligendi incidunt asperiores suscipit. Illum eum autem repudiandae rem. Fugit asperiores adipisci nam nemo. Rerum molestiae voluptatem sunt asperiores.', 0, 0, '2017-05-12 10:04:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 55, 54, 'Quas nemo ad aperiam illo ipsam modi. Et voluptatem inventore impedit enim. Tenetur dicta assumenda tenetur.', 0, 0, '2011-04-11 11:52:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 70, 63, 'Laboriosam ipsa quas numquam amet aliquam qui. Voluptatem ut tempora vel sint molestias facilis modi. Voluptatibus voluptates incidunt expedita voluptas qui nesciunt. Minima quis reprehenderit natus voluptatem eveniet est.', 1, 0, '2014-01-10 19:39:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 6, 47, 'Voluptatem fuga sit sunt autem est. Et cumque modi nisi eaque ad similique. Dolore blanditiis corrupti fugiat quia sint. Molestiae eos aspernatur corporis rem.', 0, 0, '2019-04-02 23:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 30, 96, 'Sed ut qui harum distinctio. Est consequuntur sit ratione. Quis dolorum ipsum maxime delectus distinctio quis. Ipsam animi est aliquam id assumenda voluptates.', 0, 1, '2010-05-18 06:19:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 80, 60, 'Et aliquam nobis molestiae cumque et aut dolor. Et qui cum aut et ut praesentium sit. Veritatis quisquam voluptate eos.', 0, 1, '2015-08-20 04:33:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 41, 38, 'Quo veritatis saepe ex aut qui. Sit debitis ut magni veniam repellendus dicta nisi. Velit ut vel id et. Ut autem dolore consequatur. Molestiae sed commodi inventore.', 1, 1, '2013-11-02 21:39:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 8, 93, 'Blanditiis sint quo ab asperiores ullam ea quo. Velit tempora dolor facilis quas.', 1, 0, '2018-02-08 18:06:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 29, 95, 'Accusamus consequatur quos et modi temporibus. Est voluptatem voluptas et fugiat veniam doloribus. Est facere et quo error dolores eos. Amet vero facilis facilis minima voluptatem recusandae.', 0, 1, '2015-10-26 06:53:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 61, 64, 'Facilis et vel aut nam. Fugiat esse eos corporis necessitatibus qui. Incidunt explicabo illum doloribus. Quam amet quaerat perferendis possimus quasi molestiae ut. In totam ea debitis molestias temporibus.', 1, 0, '2016-12-19 17:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 79, 28, 'Dolor deleniti pariatur dolorem aut illo harum. Nihil vel hic dignissimos ullam et ea nam. Quia quidem recusandae culpa enim. Blanditiis corrupti voluptatem quisquam voluptates fugit sed at.', 1, 0, '2017-01-24 14:31:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 80, 17, 'Similique voluptas voluptas voluptas eum laudantium accusamus aut et. Voluptatem repudiandae rerum exercitationem iste quibusdam tenetur velit fuga. Ea est cum et repellat et. Et odio provident delectus deleniti aut.', 0, 0, '2012-11-14 00:34:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 26, 99, 'Fugit eligendi autem est rerum adipisci quo aut. Possimus ut id sit autem. Numquam quia error sunt.', 1, 0, '2017-10-17 04:52:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 33, 50, 'Mollitia molestiae laboriosam quasi rerum laudantium. Deleniti rerum dolores sit qui veritatis. In placeat nam voluptatem veniam distinctio voluptas aut.', 1, 0, '2017-12-28 19:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 9, 1, 'Quidem quia ut iure porro repellat deserunt est. Dolor placeat cum dolores voluptatibus nemo est rerum. Aut est consequatur veniam eum. Reprehenderit optio voluptas est mollitia cum reiciendis id. Ex cumque beatae animi.', 1, 1, '2012-01-22 02:20:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 68, 67, 'Ad id eius rerum voluptas magni. Quidem voluptas iusto suscipit ut error esse. Aut cupiditate dolore et qui facere nemo commodi cupiditate.', 1, 0, '2011-06-20 04:06:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 10, 22, 'Quam architecto sapiente praesentium placeat nihil dicta. Ipsa autem aliquid nulla exercitationem quam aut. Eligendi eveniet quidem amet alias culpa aperiam. Voluptatem eaque enim dolorem vel voluptatem. Non ullam quo officia.', 0, 0, '2013-10-28 11:40:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 21, 80, 'Sed sint nobis et ut dolore. Iste voluptatem sit neque qui cumque sed vitae. Aliquam eos est inventore neque ipsum minima.', 1, 0, '2012-07-08 20:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 84, 26, 'Fugit laudantium nobis debitis quia blanditiis voluptatem repellat perspiciatis. Vitae veniam delectus qui. Fugiat est natus quod dolorum at.', 1, 0, '2014-04-05 08:03:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 26, 13, 'In non enim excepturi aut quisquam voluptas. A voluptates iure pariatur quo enim. Dolor dolorem et aperiam aliquid alias. Sed est error nulla ipsum et veniam.', 1, 0, '2010-11-02 11:45:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 21, 6, 'Id nulla incidunt ut id. Officiis voluptatem odio itaque et aliquid incidunt ullam aut. Culpa in corporis et cupiditate reiciendis iusto aspernatur. Et est quis nisi et accusantium aut repudiandae.', 0, 0, '2020-03-31 13:29:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 72, 62, 'Et ad sunt in sint cum ut. Ut suscipit temporibus quo vero autem. Quidem numquam dolorem consequatur praesentium voluptates aut deleniti. Nihil molestiae consequatur earum necessitatibus totam.', 1, 0, '2010-05-30 23:00:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `community_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 43, 80, 'Id ut omnis quam sunt esse quod. Quis architecto laboriosam consectetur necessitatibus. Enim sint molestiae et ullam placeat. Cumque cumque saepe eos a.', 1, 0, '2016-12-21 01:09:07');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (1, 'f', '1996-09-10', 'Port Keagan', 'Netherlands', 64);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (2, 'f', '1997-10-31', 'North Fabiolaburgh', 'Netherlands', 61);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (3, 'm', '1982-10-13', 'South Cory', 'Romania', 72);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (4, 'm', '1972-01-11', 'West Brisashire', 'Bahrain', 30);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (5, 'f', '1994-12-20', 'South Kenyonberg', 'Djibouti', 13);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (6, 'm', '2002-05-22', 'Kuhicside', 'Tajikistan', 87);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (7, 'f', '2017-09-29', 'West Haylieborough', 'Korea', 46);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (8, 'm', '2020-02-16', 'Reingerview', 'Grenada', 94);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (9, 'f', '1974-11-14', 'Lukaschester', 'Guadeloupe', 18);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (10, 'f', '1984-05-24', 'South Aniyah', 'Slovakia (Slovak Republic)', 96);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (11, 'f', '2001-02-28', 'New Katelyn', 'Burkina Faso', 86);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (12, 'm', '1978-08-21', 'Westland', 'Portugal', 3);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (13, 'm', '1992-09-08', 'East Kasandra', 'Mongolia', 8);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (14, 'f', '1977-07-04', 'South Scottown', 'Malaysia', 63);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (15, 'm', '2002-12-27', 'North Mertie', 'Norfolk Island', 12);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (16, 'f', '1995-04-28', 'West Silas', 'Samoa', 36);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (17, 'f', '1979-03-13', 'North Mathildeshire', 'Belarus', 54);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (18, 'f', '1988-08-10', 'Labadiebury', 'New Zealand', 83);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (19, 'f', '2005-09-05', 'Thurmantown', 'Tuvalu', 5);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (20, 'f', '1976-03-10', 'Fredland', 'Marshall Islands', 14);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (21, 'm', '2009-04-02', 'Ferryside', 'Montserrat', 37);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (22, 'f', '1983-03-17', 'Orenchester', 'Saint Pierre and Miquelon', 20);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (23, 'f', '2009-03-06', 'North Daphnefort', 'Oman', 87);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (24, 'm', '1990-06-26', 'Schultzmouth', 'Tokelau', 40);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (25, 'f', '1992-03-23', 'East Mathiasside', 'Qatar', 71);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (26, 'm', '2018-05-19', 'Cormierburgh', 'Afghanistan', 40);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (27, 'f', '1995-07-07', 'Corwinside', 'United Arab Emirates', 41);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (28, 'm', '1972-01-05', 'West Adrienne', 'Turkey', 68);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (29, 'f', '2019-02-11', 'Port Javier', 'China', 93);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (30, 'f', '2003-08-17', 'East Garfieldshire', 'Mauritius', 68);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (31, 'f', '1987-08-02', 'Curthaven', 'Comoros', 5);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (32, 'm', '1970-10-03', 'Westberg', 'Eritrea', 11);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (33, 'f', '1974-09-24', 'Ricechester', 'France', 4);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (34, 'f', '1983-01-19', 'Sipesmouth', 'Gabon', 22);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (35, 'm', '2013-07-16', 'West Darius', 'Tunisia', 95);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (36, 'f', '1991-04-18', 'Lake Tatumside', 'Honduras', 93);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (37, 'f', '1991-05-25', 'Lake Aydenshire', 'Djibouti', 22);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (38, 'm', '2002-08-12', 'Kenyaberg', 'Saint Martin', 85);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (39, 'm', '2017-08-12', 'Roweberg', 'Cape Verde', 97);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (40, 'f', '1991-05-06', 'Port Alberto', 'Lao People\'s Democratic Republic', 42);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (41, 'm', '2010-04-07', 'New Dell', 'Italy', 59);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (42, 'f', '1993-02-19', 'New Hassan', 'Mauritania', 91);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (43, 'm', '2010-02-21', 'Ferrystad', 'Cuba', 89);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (44, 'm', '1971-11-14', 'Jaronside', 'Japan', 74);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (45, 'f', '2012-11-12', 'West Danykaborough', 'Bosnia and Herzegovina', 4);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (46, 'm', '1989-02-04', 'West Jayda', 'Mauritania', 65);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (47, 'f', '1996-02-09', 'Maribelberg', 'Argentina', 70);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (48, 'm', '1981-02-15', 'New Anya', 'Gambia', 28);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (49, 'f', '1975-02-17', 'North Creola', 'Ukraine', 62);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (50, 'm', '2002-06-10', 'South Eugenia', 'Burundi', 62);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (51, 'm', '1995-09-08', 'South Gladyce', 'Micronesia', 66);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (52, 'm', '1973-11-05', 'Zechariahfurt', 'Djibouti', 10);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (53, 'm', '1988-12-15', 'Considinestad', 'Lithuania', 96);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (54, 'f', '1984-12-05', 'New Frederic', 'Saint Pierre and Miquelon', 58);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (55, 'f', '1971-11-04', 'New Cletusmouth', 'Anguilla', 20);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (56, 'f', '2017-12-27', 'Jeremiefurt', 'Pitcairn Islands', 46);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (57, 'f', '2004-08-19', 'East Fayeberg', 'Turks and Caicos Islands', 87);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (58, 'm', '1997-07-11', 'New Jeramyberg', 'Afghanistan', 72);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (59, 'f', '1993-05-08', 'Lake Naomi', 'Morocco', 89);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (60, 'm', '2003-06-10', 'Janickhaven', 'Macedonia', 99);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (61, 'm', '1971-03-15', 'Lake Erwinchester', 'Eritrea', 39);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (62, 'f', '1984-07-30', 'Port Benton', 'Saint Barthelemy', 68);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (63, 'm', '1999-04-24', 'North Adolfo', 'Guadeloupe', 17);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (64, 'm', '2017-07-08', 'Cindyberg', 'Bhutan', 2);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (65, 'm', '2007-04-14', 'East Mittie', 'Brazil', 56);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (66, 'm', '1986-11-02', 'Christhaven', 'Vietnam', 94);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (67, 'f', '1989-05-14', 'Port Dusty', 'Cocos (Keeling) Islands', 9);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (68, 'f', '1984-08-04', 'Lake Dale', 'Singapore', 99);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (69, 'f', '2005-08-28', 'South Mekhi', 'Ukraine', 79);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (70, 'f', '2010-10-01', 'Baileytown', 'Eritrea', 15);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (71, 'm', '2010-06-27', 'Powlowskihaven', 'Vietnam', 91);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (72, 'm', '2003-04-30', 'Brantmouth', 'Dominican Republic', 98);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (73, 'f', '1994-04-10', 'Harbertown', 'Afghanistan', 67);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (74, 'f', '2019-02-16', 'North Parkerstad', 'Guyana', 65);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (75, 'm', '1970-03-09', 'Annamaetown', 'Albania', 88);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (76, 'm', '1983-07-11', 'Mckenzieside', 'Greenland', 18);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (77, 'f', '2013-03-22', 'East Bretfort', 'Greece', 16);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (78, 'f', '1972-06-01', 'Port Felicia', 'Wallis and Futuna', 28);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (79, 'f', '1987-08-19', 'Wizatown', 'Croatia', 30);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (80, 'f', '1996-02-08', 'Port Maxietown', 'Isle of Man', 56);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (81, 'm', '1971-04-12', 'Aliyatown', 'Maldives', 16);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (82, 'f', '2006-03-01', 'Lake Kennith', 'Switzerland', 11);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (83, 'm', '1987-09-15', 'West Desireemouth', 'Lesotho', 97);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (84, 'm', '1994-11-02', 'Betsyshire', 'Ecuador', 20);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (85, 'f', '2005-01-13', 'Cruickshankview', 'Switzerland', 83);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (86, 'm', '2002-06-16', 'Terrymouth', 'Germany', 13);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (87, 'm', '1988-12-29', 'Vivienmouth', 'Guatemala', 72);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (88, 'f', '2014-11-13', 'Shanonborough', 'Eritrea', 12);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (89, 'm', '2019-03-07', 'North Connie', 'Papua New Guinea', 43);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (90, 'm', '1980-06-09', 'North Estelleview', 'Saint Kitts and Nevis', 56);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (91, 'f', '1999-05-04', 'Marcellahaven', 'Bouvet Island (Bouvetoya)', 69);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (92, 'f', '2020-02-16', 'East Augusta', 'Paraguay', 58);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (93, 'm', '1998-11-14', 'Port Wilbertown', 'American Samoa', 95);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (94, 'm', '2008-10-14', 'Lake Wallace', 'Liberia', 41);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (95, 'f', '2018-11-04', 'New Santina', 'Anguilla', 52);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (96, 'f', '1995-08-26', 'West Kelsiechester', 'Serbia', 49);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (97, 'f', '1971-01-20', 'Port Angelatown', 'Falkland Islands (Malvinas)', 56);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (98, 'f', '2006-07-20', 'Jeromyhaven', 'Mayotte', 12);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (99, 'f', '2007-03-12', 'Port Cullen', 'Cayman Islands', 43);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`) VALUES (100, 'm', '1991-09-21', 'North Desiree', 'Bhutan', 67);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Clarissa', 'Walker', 'ilehner@example.org', '06503886398', '2016-10-17 10:17:18', '2014-02-08 08:23:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Dahlia', 'Sanford', 'fpaucek@example.net', '1-280-949-2823x719', '2011-09-08 20:41:02', '2016-10-17 21:03:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Orval', 'Haag', 'kutch.kendall@example.org', '1-736-197-5987x2726', '2019-12-10 07:27:32', '2013-11-19 04:31:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Sheila', 'Smith', 'gbosco@example.org', '(329)320-5338x7106', '2013-03-27 00:40:05', '2012-01-27 00:23:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Van', 'Waters', 'alfred.orn@example.net', '1-978-750-9609', '2012-11-25 10:06:35', '2018-04-28 18:02:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Stuart', 'Barrows', 'kobe40@example.net', '(257)494-1363', '2013-03-15 19:42:36', '2013-11-12 04:18:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Kelli', 'Herzog', 'asmitham@example.net', '505-577-1036', '2018-07-06 18:54:17', '2018-12-03 17:24:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Haylie', 'Bins', 'vernie.durgan@example.org', '980.620.6497x8043', '2017-04-26 05:04:10', '2016-06-13 01:35:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Stevie', 'Schamberger', 'mona24@example.net', '04565750039', '2019-07-13 14:13:08', '2015-08-07 01:35:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Judy', 'Wintheiser', 'freida63@example.org', '1-351-820-8579', '2013-01-01 19:36:07', '2010-10-03 12:32:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Cullen', 'Harvey', 'murazik.lyla@example.net', '440-708-8602', '2019-03-01 07:02:53', '2019-12-04 13:29:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Kay', 'O\'Conner', 'mellie.white@example.net', '(886)008-7676', '2017-10-30 12:07:54', '2012-05-13 00:40:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Pink', 'Haley', 'stroman.abelardo@example.org', '(863)573-5160x0832', '2017-10-03 13:29:12', '2016-08-23 21:30:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Wava', 'Greenfelder', 'waldo09@example.net', '1-234-479-0310', '2018-08-10 11:39:52', '2020-03-19 17:53:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Jammie', 'Toy', 'koelpin.hope@example.org', '857-352-6596x9029', '2012-05-18 16:41:20', '2015-12-14 02:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Madelynn', 'Veum', 'sbashirian@example.net', '393-033-2755x0829', '2012-08-04 15:19:10', '2013-08-12 06:33:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Tierra', 'Pfannerstill', 'spinka.cordie@example.org', '(201)279-8214x241', '2018-09-25 16:22:49', '2013-03-24 10:27:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Weston', 'Jaskolski', 'addie.bednar@example.net', '+71(3)5447262721', '2015-12-22 02:46:12', '2012-09-07 01:01:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Chauncey', 'Hamill', 'marcus29@example.com', '1-402-656-7623x769', '2012-11-04 23:59:07', '2011-10-06 11:48:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Chad', 'Quitzon', 'dedrick.schultz@example.net', '1-050-264-2800', '2013-07-06 08:15:35', '2012-09-14 16:13:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Marcus', 'Dibbert', 'gorczany.charlene@example.net', '(325)721-2158x0034', '2017-10-31 07:58:55', '2018-02-08 02:09:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Myron', 'Nikolaus', 'liliane84@example.com', '886.783.6392x9917', '2014-11-11 10:47:25', '2010-06-10 09:13:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Justine', 'Turner', 'vboyle@example.net', '040.535.1741x46698', '2019-02-28 09:09:58', '2013-07-16 02:11:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Felicita', 'Beahan', 'marcella.renner@example.com', '346.024.0521', '2016-02-14 12:54:33', '2018-12-22 00:55:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Tomas', 'Gerhold', 'herta.friesen@example.com', '947.396.1058', '2015-12-16 02:58:41', '2012-09-09 15:33:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Brannon', 'Gorczany', 'alena.ankunding@example.org', '877-824-2001x94646', '2015-03-07 04:16:58', '2019-07-02 06:05:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Baby', 'Stoltenberg', 'miguel.bauch@example.net', '331.130.7342x24686', '2015-04-13 17:45:32', '2020-01-10 23:56:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Estel', 'Rogahn', 'ressie68@example.net', '(871)937-6721x9136', '2016-03-11 08:31:26', '2013-12-03 08:20:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Julian', 'Lowe', 'casper.alysha@example.com', '1-463-313-5757', '2014-12-16 21:11:24', '2012-05-12 13:28:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Cathryn', 'Hudson', 'tevin.feest@example.net', '420-340-7178', '2015-12-06 21:45:34', '2010-09-30 02:52:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Pat', 'Parisian', 'taurean.konopelski@example.org', '251.603.1749x617', '2015-09-29 01:02:32', '2012-07-10 04:45:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Guillermo', 'Mueller', 'rosamond91@example.net', '(694)890-5290', '2014-06-06 09:47:33', '2017-04-10 12:53:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Hassan', 'Klocko', 'kane.hand@example.com', '1-686-898-6458x09041', '2013-07-30 09:49:16', '2013-05-03 16:16:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Jacklyn', 'Huel', 'xfeil@example.com', '+54(0)5799388602', '2013-11-30 12:31:21', '2012-05-10 17:33:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Vito', 'Graham', 'precious85@example.net', '(684)042-6305x064', '2011-07-31 21:35:29', '2011-02-02 21:29:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Mackenzie', 'Funk', 'pgoyette@example.com', '(439)301-5463x075', '2018-06-13 01:25:52', '2018-02-26 03:54:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Caterina', 'Goyette', 'sincere.schmidt@example.org', '525.608.6437x87980', '2016-04-17 16:21:32', '2011-07-23 17:12:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Carmella', 'Harvey', 'gsporer@example.org', '06085138786', '2013-08-31 18:59:49', '2011-07-02 07:53:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Bianka', 'Wilderman', 'buster12@example.org', '692.595.2099x8368', '2016-10-26 02:37:29', '2015-12-20 00:59:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Earnest', 'Bins', 'egleason@example.org', '+77(6)6961981825', '2016-10-24 04:16:37', '2013-01-15 07:19:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Kathlyn', 'Bode', 'ngorczany@example.com', '(854)663-7919', '2019-03-27 06:22:59', '2014-04-28 10:09:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kayleigh', 'Senger', 'lind.joanny@example.net', '+90(4)4716940267', '2017-11-30 07:33:07', '2016-06-29 23:09:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Caesar', 'Rogahn', 'meta19@example.net', '743-844-2215x98499', '2018-11-12 02:54:21', '2012-12-14 20:19:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Julia', 'Schaden', 'verna.lueilwitz@example.net', '(671)610-6695', '2017-08-25 05:43:00', '2015-09-19 23:44:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Obie', 'Satterfield', 'friesen.neal@example.net', '(142)653-4636x12486', '2019-07-11 15:00:56', '2013-09-13 04:54:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Greyson', 'Kuhic', 'maximilian85@example.org', '(616)945-7686x1684', '2020-02-24 18:16:13', '2014-01-30 13:48:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Maya', 'Metz', 'langosh.fritz@example.net', '899.964.0268', '2010-08-12 10:46:31', '2019-10-22 18:37:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Evalyn', 'Ruecker', 'qbergstrom@example.com', '1-879-948-8887', '2018-04-02 22:09:01', '2018-02-13 10:06:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Eulalia', 'Donnelly', 'wconroy@example.com', '644.814.1609x31629', '2016-01-16 07:55:50', '2012-01-10 09:25:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Amelie', 'Corkery', 'sanford.chaz@example.org', '144.940.0874x660', '2016-09-26 07:26:03', '2017-02-13 09:12:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Colt', 'Beatty', 'willms.tyrique@example.org', '670.236.9413', '2018-05-14 17:21:11', '2012-04-04 19:00:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Kian', 'Bradtke', 'velva.fay@example.net', '+83(6)4466525489', '2018-11-09 19:27:35', '2012-08-09 07:33:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Everette', 'Carter', 'mreilly@example.com', '(886)239-5825', '2010-09-03 03:18:29', '2017-06-11 17:17:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Casandra', 'Smitham', 'sporer.abner@example.org', '1-945-339-7979', '2014-05-26 06:36:42', '2019-02-27 00:44:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Tomas', 'Kessler', 'willy.ebert@example.com', '420.648.3188x42424', '2017-11-19 16:41:20', '2012-09-20 08:12:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Scarlett', 'Nader', 'elza.hills@example.org', '096-581-7554x26478', '2020-01-12 13:13:27', '2014-11-24 23:57:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Alize', 'Graham', 'zhaag@example.org', '(061)572-7728x1191', '2014-03-11 15:28:15', '2014-04-21 07:30:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Brooklyn', 'Hudson', 'terrell.vonrueden@example.org', '+57(0)7253284533', '2012-12-18 07:08:51', '2011-03-05 15:08:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Agnes', 'Renner', 'meta11@example.com', '1-971-214-2464', '2011-01-09 18:57:36', '2011-02-07 03:34:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Wilhelmine', 'Maggio', 'jadon91@example.org', '445-959-9866x303', '2015-01-16 03:51:05', '2012-01-16 21:54:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Kendall', 'Mueller', 'aernser@example.net', '641.966.0889', '2013-07-30 18:38:15', '2018-01-09 01:44:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Jarod', 'Keeling', 'owelch@example.net', '195-324-2406x900', '2010-09-23 13:37:07', '2014-03-12 05:18:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Pearlie', 'Gutmann', 'lea.lowe@example.org', '185-949-2217', '2019-02-19 09:26:19', '2013-09-12 17:08:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Dulce', 'Gutkowski', 'adolfo02@example.com', '(261)308-8149x238', '2013-08-14 10:40:39', '2012-03-04 19:09:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Loren', 'Murphy', 'lemke.margie@example.com', '1-164-770-6408x97338', '2011-08-13 15:53:41', '2014-10-12 22:26:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Griffin', 'Mitchell', 'darryl11@example.com', '306-868-9546', '2012-08-30 15:56:01', '2016-09-01 22:29:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jacynthe', 'Marvin', 'kunze.irma@example.org', '+53(0)5206927153', '2012-04-08 15:20:41', '2013-11-09 13:42:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kayli', 'Zulauf', 'clotilde42@example.net', '(402)080-9393x8984', '2016-10-03 15:21:02', '2013-01-12 10:33:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Janie', 'Lang', 'alexandre83@example.com', '03822146032', '2016-06-26 06:46:37', '2012-08-24 16:32:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Estevan', 'Green', 'laisha.heller@example.net', '255-282-6745', '2019-12-10 13:36:23', '2013-03-03 10:56:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Viviane', 'Haag', 'batz.hipolito@example.com', '152-286-8933', '2016-10-06 16:14:54', '2018-05-12 01:20:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Marion', 'Jacobi', 'pjacobson@example.org', '1-425-333-7802', '2013-01-23 16:18:36', '2015-09-20 13:58:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Geoffrey', 'Luettgen', 'dewitt14@example.com', '1-351-733-1929x5912', '2017-11-12 21:32:19', '2014-12-07 12:49:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Ethel', 'Rutherford', 'heidenreich.bella@example.org', '186.359.9184x43274', '2010-09-26 20:06:25', '2013-10-14 23:32:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Ted', 'Hoppe', 'amely33@example.com', '1-187-584-4695', '2015-06-22 18:10:31', '2015-07-06 19:39:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Amie', 'Willms', 'helene40@example.net', '626-131-7510x906', '2019-04-07 17:31:41', '2012-05-10 21:04:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Johnathon', 'Cummings', 'sophia28@example.net', '07373702687', '2016-11-23 02:00:50', '2010-06-12 04:21:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Suzanne', 'Leffler', 'rkerluke@example.org', '045-764-5343x77264', '2010-05-25 16:43:28', '2015-09-14 11:42:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Evie', 'Homenick', 'katheryn85@example.com', '372-715-9929x34316', '2015-04-01 10:48:52', '2011-08-09 11:01:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Kasandra', 'Beer', 'fbraun@example.net', '(217)684-5031x12474', '2015-11-14 17:29:34', '2017-08-09 21:38:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Michele', 'Lemke', 'wcrist@example.net', '1-340-476-9145x27530', '2012-08-09 03:16:48', '2018-09-20 01:43:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Curtis', 'O\'Kon', 'samantha.wehner@example.net', '552.812.2350x4988', '2010-12-05 01:23:25', '2017-09-24 19:09:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Chloe', 'Wintheiser', 'sean.homenick@example.com', '1-551-321-2739', '2015-12-06 20:03:17', '2018-09-23 11:25:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Corine', 'Bergstrom', 'conroy.zack@example.org', '(420)249-2227', '2020-02-20 03:17:39', '2014-06-26 07:07:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Alexandria', 'Padberg', 'pdach@example.org', '+05(5)0559074206', '2016-10-16 23:38:49', '2011-07-30 12:19:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Steve', 'Fay', 'o\'reilly.bernice@example.net', '719-308-3541', '2014-07-31 19:32:40', '2013-05-22 08:10:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Zaria', 'Wilkinson', 'tyra25@example.com', '1-068-054-0350x48455', '2017-10-14 03:06:27', '2015-10-27 16:50:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Jane', 'Reinger', 'asa56@example.net', '746.618.5428', '2010-12-15 21:21:05', '2017-01-15 13:57:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Art', 'Sporer', 'della.romaguera@example.net', '05936368299', '2011-04-01 21:09:58', '2016-12-16 02:42:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Victor', 'Kulas', 'qabbott@example.org', '(276)290-3790', '2012-08-12 19:03:35', '2012-05-06 02:43:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lea', 'Bailey', 'wanda12@example.org', '110-228-7279x7069', '2013-09-22 08:47:59', '2014-06-25 18:49:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Franco', 'Collier', 'damaris11@example.org', '(427)967-1760x0415', '2018-10-03 02:55:00', '2010-12-03 10:09:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Dorcas', 'Goyette', 'btorphy@example.net', '820-820-3598x934', '2018-06-22 02:35:11', '2012-10-21 13:04:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Chanelle', 'Lemke', 'wilhelmine.gislason@example.com', '(455)149-3362', '2011-01-25 16:57:54', '2015-07-08 15:03:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Jade', 'Beier', 'zhamill@example.net', '1-571-022-7032x220', '2012-06-05 20:03:15', '2019-11-09 21:31:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Shakira', 'Lindgren', 'randy.rath@example.net', '1-727-541-8966x317', '2018-10-19 23:56:33', '2019-05-20 12:57:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Tristin', 'Schaefer', 'xparker@example.com', '743-373-3040', '2010-11-09 13:02:04', '2014-02-06 02:20:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Barney', 'Gerlach', 'bartoletti.eunice@example.com', '1-559-246-8394', '2011-04-25 15:09:16', '2018-09-06 22:46:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Jackeline', 'Cormier', 'owen79@example.org', '973.536.1853', '2018-12-28 14:42:47', '2020-02-02 00:12:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Jose', 'Sanford', 'raphael38@example.com', '1-682-555-5913x76310', '2017-02-11 09:10:04', '2011-07-31 02:43:21');


