
DROP TABLE IF EXISTS `#__assets`;
CREATE TABLE `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=utf8;

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 980, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 571, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 572, 573, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 574, 575, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 576, 577, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 578, 579, 1, 'com_login', 'com_login', '{}'),
(13, 1, 580, 581, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 582, 583, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 584, 585, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 586, 587, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 590, 847, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 848, 855, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 856, 857, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 858, 859, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 860, 861, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 862, 863, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 864, 867, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 868, 869, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 930, 931, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 105, 134, 2, 'com_content.category.9', 'Pages', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 851, 852, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 853, 854, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 8, 137, 138, 2, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(168, 34, 106, 107, 3, 'com_content.article.67', 'What\'s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 865, 866, 2, 'com_users.category.77', 'Uncategorised', ''),
(173, 1, 932, 933, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(174, 1, 934, 935, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(176, 203, 142, 153, 3, 'com_content.category.78', 'Layouts', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(177, 176, 143, 144, 4, 'com_content.article.72', 'How to create the 3 columns layout?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 176, 145, 146, 4, 'com_content.article.73', 'How to create the 2 columns layout: Sidebar + Content?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 176, 147, 148, 4, 'com_content.article.74', 'How to create the 2 columns layout: Content + Sidebar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(180, 176, 149, 150, 4, 'com_content.article.75', 'Full width layout', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 176, 151, 152, 4, 'com_content.article.76', 'Main content', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 184, 155, 156, 4, 'com_content.article.77', 'Page break', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(184, 203, 154, 177, 3, 'com_content.category.79', 'Compatibilities', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(185, 184, 157, 158, 4, 'com_content.article.79', ' Free Joomla Multilingual Extension', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(187, 184, 159, 160, 4, 'com_content.article.81', 'Demo Articles 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(189, 184, 161, 162, 4, 'com_content.article.83', 'Demo Article 5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(190, 184, 163, 164, 4, 'com_content.article.84', 'Demo Article 6', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(191, 184, 165, 166, 4, 'com_content.article.85', 'Demo Article 7', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(192, 184, 167, 168, 4, 'com_content.article.86', 'Demo Article 8', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(193, 184, 169, 170, 4, 'com_content.article.87', 'Demo Article 9', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(194, 184, 171, 172, 4, 'com_content.article.88', 'Demo Article 10', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(195, 196, 181, 182, 4, 'com_content.article.89', 'JA Social on T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(196, 203, 178, 189, 3, 'com_content.category.80', 'T3 Framework', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(197, 196, 179, 180, 4, 'com_content.article.90', 'JA Teline IV for T3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(198, 196, 183, 184, 4, 'com_content.article.91', 'T3 Framework 2.0.2 released', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(199, 196, 185, 186, 4, 'com_content.article.92', 'Bootstrap 2.1.0 released', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(200, 196, 187, 188, 4, 'com_content.article.93', 'T3 Framework 2.0.1 release ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(201, 184, 173, 174, 4, 'com_content.article.94', 'Demo Article 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(202, 184, 175, 176, 4, 'com_content.article.95', 'Demo Article 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(203, 8, 141, 564, 2, 'com_content.category.81', 'Joomla Articles', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(204, 1, 936, 937, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(205, 1, 938, 939, 1, 'com_ajax', 'com_ajax', '{}'),
(206, 1, 940, 941, 1, 'com_postinstall', 'com_postinstall', '{}'),
(207, 18, 591, 592, 2, 'com_modules.module.114', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(208, 18, 593, 594, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(213, 18, 595, 596, 2, 'com_modules.module.96', 'T3 Masthead 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(214, 18, 597, 598, 2, 'com_modules.module.97', 'T3 Introduction', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(216, 203, 244, 263, 3, 'com_content.category.83', 'Portfolio', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(217, 203, 264, 269, 3, 'com_content.category.84', 'Corporate', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(218, 203, 270, 357, 3, 'com_content.category.85', 'Magazine', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(219, 203, 358, 359, 3, 'com_content.category.86', 'Shop', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(220, 18, 599, 600, 2, 'com_modules.module.119', 'Product intro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(221, 18, 601, 602, 2, 'com_modules.module.120', 'Fully Reponsive', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(222, 18, 603, 604, 2, 'com_modules.module.121', 'HTML5, Bootstrap and LESS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(227, 18, 605, 606, 2, 'com_modules.module.124', 'Community - Events Module', ''),
(228, 18, 607, 608, 2, 'com_modules.module.125', 'Community - Groups Module', ''),
(229, 18, 609, 610, 2, 'com_modules.module.126', 'Community - Members Module', ''),
(230, 18, 611, 612, 2, 'com_modules.module.127', 'Community - Photos Module', ''),
(231, 18, 613, 614, 2, 'com_modules.module.128', 'Community - Quick Search Module', ''),
(232, 18, 615, 616, 2, 'com_modules.module.129', 'Community - Videos Module', ''),
(233, 18, 617, 618, 2, 'com_modules.module.130', 'Community - Whos Online', ''),
(247, 18, 619, 620, 2, 'com_modules.module.39', 'Who\'s Online', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(249, 18, 621, 622, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(250, 18, 623, 624, 2, 'com_modules.module.141', '2 starter themes', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(251, 18, 625, 626, 2, 'com_modules.module.142', 'Flat design', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(252, 18, 627, 628, 2, 'com_modules.module.143', 'Megamenu and Off-canvas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(256, 18, 629, 630, 2, 'com_modules.module.147', 'Recent Blog Posts (EasyBlog)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(267, 18, 631, 632, 2, 'com_modules.module.158', 'Online Users', ''),
(268, 18, 633, 634, 2, 'com_modules.module.159', 'Recent Users', ''),
(269, 18, 635, 636, 2, 'com_modules.module.160', 'Recent Albums', ''),
(270, 18, 637, 638, 2, 'com_modules.module.161', 'Leaderboard', ''),
(271, 203, 190, 243, 3, 'com_content.category.87', 'Blog', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(272, 18, 639, 640, 2, 'com_modules.module.27', 'Archived Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(273, 308, 224, 225, 5, 'com_content.article.96', 'Responsive Joomla template bundle - JA Wall released with 3 more styles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(274, 308, 222, 223, 5, 'com_content.article.97', 'Review: Responsive Joomla template for portfolio - JA Appolio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(276, 218, 293, 308, 4, 'com_content.category.89', 'Blog ', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(277, 218, 271, 292, 4, 'com_content.category.90', 'T3 Framework and Bootstrap 3', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(278, 218, 309, 324, 4, 'com_content.category.91', 'Joomla deals', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(279, 218, 325, 340, 4, 'com_content.category.92', 'News and updates', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(280, 218, 341, 356, 4, 'com_content.category.93', 'Tutorials', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(281, 276, 294, 295, 5, 'com_content.article.98', 'Choosing your Joomla template framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(282, 276, 296, 297, 5, 'com_content.article.99', 'The best free Joomla templates in 2013', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(283, 276, 298, 299, 5, 'com_content.article.100', 'Top 10 responsive Joomla templates from JoomlArt', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(284, 276, 300, 301, 5, 'com_content.article.101', 'Responsive Joomla template bundle - JA Wall in 3 new styles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(285, 276, 302, 303, 5, 'com_content.article.102', ' Responsive Joomla template for ecommerce - JA Bookshop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(286, 276, 304, 305, 5, 'com_content.article.103', '1st Batch of Joomla 3.2 compatibility upgrade', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(287, 277, 272, 273, 5, 'com_content.article.104', 'Chossing your Joomla version: Joomla 2.5 or Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(288, 277, 274, 275, 5, 'com_content.article.105', 'Best Joomla template featuring EasyBlog', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(289, 277, 276, 277, 5, 'com_content.article.106', 'HTC One Max review: An old phone in a new body', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(290, 277, 278, 279, 5, 'com_content.article.107', 'Fingers-on: Snapkeys Q4 is a QWERTY keyboard ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(291, 278, 310, 311, 5, 'com_content.article.108', 'Shopping for last-minute tech gifts? Here\'s our one stop guide', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(292, 278, 312, 313, 5, 'com_content.article.109', 'The best photo printers you can buy today', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(293, 278, 314, 315, 5, 'com_content.article.110', 'JA Magz - Responsive Joomla magazine template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(294, 278, 316, 317, 5, 'com_content.article.111', 'Bootstrap 3.0 and the T3 Framework for Joomla template ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(295, 279, 326, 327, 5, 'com_content.article.112', 'IObit Uninstaller 3 review: Free utility competes with a built-in', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(296, 279, 328, 329, 5, 'com_content.article.113', 'Lucidpress review: Free beta makes typesetting simple', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(297, 279, 330, 331, 5, 'com_content.article.114', 'Responsive Joomla template - JA Teline IV now on T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(298, 279, 332, 333, 5, 'com_content.article.115', 'Free Joomla templates built on the robust T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(299, 279, 334, 335, 5, 'com_content.article.116', 'Purity III - Best free responsive Joomla template for 2014', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(300, 280, 342, 343, 5, 'com_content.article.117', 'What is new in Joomla 3.2 ?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(301, 280, 344, 345, 5, 'com_content.article.118', 'One Year Later: Must-Have Windows 7 Downloads', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(302, 280, 346, 347, 5, 'com_content.article.119', 'Security software showdown! 9 antivirus suites empirically tested', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(303, 280, 348, 349, 5, 'com_content.article.120', 'Responsive Joomla template for Joomla 2.5 & Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(304, 280, 350, 351, 5, 'com_content.article.121', 'FREE Responsive Joomla extensions for Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(305, 280, 352, 353, 5, 'com_content.article.122', 'Joomla 3 templates supporting Bootstrap 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(306, 271, 191, 202, 4, 'com_content.category.94', 'News & Update', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(307, 271, 203, 214, 4, 'com_content.category.95', 'Tips & Tutorials', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(308, 271, 215, 226, 4, 'com_content.category.96', 'Reviews', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(309, 271, 227, 242, 4, 'com_content.category.97', 'Joomla Extensions', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(310, 308, 216, 217, 5, 'com_content.article.123', 'The year 2013 in review : A look back', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(311, 306, 192, 193, 5, 'com_content.article.124', 'Purity III - The best free responsive Joomla template for 2014', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(312, 306, 194, 195, 5, 'com_content.article.125', 'T3 Framework video – Introducing Megamenu ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(313, 1, 950, 951, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(314, 306, 196, 197, 5, 'com_content.article.126', 'Added K2 style for 4 Joomla templates: JA Ironis, JA Minisite, JA Graphite, and JA Bistro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(315, 306, 198, 199, 5, 'com_content.article.127', 'JA Business is compatible with Joomla 2.5 & 3.0', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(316, 1, 952, 953, 1, '#__ucm_content.2', '#__ucm_content.2', '[]'),
(317, 203, 360, 383, 3, 'com_content.category.98', 'Featured projects', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(318, 307, 204, 205, 5, 'com_content.article.128', 'The Biggest Web Design Trends Coming Next Year', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(319, 18, 641, 642, 2, 'com_modules.module.113', 'Demo Content', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(320, 18, 643, 644, 2, 'com_modules.module.26', 'About Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(321, 317, 361, 362, 4, 'com_content.article.129', 'Fully responsive', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(322, 307, 206, 207, 5, 'com_content.article.130', 'Why Every Small Business Owner or Startup Entrepreneur Should Consider Using a Template for Their We', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(323, 307, 208, 209, 5, 'com_content.article.131', 'Best responsive Joomla templates from JoomlArt in the year 2013', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(324, 308, 218, 219, 5, 'com_content.article.132', '10 Copywriting Errors That Can Ruin a Company’s Website', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(325, 306, 200, 201, 5, 'com_content.article.133', 'Sneakpeek - JoomlArt\'s New Demo Toolbar', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(326, 1, 954, 955, 1, '#__ucm_content.3', '#__ucm_content.3', '[]'),
(327, 307, 210, 211, 5, 'com_content.article.134', 'Review: Responsive Joomla template for book stores- JA Bookshop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(328, 1, 956, 957, 1, '#__ucm_content.4', '#__ucm_content.4', '[]'),
(329, 308, 220, 221, 5, 'com_content.article.135', 'Responsive Joomla template for movie - JA Obelisk', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(331, 307, 212, 213, 5, 'com_content.article.136', 'How to style modules in Joomla - OSTraining Video Tutorial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(332, 1, 958, 959, 1, '#__ucm_content.6', '#__ucm_content.6', '[]'),
(333, 309, 228, 229, 5, 'com_content.article.137', 'Easy to use Google translate or Bing translator for your Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(334, 1, 960, 961, 1, '#__ucm_content.7', '#__ucm_content.7', '[]'),
(335, 309, 230, 231, 5, 'com_content.article.138', 'Introducing JA Multilingual extension for Joomla 2.5 & Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(336, 1, 962, 963, 1, '#__ucm_content.8', '#__ucm_content.8', '[]'),
(337, 309, 232, 233, 5, 'com_content.article.139', 'Tips to Extend Your Content Types Using CCK For Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(338, 309, 234, 235, 5, 'com_content.article.140', 'JA Extensions Manager - Upgrades / Rollbacks Made easy - Free for all...', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(339, 309, 236, 237, 5, 'com_content.article.141', 'Meet JA Magz - The Joomla magazine template in 41 languages', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(340, 1, 964, 965, 1, '#__ucm_content.9', '#__ucm_content.9', '[]'),
(341, 309, 238, 239, 5, 'com_content.article.142', 'Joomla extension - JA Multilingual extension for Joomla 2.5 & Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(342, 1, 966, 967, 1, '#__ucm_content.10', '#__ucm_content.10', '[]'),
(343, 309, 240, 241, 5, 'com_content.article.143', '3 FREE responsive Joomla extensions for Joomla 2.5 & Joomla 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(345, 18, 645, 646, 2, 'com_modules.module.163', 'Blog Categories', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(347, 317, 363, 364, 4, 'com_content.article.144', 'Built on the robust T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(348, 18, 647, 648, 2, 'com_modules.module.165', 'Blog Tags', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(349, 18, 649, 650, 2, 'com_modules.module.166', 'Important Articles ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(350, 1, 968, 969, 1, '#__ucm_content.11', '#__ucm_content.11', '[]'),
(351, 317, 365, 366, 4, 'com_content.article.145', 'A perfect starting point', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(352, 317, 367, 368, 4, 'com_content.article.146', 'Support Bootstrap 3 at core', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(354, 18, 651, 652, 2, 'com_modules.module.167', 'Magazine - Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(355, 317, 369, 370, 4, 'com_content.article.148', 'Easy to customize', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(356, 317, 371, 372, 4, 'com_content.article.149', 'Multiple layouts supported', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(357, 317, 373, 374, 4, 'com_content.article.150', 'A free Joomla 3 template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(358, 317, 375, 376, 4, 'com_content.article.151', 'Highly compatible', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(359, 317, 377, 378, 4, 'com_content.article.152', 'Stunning typography pages', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(360, 1, 970, 971, 1, '#__ucm_content.12', '#__ucm_content.12', '[]'),
(362, 18, 653, 654, 2, 'com_modules.module.168', 'Magazine - Other articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(363, 18, 655, 656, 2, 'com_modules.module.169', 'EasyBlog Calendar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(364, 18, 657, 658, 2, 'com_modules.module.170', 'EasyBlog Archive', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(365, 18, 659, 660, 2, 'com_modules.module.171', 'Blog Categories', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(366, 18, 661, 662, 2, 'com_modules.module.172', 'EasyBlog Tag Cloud', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(367, 18, 663, 664, 2, 'com_modules.module.173', 'EasyBlog New Post Module', ''),
(368, 34, 108, 109, 3, 'com_content.article.153', 'Welcome to JA Purity III', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(371, 18, 665, 666, 2, 'com_modules.module.175', 'MijoShop Orders', ''),
(372, 18, 667, 668, 2, 'com_modules.module.176', 'MijoShop - Quick Icons', ''),
(373, 18, 669, 670, 2, 'com_modules.module.177', 'How we work', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(374, 18, 671, 672, 2, 'com_modules.module.178', 'Success Stories', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(375, 18, 673, 674, 2, 'com_modules.module.179', 'Let\'s connect', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(377, 18, 675, 676, 2, 'com_modules.module.181', 'Slideshow', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(378, 216, 245, 246, 4, 'com_content.article.154', 'JA Bookshop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(379, 216, 247, 248, 4, 'com_content.article.155', 'JA Appolio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(380, 216, 249, 250, 4, 'com_content.article.156', 'JA Obelisk', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(381, 216, 251, 252, 4, 'com_content.article.157', 'JA Magz', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(382, 216, 253, 254, 4, 'com_content.article.158', 'JA Muzic', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(383, 216, 255, 256, 4, 'com_content.article.159', 'JA Fixel', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(384, 216, 257, 258, 4, 'com_content.article.160', ' JA Beranis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(385, 216, 259, 260, 4, 'com_content.article.161', ' JA Smashboard', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(386, 216, 261, 262, 4, 'com_content.article.162', ' JA Hawkstore', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(387, 18, 677, 678, 2, 'com_modules.module.182', 'Testimonials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(388, 18, 679, 680, 2, 'com_modules.module.183', 'Business Joomla template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(389, 18, 681, 682, 2, 'com_modules.module.184', 'Blog Joomla template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(390, 18, 683, 684, 2, 'com_modules.module.185', 'News Joomla template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(391, 18, 685, 686, 2, 'com_modules.module.90', 'About us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(393, 18, 687, 688, 2, 'com_modules.module.92', 'Follow us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(394, 18, 689, 690, 2, 'com_modules.module.186', 'Categories', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(395, 18, 691, 692, 2, 'com_modules.module.187', 'Featured Products', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(397, 18, 693, 694, 2, 'com_modules.module.189', 'Why we do it', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(398, 18, 695, 696, 2, 'com_modules.module.190', 'Portfolio Joomla template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(399, 18, 697, 698, 2, 'com_modules.module.93', 'Contact us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(400, 18, 699, 700, 2, 'com_modules.module.191', 'Blog post', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(403, 18, 701, 702, 2, 'com_modules.module.192', 'Popular post', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(404, 18, 703, 704, 2, 'com_modules.module.193', 'Sample Banner 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(405, 18, 705, 706, 2, 'com_modules.module.194', 'Custom tabs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(406, 18, 707, 708, 2, 'com_modules.module.101', 'Built on T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(407, 18, 709, 710, 2, 'com_modules.module.102', 'Joomla 3 & Bootstrap 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(408, 18, 711, 712, 2, 'com_modules.module.103', 'A Free Joomla template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(409, 18, 713, 714, 2, 'com_modules.module.104', 'Flat Design & Stunning Typo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(410, 203, 384, 385, 3, 'com_content.article.163', 'Typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(411, 18, 715, 716, 2, 'com_modules.module.195', 'Most read', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(413, 18, 717, 718, 2, 'com_modules.module.45', 'Menu Example', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(414, 18, 719, 720, 2, 'com_modules.module.196', 'Joomla', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(415, 18, 721, 722, 2, 'com_modules.module.197', 'Bootstrap 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(416, 18, 723, 724, 2, 'com_modules.module.198', 'Framework', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(417, 18, 725, 726, 2, 'com_modules.module.199', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(418, 277, 280, 281, 5, 'com_content.article.164', 'T-Mobile will pay you to break up with your carrier', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(419, 277, 282, 283, 5, 'com_content.article.165', 'Best Android Phones for Business', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(420, 277, 284, 285, 5, 'com_content.article.166', 'Responsive Joomla template - JA Nex on T3v3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(421, 277, 286, 287, 5, 'com_content.article.167', 'The best Joomla templates using Bootstrap 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(422, 18, 727, 728, 2, 'com_modules.module.200', 'Masthead', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(423, 277, 288, 289, 5, 'com_content.article.168', 'Responsive Joomla template for Portfolio - JA Appolio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(424, 277, 290, 291, 5, 'com_content.article.169', 'Joomla template framework: T3 Framework 2.0.1 release', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(425, 278, 318, 319, 5, 'com_content.article.170', 'Best deals for responsive Joomla templates 2013', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(426, 278, 320, 321, 5, 'com_content.article.171', 'Best Joomla deals on Black Friday 2013 ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(427, 278, 322, 323, 5, 'com_content.article.172', 'Best Joomla deals coupon code for Christmas 2013', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(428, 276, 306, 307, 5, 'com_content.article.173', 'Responsive Joomla template for book stores - JA Bookshop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(429, 18, 729, 730, 2, 'com_modules.module.94', 'T3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(430, 18, 731, 732, 2, 'com_modules.module.95', 'JoomlArt', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(431, 280, 354, 355, 5, 'com_content.article.174', 'Best Joomla practices for beginners', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(432, 279, 336, 337, 5, 'com_content.article.175', 'Free Joomla template for magazine', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(433, 279, 338, 339, 5, 'com_content.article.176', 'Joomla 3 templates - Best practices for high conversion', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(434, 34, 110, 111, 3, 'com_content.article.177', 'Compatible', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(435, 34, 112, 113, 3, 'com_content.article.178', 'Offline page', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(436, 1, 974, 975, 1, 'com_jaextmanager', 'com_jaextmanager', '{}'),
(438, 34, 114, 115, 3, 'com_content.article.179', 'Features Intro 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(443, 18, 733, 734, 2, 'com_modules.module.202', 'Feature 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(444, 18, 735, 736, 2, 'com_modules.module.203', 'Supports multiple layouts', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(445, 18, 737, 738, 2, 'com_modules.module.204', 'Why Purity III?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(446, 18, 739, 740, 2, 'com_modules.module.205', 'Want to be the first to try our Purity III', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(447, 217, 265, 266, 4, 'com_content.article.183', 'Wanna get your beloved extensions in?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(448, 217, 267, 268, 4, 'com_content.article.184', 'Let\'s get to know Purity III', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(449, 18, 741, 742, 2, 'com_modules.module.206', 'Team members', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(450, 18, 743, 744, 2, 'com_modules.module.207', 'Our partners', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(452, 34, 116, 117, 3, 'com_content.article.185', 'Pricing table', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(453, 34, 118, 119, 3, 'com_content.article.186', 'Support policy', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(454, 203, 386, 559, 3, 'com_content.category.101', 'Glossary', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(461, 18, 745, 746, 2, 'com_modules.module.208', 'Manufacturer', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(463, 203, 560, 563, 3, 'com_content.category.102', 'Compatible extensions', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(464, 454, 387, 388, 4, 'com_content.article.193', 'Access level', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(465, 463, 561, 562, 4, 'com_content.article.194', 'Compatible Extensions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(466, 454, 389, 390, 4, 'com_content.article.195', 'Anchor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(467, 454, 391, 392, 4, 'com_content.article.196', 'Access Control List', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(468, 454, 393, 394, 4, 'com_content.article.197', 'Language Pack', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(469, 454, 395, 396, 4, 'com_content.article.198', 'Administrator', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(470, 454, 397, 398, 4, 'com_content.article.199', 'Admin template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(471, 454, 399, 400, 4, 'com_content.article.200', 'Language Key', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(472, 454, 401, 402, 4, 'com_content.article.201', 'Alias', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(473, 454, 403, 404, 4, 'com_content.article.202', 'Alternative Menu item', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(474, 454, 405, 406, 4, 'com_content.article.203', 'Apache', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(475, 454, 407, 408, 4, 'com_content.article.204', 'Language Override', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(476, 454, 409, 410, 4, 'com_content.article.205', 'API', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(477, 454, 411, 412, 4, 'com_content.article.206', 'Layout Override', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(478, 454, 413, 414, 4, 'com_content.article.207', 'Article', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(479, 454, 415, 416, 4, 'com_content.article.208', 'LDAP', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(480, 454, 417, 418, 4, 'com_content.article.209', 'Author', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(481, 454, 419, 420, 4, 'com_content.article.210', 'Backend', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(482, 454, 421, 422, 4, 'com_content.article.211', 'Banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(483, 454, 423, 424, 4, 'com_content.article.212', 'Blog', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(484, 454, 425, 426, 4, 'com_content.article.213', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(485, 454, 427, 428, 4, 'com_content.article.214', 'Manager', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(486, 454, 429, 430, 4, 'com_content.article.215', 'Cache', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(487, 454, 431, 432, 4, 'com_content.article.216', 'Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(488, 454, 433, 434, 4, 'com_content.article.217', 'Model', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(489, 454, 435, 436, 4, 'com_content.article.218', 'Category', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(490, 454, 437, 438, 4, 'com_content.article.219', 'Category Manager', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(491, 454, 439, 440, 4, 'com_content.article.220', 'Model-View-Controller (MVC)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(492, 454, 441, 442, 4, 'com_content.article.221', 'Module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(493, 454, 443, 444, 4, 'com_content.article.222', 'Chrome', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(494, 454, 445, 446, 4, 'com_content.article.223', 'Component', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(495, 454, 447, 448, 4, 'com_content.article.224', 'Configuration.php', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(496, 454, 449, 450, 4, 'com_content.article.225', 'Content Management System', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(497, 454, 451, 452, 4, 'com_content.article.226', 'Controller', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(498, 454, 453, 454, 4, 'com_content.article.227', 'CSS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(499, 454, 455, 456, 4, 'com_content.article.228', 'Module Class Suffix', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(501, 454, 457, 458, 4, 'com_content.article.230', 'Core', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(502, 454, 459, 460, 4, 'com_content.article.231', 'Module Position', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(504, 454, 461, 462, 4, 'com_content.article.233', 'Administration Control Panel', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(505, 454, 463, 464, 4, 'com_content.article.234', 'Database prefix', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(506, 454, 465, 466, 4, 'com_content.article.235', 'Editor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');
INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(507, 454, 467, 468, 4, 'com_content.article.236', 'MySQL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(508, 454, 469, 470, 4, 'com_content.article.237', 'Object Oriented Programming (OOP) ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(509, 454, 471, 472, 4, 'com_content.article.238', 'Options (Parameters) ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(510, 34, 120, 121, 3, 'com_content.article.239', 'Override', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(511, 454, 473, 474, 4, 'com_content.article.240', 'Extension', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(512, 454, 475, 476, 4, 'com_content.article.241', 'FOSS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(513, 454, 477, 478, 4, 'com_content.article.242', 'Front-end', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(514, 454, 479, 480, 4, 'com_content.article.243', 'Function', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(515, 454, 481, 482, 4, 'com_content.article.244', 'Global Configuration', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(516, 454, 483, 484, 4, 'com_content.article.245', 'GPL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(517, 454, 485, 486, 4, 'com_content.article.246', 'Page Class Suffix', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(518, 454, 487, 488, 4, 'com_content.article.247', 'Override', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(519, 454, 489, 490, 4, 'com_content.article.248', 'Hack (Core Hack)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(520, 454, 491, 492, 4, 'com_content.article.249', 'Hit', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(521, 454, 493, 494, 4, 'com_content.article.250', 'HTML5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(522, 454, 497, 498, 4, 'com_content.article.251', 'Patch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(523, 454, 495, 496, 4, 'com_content.article.252', 'JavaScript ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(524, 454, 499, 500, 4, 'com_content.article.253', 'JDOC', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(525, 454, 501, 502, 4, 'com_content.article.254', 'JED (Joomla Extensions Directory)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(526, 454, 503, 504, 4, 'com_content.article.255', 'Plugin', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(527, 454, 505, 506, 4, 'com_content.article.256', 'Poll', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(528, 454, 507, 508, 4, 'com_content.article.257', 'Publisher', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(529, 454, 509, 510, 4, 'com_content.article.258', 'Register users', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(530, 454, 511, 512, 4, 'com_content.article.259', 'Router', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(531, 454, 513, 514, 4, 'com_content.article.260', 'JoomlaDay', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(532, 454, 515, 516, 4, 'com_content.article.261', 'RSS (Really Simple Syndication)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(533, 454, 517, 518, 4, 'com_content.article.262', 'LAMPP ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(534, 454, 519, 520, 4, 'com_content.article.263', 'Language', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(535, 454, 521, 522, 4, 'com_content.article.264', 'Search engine friendly (SEF)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(536, 454, 523, 524, 4, 'com_content.article.265', 'Search engine optimization (SEO)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(537, 454, 525, 526, 4, 'com_content.article.266', 'Split Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(538, 454, 527, 528, 4, 'com_content.article.267', 'SQL', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(539, 454, 529, 530, 4, 'com_content.article.268', 'Sub category', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(540, 454, 531, 532, 4, 'com_content.article.269', 'Super user', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(541, 454, 533, 534, 4, 'com_content.article.270', 'Template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(542, 454, 535, 536, 4, 'com_content.article.271', 'Template Style', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(543, 454, 537, 538, 4, 'com_content.article.272', 'Template override', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(544, 454, 539, 540, 4, 'com_content.article.273', 'Uncategorize article', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(545, 454, 541, 542, 4, 'com_content.article.274', 'User groups', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(546, 454, 543, 544, 4, 'com_content.article.275', 'View site', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(547, 454, 545, 546, 4, 'com_content.article.276', 'View (MVC)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(548, 454, 547, 548, 4, 'com_content.article.277', 'Web server', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(549, 454, 549, 550, 4, 'com_content.article.278', 'Wrapper', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(550, 454, 551, 552, 4, 'com_content.article.279', 'WYSIWYG editor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(551, 454, 553, 554, 4, 'com_content.article.280', 'XHTML', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(552, 454, 555, 556, 4, 'com_content.article.281', 'XML', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(553, 454, 557, 558, 4, 'com_content.article.282', 'Module Chrome', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(554, 18, 747, 748, 2, 'com_modules.module.98', 'T3 Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(555, 18, 749, 750, 2, 'com_modules.module.210', 'Compatible Extensions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(556, 34, 122, 123, 3, 'com_content.article.283', 'Our team', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(559, 34, 124, 125, 3, 'com_content.article.285', 'Single Article', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(560, 18, 751, 752, 2, 'com_modules.module.31', 'News Flash', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(562, 317, 379, 380, 4, 'com_content.article.287', 'Support RTL language layout', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(563, 18, 753, 754, 2, 'com_modules.module.61', 'Articles Categories', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(564, 18, 755, 756, 2, 'com_modules.module.211', 'Sidebar 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(565, 18, 757, 758, 2, 'com_modules.module.212', 'Sidebar 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(566, 18, 759, 760, 2, 'com_modules.module.213', 'After content', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(567, 18, 761, 762, 2, 'com_modules.module.214', 'Footer 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(568, 18, 763, 764, 2, 'com_modules.module.215', 'Footer 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(569, 18, 765, 766, 2, 'com_modules.module.216', 'Footer 5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(570, 18, 767, 768, 2, 'com_modules.module.217', 'Footer 3', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(571, 18, 769, 770, 2, 'com_modules.module.218', 'Footer 4', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(572, 18, 771, 772, 2, 'com_modules.module.219', 'Footer 6', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(573, 34, 126, 127, 3, 'com_content.article.288', 'Support policy - style 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(575, 317, 381, 382, 4, 'com_content.article.289', 'Downloads', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(576, 18, 773, 774, 2, 'com_modules.module.221', 'Purity III and its stunning typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(578, 18, 775, 776, 2, 'com_modules.module.112', 'Purity III - The best free Joomla Template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(580, 18, 777, 778, 2, 'com_modules.module.224', 'T3 Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(581, 18, 779, 780, 2, 'com_modules.module.225', 'Purity III Template', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(582, 34, 128, 129, 3, 'com_content.article.290', '404', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(583, 34, 130, 131, 3, 'com_content.article.291', 'Purity III  layouts', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(584, 34, 132, 133, 3, 'com_content.article.292', 'Request to be compatible', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(585, 18, 781, 782, 2, 'com_modules.module.226', 'Purity III video', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(586, 18, 783, 784, 2, 'com_modules.module.19', 'User Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(588, 8, 565, 570, 2, 'com_content.category.104', 'Test', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(589, 588, 566, 567, 3, 'com_content.article.293', 'SOME TITLE', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(590, 588, 568, 569, 3, 'com_content.article.294', 'Another submitted', ''),
(591, 18, 785, 786, 2, 'com_modules.module.228', 'Portfolio Articles ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(593, 18, 787, 788, 2, 'com_modules.module.229', 'Sample Profiles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(594, 18, 789, 790, 2, 'com_modules.module.230', 'EasySocial Dating Search', ''),
(595, 18, 791, 792, 2, 'com_modules.module.231', 'EasySocial Event Menu', ''),
(596, 18, 793, 794, 2, 'com_modules.module.232', 'EasySocial Events', ''),
(597, 18, 795, 796, 2, 'com_modules.module.233', 'EasySocial Event Categories', ''),
(598, 18, 797, 798, 2, 'com_modules.module.234', 'EasySocial Group Menu', ''),
(599, 18, 799, 800, 2, 'com_modules.module.235', 'EasySocial Groups', ''),
(600, 18, 801, 802, 2, 'com_modules.module.236', 'EasySocial Group Categories', ''),
(601, 18, 803, 804, 2, 'com_modules.module.237', 'EasySocial Recent Photos', ''),
(602, 18, 805, 806, 2, 'com_modules.module.238', 'EasySocial Profile Completeness', ''),
(603, 18, 807, 808, 2, 'com_modules.module.239', 'EasySocial Quick Registration', ''),
(604, 18, 809, 810, 2, 'com_modules.module.240', 'EasySocial Registration Requester', ''),
(607, 18, 811, 812, 2, 'com_modules.module.241', 'JS Nearby Events Search', ''),
(608, 18, 813, 814, 2, 'com_modules.module.242', 'EasySocial Followers', ''),
(609, 18, 815, 816, 2, 'com_modules.module.243', 'EasySocial Friends', ''),
(610, 18, 817, 818, 2, 'com_modules.module.244', 'JS Activity Stream', '{}'),
(611, 18, 819, 820, 2, 'com_modules.module.245', 'JS Discussions', '{}'),
(612, 18, 821, 822, 2, 'com_modules.module.246', 'JS Events Calendar', '{}'),
(613, 18, 823, 824, 2, 'com_modules.module.247', 'JS Hello Me', '{}'),
(614, 18, 825, 826, 2, 'com_modules.module.248', 'JS Members Search', '{}'),
(615, 18, 827, 828, 2, 'com_modules.module.249', 'JS Nearby Events Search', '{}'),
(616, 18, 829, 830, 2, 'com_modules.module.250', 'JS Notifications', '{}'),
(617, 18, 831, 832, 2, 'com_modules.module.251', 'JS Photo Comments', '{}'),
(618, 18, 833, 834, 2, 'com_modules.module.252', 'JS Statistics', '{}'),
(619, 18, 835, 836, 2, 'com_modules.module.253', 'JS Top Members', '{}'),
(620, 18, 837, 838, 2, 'com_modules.module.254', 'JS Video Comments', '{}'),
(621, 18, 839, 840, 2, 'com_modules.module.255', 'EasySocial Calendar', '{}'),
(622, 18, 841, 842, 2, 'com_modules.module.256', 'EasySocial Quick Post', '{}'),
(623, 18, 843, 844, 2, 'com_modules.module.257', 'EasySocial Recent Polls', '{}'),
(624, 18, 845, 846, 2, 'com_modules.module.258', 'EasySocial Videos Module', '{}');

DROP TABLE IF EXISTS `#__associations`;
CREATE TABLE `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__banner_clients`;
CREATE TABLE `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__banner_tracks`;
CREATE TABLE `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__banners`;
CREATE TABLE `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 131, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 42, '0000-00-00 00:00:00', 0, '*', 1),
(10, 35, 1, 81, 82, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '0000-00-00 00:00:00', 0, '*', 1),
(11, 36, 1, 77, 78, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '0000-00-00 00:00:00', 0, '*', 1),
(12, 37, 1, 13, 14, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '0000-00-00 00:00:00', 0, '*', 1),
(77, 169, 1, 85, 86, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '0000-00-00 00:00:00', 0, '*', 1);

DROP TABLE IF EXISTS `#__community_activities`;
CREATE TABLE `#__community_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(10) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `app` varchar(200) NOT NULL,
  `verb` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `groupid` int(10) DEFAULT NULL,
  `eventid` int(10) DEFAULT NULL,
  `group_access` tinyint(4) NOT NULL DEFAULT '0',
  `event_access` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `params` text NOT NULL,
  `points` int(4) NOT NULL DEFAULT '1',
  `archived` tinyint(3) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `comment_id` int(10) NOT NULL,
  `comment_type` varchar(200) NOT NULL,
  `like_id` int(10) NOT NULL,
  `like_type` varchar(200) NOT NULL,
  `actors` text NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor` (`actor`),
  KEY `target` (`target`),
  KEY `app` (`app`),
  KEY `created` (`created`),
  KEY `archived` (`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_activities_hide`;
CREATE TABLE `#__community_activities_hide` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_apps`;
CREATE TABLE `#__community_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `apps` varchar(200) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  `position` varchar(50) NOT NULL DEFAULT 'content',
  `params` text NOT NULL,
  `privacy` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_user_apps` (`userid`,`apps`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_avatar`;
CREATE TABLE `#__community_avatar` (
  `id` int(10) unsigned NOT NULL,
  `apptype` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 = small, 1 = medium, 2=large',
  UNIQUE KEY `id` (`id`,`apptype`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_badges`;
CREATE TABLE `#__community_badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `image` varchar(256) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `points` (`points`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_blocklist`;
CREATE TABLE `#__community_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blocked_userid` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `blocked_userid` (`blocked_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_config`;
CREATE TABLE `#__community_config` (
  `name` varchar(64) NOT NULL,
  `params` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_connect_users`;
CREATE TABLE `#__community_connect_users` (
  `connectid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_connection`;
CREATE TABLE `#__community_connection` (
  `connection_id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_from` int(11) NOT NULL,
  `connect_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `group` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`connection_id`),
  KEY `connect_from` (`connect_from`,`connect_to`,`status`,`group`),
  KEY `idx_connect_to` (`connect_to`),
  KEY `idx_connect_from` (`connect_from`),
  KEY `idx_connect_tofrom` (`connect_to`,`connect_from`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_engagement`;
CREATE TABLE `#__community_engagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `week` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_event_stats`;
CREATE TABLE `#__community_event_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_events`;
CREATE TABLE `#__community_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL COMMENT 'parent for recurring event',
  `catid` int(11) unsigned NOT NULL,
  `contentid` int(11) unsigned DEFAULT '0' COMMENT '0 - if type == profile, else it hold the group id',
  `type` varchar(255) NOT NULL DEFAULT 'profile' COMMENT 'profile, group',
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `summary` text NOT NULL,
  `description` text,
  `creator` int(11) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `permission` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Open (Anyone can mark attendence), 1 - Private (Only invited can mark attendence)',
  `avatar` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `cover` text NOT NULL,
  `invitedcount` int(11) unsigned DEFAULT '0',
  `confirmedcount` int(11) unsigned DEFAULT '0' COMMENT 'treat this as member count as well',
  `declinedcount` int(11) unsigned DEFAULT '0',
  `maybecount` int(11) unsigned DEFAULT '0',
  `wallcount` int(11) unsigned DEFAULT '0',
  `ticket` int(11) unsigned DEFAULT '0' COMMENT 'Represent how many guest can be joined or invited.',
  `allowinvite` tinyint(1) unsigned DEFAULT '1' COMMENT '0 - guest member cannot invite thier friends to join. 1 - yes, guest member can invite any of thier friends to join.',
  `created` datetime DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT '0',
  `published` int(11) unsigned DEFAULT '1',
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `offset` varchar(5) DEFAULT NULL,
  `allday` tinyint(11) NOT NULL DEFAULT '0',
  `repeat` varchar(50) DEFAULT NULL COMMENT 'null,daily,weekly,monthly',
  `repeatend` date NOT NULL,
  `params` text NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `unlisted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_creator` (`creator`),
  KEY `idx_period` (`startdate`,`enddate`),
  KEY `idx_type` (`type`),
  KEY `idx_catid` (`catid`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_events_category`;
CREATE TABLE `#__community_events_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_events_members`;
CREATE TABLE `#__community_events_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `memberid` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '[Join / Invite]: 0 - [pending approval/pending invite], 1 - [approved/confirmed], 2 - [rejected/declined], 3 - [maybe/maybe], 4 - [blocked/blocked]',
  `permission` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 - creator, 2 - admin, 3 - member',
  `invited_by` int(11) unsigned DEFAULT '0',
  `approval` tinyint(1) unsigned DEFAULT '0' COMMENT '0 - no approval required, 1 - required admin approval',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`),
  KEY `idx_status` (`status`),
  KEY `idx_invitedby` (`invited_by`),
  KEY `idx_permission` (`eventid`,`permission`),
  KEY `idx_member_event` (`eventid`,`memberid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_featured`;
CREATE TABLE `#__community_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_fields`;
CREATE TABLE `#__community_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tips` text NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `searchable` tinyint(1) DEFAULT '1',
  `registration` tinyint(1) DEFAULT '1',
  `options` text,
  `fieldcode` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldcode` (`fieldcode`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_fields_values`;
CREATE TABLE `#__community_fields_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(10) NOT NULL,
  `value` text NOT NULL,
  `access` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_user_fieldid` (`user_id`,`field_id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_files`;
CREATE TABLE `#__community_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `discussionid` int(11) NOT NULL,
  `bulletinid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussionid` (`discussionid`),
  KEY `groupid` (`groupid`),
  KEY `creator` (`creator`),
  KEY `bulletinid` (`bulletinid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_group_stats`;
CREATE TABLE `#__community_group_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups`;
CREATE TABLE `#__community_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `approvals` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `discusscount` int(11) NOT NULL DEFAULT '0',
  `wallcount` int(11) NOT NULL DEFAULT '0',
  `membercount` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `hits` int(11) NOT NULL,
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `summary` text NOT NULL,
  `unlisted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups_bulletins`;
CREATE TABLE `#__community_groups_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups_category`;
CREATE TABLE `#__community_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups_discuss`;
CREATE TABLE `#__community_groups_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `lastreplied` datetime NOT NULL,
  `lock` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups_invite`;
CREATE TABLE `#__community_groups_invite` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_groups_members`;
CREATE TABLE `#__community_groups_members` (
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `permissions` int(1) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `idx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_hashtag`;
CREATE TABLE `#__community_hashtag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_invitations`;
CREATE TABLE `#__community_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback` varchar(255) NOT NULL,
  `cid` int(11) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_likes`;
CREATE TABLE `#__community_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `uid` int(10) NOT NULL,
  `like` text NOT NULL,
  `dislike` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_location_cache`;
CREATE TABLE `#__community_location_cache` (
  `address` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `data` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_mailq`;
CREATE TABLE `#__community_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` text NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `template` varchar(64) NOT NULL,
  `email_type` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_memberlist`;
CREATE TABLE `#__community_memberlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `condition` varchar(255) NOT NULL,
  `avataronly` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_memberlist_criteria`;
CREATE TABLE `#__community_memberlist_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_moods`;
CREATE TABLE `#__community_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `custom` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `allowcustomtext` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_msg`;
CREATE TABLE `#__community_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned DEFAULT '0',
  `from_name` varchar(45) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_msg_recepient`;
CREATE TABLE `#__community_msg_recepient` (
  `msg_id` int(10) unsigned NOT NULL,
  `msg_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `bcc` tinyint(3) unsigned DEFAULT '0',
  `is_read` tinyint(3) unsigned DEFAULT '0',
  `deleted` tinyint(3) unsigned DEFAULT '0',
  UNIQUE KEY `un` (`msg_id`,`to`),
  KEY `msg_id` (`msg_id`),
  KEY `to` (`to`),
  KEY `idx_isread_to_deleted` (`is_read`,`to`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_notifications`;
CREATE TABLE `#__community_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `cmd_type` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `target` (`target`),
  KEY `actor` (`actor`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_oauth`;
CREATE TABLE `#__community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_photo_stats`;
CREATE TABLE `#__community_photo_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_photos`;
CREATE TABLE `#__community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_photos_albums`;
CREATE TABLE `#__community_photos_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_type` (`type`),
  KEY `idx_albumtype` (`id`,`type`),
  KEY `idx_creatortype` (`creator`,`type`),
  KEY `idx_groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_photos_tag`;
CREATE TABLE `#__community_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_photo_user` (`photoid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_photos_tokens`;
CREATE TABLE `#__community_photos_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_profile_stats`;
CREATE TABLE `#__community_profile_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_profiles`;
CREATE TABLE `#__community_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `approvals` tinyint(3) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `avatar` text NOT NULL,
  `watermark` text NOT NULL,
  `watermark_hash` varchar(255) NOT NULL,
  `watermark_location` text NOT NULL,
  `thumb` text NOT NULL,
  `created` datetime NOT NULL,
  `create_groups` tinyint(1) DEFAULT '1',
  `create_events` int(11) DEFAULT '1',
  `profile_lock` tinyint(1) DEFAULT '0',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `approvals` (`approvals`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_profiles_fields`;
CREATE TABLE `#__community_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `multiprofile_id` (`parent`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_register`;
CREATE TABLE `#__community_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(180) NOT NULL,
  `lastname` varchar(180) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_register_auth_token`;
CREATE TABLE `#__community_register_auth_token` (
  `token` varchar(200) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `auth_key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_reports`;
CREATE TABLE `#__community_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquestring` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_reports_actions`;
CREATE TABLE `#__community_reports_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `parameters` varchar(255) NOT NULL,
  `defaultaction` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_reports_reporter`;
CREATE TABLE `#__community_reports_reporter` (
  `reportid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_storage_s3`;
CREATE TABLE `#__community_storage_s3` (
  `storageid` varchar(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  UNIQUE KEY `storageid` (`storageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_tags`;
CREATE TABLE `#__community_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_tags_words`;
CREATE TABLE `#__community_tags_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(200) NOT NULL,
  `count` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_theme`;
CREATE TABLE `#__community_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_user_status`;
CREATE TABLE `#__community_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `posted_on` int(11) NOT NULL,
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_userpoints`;
CREATE TABLE `#__community_userpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL DEFAULT '',
  `rule_description` text NOT NULL,
  `rule_plugin` varchar(255) NOT NULL DEFAULT '',
  `action_string` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `points` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_users`;
CREATE TABLE `#__community_users` (
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `status_access` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `cover` text NOT NULL,
  `invite` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `friends` text NOT NULL,
  `groups` text NOT NULL,
  `events` text NOT NULL,
  `friendcount` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `watermark_hash` varchar(255) NOT NULL,
  `search_email` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userid`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_video_stats`;
CREATE TABLE `#__community_video_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `params` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_videos`;
CREATE TABLE `#__community_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'file',
  `video_id` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `creator_type` varchar(200) NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `duration` float unsigned DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `thumb` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `location` text NOT NULL,
  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_videos_category`;
CREATE TABLE `#__community_videos_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_videos_tag`;
CREATE TABLE `#__community_videos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__community_wall`;
CREATE TABLE `#__community_wall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `post_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(45) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__content_types`;
CREATE TABLE `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__contentitem_tag_map`;
CREATE TABLE `#__contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=MyISAM COMMENT='Maps items from content tables to tags' DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_acl`;
CREATE TABLE `#__discuss_acl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `public` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discuss_post_acl_action` (`action`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_acl_group`;
CREATE TABLE `#__discuss_acl_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content_id` bigint(20) unsigned NOT NULL,
  `acl_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_post_acl_content_type` (`content_id`,`type`),
  KEY `discuss_post_acl` (`acl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_assignment_map`;
CREATE TABLE `#__discuss_assignment_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `assignee_id` bigint(20) unsigned NOT NULL,
  `assigner_id` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_attachments`;
CREATE TABLE `#__discuss_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `path` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  `mime` text NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_badges`;
CREATE TABLE `#__discuss_badges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rule_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `avatar` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  `rule_limit` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_badges_alias` (`alias`),
  KEY `discuss_badges_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_badges_history`;
CREATE TABLE `#__discuss_badges_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `command` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_badges_rules`;
CREATE TABLE `#__discuss_badges_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `callback` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_badges_users`;
CREATE TABLE `#__discuss_badges_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `badge_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  `custom` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `badge_id` (`badge_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_captcha`;
CREATE TABLE `#__discuss_captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response` varchar(5) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_category`;
CREATE TABLE `#__discuss_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `private` int(11) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `params` text NOT NULL,
  `container` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discuss_cat_published` (`published`),
  KEY `discuss_cat_parentid` (`parent_id`),
  KEY `discuss_cat_mod_categories1` (`published`,`private`,`id`),
  KEY `discuss_cat_mod_categories2` (`published`,`private`,`ordering`),
  KEY `discuss_cat_acl` (`parent_id`,`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_category_acl_item`;
CREATE TABLE `#__discuss_category_acl_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `description` text,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_category_acl_map`;
CREATE TABLE `#__discuss_category_acl_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `acl_id` bigint(20) NOT NULL,
  `type` varchar(25) NOT NULL,
  `content_id` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discuss_category_acl` (`category_id`),
  KEY `discuss_category_acl_id` (`acl_id`),
  KEY `discuss_content_type` (`content_id`,`type`),
  KEY `discuss_category_content_type` (`category_id`,`content_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_comments`;
CREATE TABLE `#__discuss_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned DEFAULT '0',
  `ordering` tinyint(1) unsigned DEFAULT '0',
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discuss_comment_postid` (`post_id`),
  KEY `discuss_comment_post_created` (`post_id`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_configs`;
CREATE TABLE `#__discuss_configs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_conversations`;
CREATE TABLE `#__discuss_conversations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `lastreplied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_conversations_message`;
CREATE TABLE `#__discuss_conversations_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `message` text,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `created_by` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_conversations_message_maps`;
CREATE TABLE `#__discuss_conversations_message_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`user_id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_conversations_participants`;
CREATE TABLE `#__discuss_conversations_participants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_id` (`conversation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_customfields`;
CREATE TABLE `#__discuss_customfields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `params` text,
  `ordering` bigint(20) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_customfields_acl`;
CREATE TABLE `#__discuss_customfields_acl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `acl_published` tinyint(1) unsigned NOT NULL,
  `default` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_customfields_rule`;
CREATE TABLE `#__discuss_customfields_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) unsigned NOT NULL,
  `acl_id` bigint(20) NOT NULL,
  `content_id` int(10) NOT NULL,
  `content_type` varchar(25) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cf_rule_field_id` (`field_id`),
  KEY `cf_rule_acl_types` (`content_type`,`acl_id`,`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_customfields_value`;
CREATE TABLE `#__discuss_customfields_value` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) unsigned NOT NULL,
  `value` text NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cf_value_field_id` (`field_id`),
  KEY `cf_value_field_post` (`field_id`,`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_favourites`;
CREATE TABLE `#__discuss_favourites` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fav_postid` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_hashkeys`;
CREATE TABLE `#__discuss_hashkeys` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_likes`;
CREATE TABLE `#__discuss_likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `discuss_content_type` (`type`,`content_id`),
  KEY `discuss_contentid` (`content_id`),
  KEY `discuss_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_mailq`;
CREATE TABLE `#__discuss_mailq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mailfrom` varchar(255) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ashtml` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_mailq_status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_migrators`;
CREATE TABLE `#__discuss_migrators` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `internal_id` bigint(20) NOT NULL,
  `external_id` bigint(20) NOT NULL,
  `component` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_notifications`;
CREATE TABLE `#__discuss_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `cid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `target` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `permalink` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  `favicon` text NOT NULL,
  `component` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_notification_created` (`created`),
  KEY `discuss_notification` (`target`,`state`,`cid`,`created`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_oauth`;
CREATE TABLE `#__discuss_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `request_token` text NOT NULL,
  `access_token` text NOT NULL,
  `message` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_oauth_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_oauth_posts`;
CREATE TABLE `#__discuss_oauth_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `oauth_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_points`;
CREATE TABLE `#__discuss_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rule_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  `rule_limit` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_points_rule` (`rule_id`),
  KEY `discuss_points_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_polls`;
CREATE TABLE `#__discuss_polls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `value` text NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `multiple_polls` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `polls_posts` (`post_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_polls_question`;
CREATE TABLE `#__discuss_polls_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `multiple` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_polls_users`;
CREATE TABLE `#__discuss_polls_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_post_types`;
CREATE TABLE `#__discuss_post_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_posts`;
CREATE TABLE `#__discuss_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `alias` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `replied` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` longtext NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(11) unsigned DEFAULT '0',
  `hits` int(11) unsigned DEFAULT '0',
  `islock` tinyint(1) unsigned DEFAULT '0',
  `lockdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `featured` tinyint(1) unsigned DEFAULT '0',
  `isresolve` tinyint(1) unsigned DEFAULT '0',
  `isreport` tinyint(1) unsigned DEFAULT '0',
  `answered` tinyint(1) unsigned DEFAULT '0',
  `user_id` bigint(20) unsigned DEFAULT '0',
  `parent_id` bigint(20) unsigned DEFAULT '0',
  `user_type` varchar(255) NOT NULL,
  `poster_name` varchar(255) NOT NULL,
  `poster_email` varchar(255) NOT NULL,
  `num_likes` int(11) DEFAULT '0',
  `num_negvote` int(11) DEFAULT '0',
  `sum_totalvote` int(11) DEFAULT '0',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `password` text,
  `legacy` tinyint(1) DEFAULT '1',
  `address` text,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `content_type` varchar(25) DEFAULT NULL,
  `post_status` tinyint(1) NOT NULL DEFAULT '0',
  `post_type` varchar(255) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL,
  `private` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'Determines if the discussion should be a private ticket or not.',
  PRIMARY KEY (`id`),
  KEY `discuss_post_published` (`published`),
  KEY `discuss_post_user_id` (`user_id`),
  KEY `discuss_post_vote` (`vote`),
  KEY `discuss_post_isreport` (`isreport`),
  KEY `discuss_post_answered` (`answered`),
  KEY `discuss_post_category` (`category_id`),
  KEY `discuss_post_query1` (`published`,`parent_id`,`answered`,`id`),
  KEY `discuss_post_query2` (`published`,`parent_id`,`answered`,`replied`),
  KEY `discuss_post_query3` (`published`,`parent_id`,`category_id`,`created`),
  KEY `discuss_post_query4` (`published`,`parent_id`,`category_id`,`id`),
  KEY `discuss_post_query5` (`published`,`parent_id`,`created`),
  KEY `discuss_post_query6` (`published`,`parent_id`,`id`),
  KEY `unread_category_posts` (`published`,`parent_id`,`legacy`,`category_id`,`id`),
  KEY `discuss_post_last_reply` (`parent_id`,`id`),
  KEY `idx_post_type` (`post_type`),
  KEY `private` (`private`),
  KEY `discuss_post_parentid` (`published`,`parent_id`),
  KEY `idx_post_replied` (`replied`),
  KEY `idx_post_created` (`created`),
  KEY `idx_post_private` (`private`),
  KEY `idx_post_search1` (`published`,`parent_id`,`private`,`replied`),
  KEY `idx_post_search2` (`published`,`private`,`created`),
  KEY `idx_post_search1a` (`published`,`parent_id`,`private`),
  KEY `idx_post_search2a` (`published`,`private`),
  FULLTEXT KEY `discuss_post_titlecontent` (`title`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_posts_labels`;
CREATE TABLE `#__discuss_posts_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` bigint(20) NOT NULL DEFAULT '0',
  `creator` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_posts_labels_map`;
CREATE TABLE `#__discuss_posts_labels_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `post_label_id` bigint(20) unsigned NOT NULL,
  `creator_id` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_posts_references`;
CREATE TABLE `#__discuss_posts_references` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `reference_id` bigint(20) NOT NULL,
  `extension` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`,`reference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_posts_tags`;
CREATE TABLE `#__discuss_posts_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `tag_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_tag` (`post_id`,`tag_id`),
  KEY `discuss_posts_tags_tagid` (`tag_id`),
  KEY `discuss_posts_tags_postid` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_ranks`;
CREATE TABLE `#__discuss_ranks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `start` bigint(20) NOT NULL DEFAULT '0',
  `end` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `discuss_ranks_range` (`start`,`end`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_ranks_users`;
CREATE TABLE `#__discuss_ranks_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rank_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ranks_users` (`rank_id`,`user_id`),
  KEY `ranks_id` (`rank_id`),
  KEY `ranks_userid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_reports`;
CREATE TABLE `#__discuss_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `reason` text,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `discuss_reports_post` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_roles`;
CREATE TABLE `#__discuss_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `usergroup_id` int(10) unsigned NOT NULL,
  `colorcode` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` bigint(20) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_rules`;
CREATE TABLE `#__discuss_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `callback` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_rules_command` (`command`(255))
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_subscription`;
CREATE TABLE `#__discuss_subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `member` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT 'daily',
  `cid` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `interval` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `sent_out` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_tags`;
CREATE TABLE `#__discuss_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(1) unsigned DEFAULT '0',
  `user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_tags_alias` (`alias`),
  KEY `discuss_tags_user_id` (`user_id`),
  KEY `discuss_tags_published` (`published`),
  KEY `discuss_tags_query1` (`published`,`id`),
  FULLTEXT KEY `discuss_tags_title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_users`;
CREATE TABLE `#__discuss_users` (
  `id` bigint(20) unsigned NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `params` text,
  `alias` varchar(255) DEFAULT NULL,
  `points` bigint(20) NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `location` text NOT NULL,
  `signature` text NOT NULL,
  `edited` text NOT NULL,
  `posts_read` text,
  `site` text,
  PRIMARY KEY (`id`),
  KEY `discuss_users_alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_users_history`;
CREATE TABLE `#__discuss_users_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `command` text NOT NULL,
  `created` datetime NOT NULL,
  `content_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_views`;
CREATE TABLE `#__discuss_views` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__discuss_votes`;
CREATE TABLE `#__discuss_votes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `ipaddress` varchar(15) DEFAULT NULL,
  `value` tinyint(2) DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_user_post` (`user_id`,`post_id`),
  KEY `discuss_post_id` (`post_id`),
  KEY `discuss_user_id` (`user_id`),
  KEY `discuss_session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__easyblog_reports`;
CREATE TABLE `#__easyblog_reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj_id` bigint(20) NOT NULL,
  `obj_type` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obj_id` (`obj_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__extensions`;
CREATE TABLE `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10162 DEFAULT CHARSET=utf8;

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"0","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"y-m-d","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"13":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"13","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"855d2d38f817adcac92cf9e6d1bf3b95"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.3","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"6LcCkOoSAAAAAO42pEiUqK_HzJbwR-OxfKcAVd2G","private_key":"6LcCkOoSAAAAAAvriVi8FqhKmeb21J-cLcGmkfkF","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.2","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.2","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"April 3, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.4.8","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'purity_III', 'template', 'purity_iii', '', 0, 1, 1, 0, '{"name":"purity_III","type":"template","creationDate":"22 May 2014","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"1.1.0","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\" title=\\"Purity III Template demo\\">Live Demo<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\" title=\\"purity iii template documentation\\">Documentation<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\" title=\\"purity iii forum\\">Forum<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\" title=\\"Purity III template more info\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10103, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 0, 0, '{"name":"com_jaextmanager","type":"component","creationDate":"May 2013","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.5.7","description":"JA Extension Manager Component","group":""}', '{"MYSQL_PATH":"\\/usr\\/bin\\/mysql","MYSQLDUMP_PATH":"\\/usr\\/bin\\/mysqldump","DATA_FOLDER":"jaextmanager_data","HIDE_NONJA":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10126, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"name":"Kunena Forum Package","type":"package","creationDate":"2015-09-28","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"4.0.6","description":"Kunena Forum Package.","group":"","filename":"pkg_kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10161, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"name":"Kunena Framework","type":"library","creationDate":"2015-09-28","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"4.0.6","description":"Kunena Framework.","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

DROP TABLE IF EXISTS `#__finder_filters`;
CREATE TABLE `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links`;
CREATE TABLE `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms0`;
CREATE TABLE `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms1`;
CREATE TABLE `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms2`;
CREATE TABLE `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms3`;
CREATE TABLE `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms4`;
CREATE TABLE `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms5`;
CREATE TABLE `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms6`;
CREATE TABLE `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms7`;
CREATE TABLE `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms8`;
CREATE TABLE `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_terms9`;
CREATE TABLE `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termsa`;
CREATE TABLE `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termsb`;
CREATE TABLE `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termsc`;
CREATE TABLE `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termsd`;
CREATE TABLE `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termse`;
CREATE TABLE `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_links_termsf`;
CREATE TABLE `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_taxonomy`;
CREATE TABLE `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_taxonomy_map`;
CREATE TABLE `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_terms`;
CREATE TABLE `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_terms_common`;
CREATE TABLE `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_tokens`;
CREATE TABLE `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_tokens_aggregate`;
CREATE TABLE `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__finder_types`;
CREATE TABLE `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__jaem_log`;
CREATE TABLE `#__jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__jaem_services`;
CREATE TABLE `#__jaem_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `#__jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 0, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 1, 1);

DROP TABLE IF EXISTS `#__joomprofile_address`;
CREATE TABLE `#__joomprofile_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `line` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `md5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_config`;
CREATE TABLE `#__joomprofile_config` (
  `id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_field`;
CREATE TABLE `#__joomprofile_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tooltip` varchar(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `css_class` varchar(255) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_field_fieldgroups`;
CREATE TABLE `#__joomprofile_field_fieldgroups` (
  `field_fieldgroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `fieldgroup_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `registration` tinyint(1) NOT NULL DEFAULT '1',
  `params` text,
  PRIMARY KEY (`field_fieldgroup_id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_fieldgroup_id` (`fieldgroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_field_values`;
CREATE TABLE `#__joomprofile_field_values` (
  `field_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `privacy` tinyint(4) NOT NULL DEFAULT '0',
  KEY `idx_field_id` (`field_id`),
  KEY `idx_user_id` (`user_id`),
  FULLTEXT KEY `fullx_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_fieldgroup`;
CREATE TABLE `#__joomprofile_fieldgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `params` text,
  `registration` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_fieldgroup_usergroups`;
CREATE TABLE `#__joomprofile_fieldgroup_usergroups` (
  `fieldgroup_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  KEY `idx_fieldgroup_id` (`fieldgroup_id`),
  KEY `idx_usergroup_id` (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_fieldoption`;
CREATE TABLE `#__joomprofile_fieldoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_field_id` (`field_id`),
  FULLTEXT KEY `fullx_title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_registration`;
CREATE TABLE `#__joomprofile_registration` (
  `id` varchar(255) NOT NULL,
  `usergroups` varchar(255) NOT NULL,
  `values` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_usergroup`;
CREATE TABLE `#__joomprofile_usergroup` (
  `usergroup_id` int(11) NOT NULL,
  `params` text,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__joomprofile_usergroup_searchfields`;
CREATE TABLE `#__joomprofile_usergroup_searchfields` (
  `usergroup_searchfield_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`usergroup_searchfield_id`),
  KEY `idx_usergroup_id` (`usergroup_id`),
  KEY `idx_field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__languages`;
CREATE TABLE `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) binary NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=utf8;

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 117, 126, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 149, 150, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 127, 132, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 147, 148, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 133, 138, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 139, 144, 0, '*', 1),
(565, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 115, 116, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 151, 152, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 145, 146, 0, '*', 1),
(763, 'main', 'COM_JAEXTMANAGER', 'com-jaextmanager', '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 0, 1, 1, 10103, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '', 229, 230, 0, '', 1),
(470, 'main', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 169, 170, 0, '', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 118, 119, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 120, 121, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 122, 123, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 124, 125, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 130, 131, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 128, 129, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 134, 135, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 136, 137, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 142, 143, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 140, 141, 0, '*', 1);
INSERT IGNORE INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 283, 0, '*', 0),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0);

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 'top', 'Top', 'Links for major types of users'),
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(10, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.'),
(11, 'jomsocial', 'JomSocial toolbar', 'Toolbar items for JomSocial toolbar');

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 208, 'Main Menu', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 249, 'Login Form', '', '', 9, 'sidebar-2', 42, '2015-03-31 08:29:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'navhelper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(19, 586, 'User Menu', '', '', 14, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(20, 0, 'Top', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(25, 0, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 272, 'Archived Articles', '', '', 12, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"12","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(29, 0, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 560, 'News Flash', '', '', 3, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["94"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(33, 0, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 0, 'Articles Related Items', '', '', 1, '', 42, '2014-03-31 04:11:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 0, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(37, 0, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 0, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 247, 'Who\'s Online', '', '', 18, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(40, 0, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 0, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(45, 413, 'Menu Example', '', '', 10, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(47, 0, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 0, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(58, 0, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 563, 'Articles Categories', '', '', 6, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"81","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(63, 0, 'Search', '', '', 1, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(65, 0, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 0, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(70, 0, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 0, 'Top Quote (Atomic Template)', '', '<hr />\r\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 0, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 0, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 0, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 0, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(90, 391, 'About us', '', '<p><img src="images/joomlart/corporate/sam-10.jpg" alt="Sample image" class="img-thumbnail" /></p>\r\n\r\n<p>JoomlArt - your best provider for Joomla templates and Joomla extensions since 2006. </p>', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 393, 'Follow us', '', '<p>Didn\'t we got you connected? If not, blame us on not showing you earlier the following magic buttons:</p>\r\n<ul class="social-links">\r\n<li><i class="fa fa-facebook-square"></i> <a href="#" title="Facebook">Facebook</a></li>\r\n<li><i class="fa fa-twitter-square"></i> <a href="#" title="Twitter">Twitter</a></li>\r\n<li><i class="fa  fa-google-plus-square"></i> <a href="#" title="Google plus">Google plus</a></li>\r\n<li><i class="fa  fa-linkedin-square"></i> <a href="#" title="Linked-in">Linked-in</a></li>\r\n</ul>', 1, 'footer-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 399, 'Contact us', '', '<div class="bs-example">\r\n <address>\r\n  <strong>Company name</strong><br />\r\n        Address: 2411 Any Street, <br />\r\nAny Town, <br />\r\n        United Kingdom. <br />\r\n        <abbr title="Phone">Phone:</abbr> +123 456 7890<br />\r\n        <abbr title="Phone">Fax:</abbr> +123 456 7890<br />\r\n        <abbr title="Phone">Mail to:</abbr><a href="mailto:#"> first.last@example.com</a>\r\n</div>', 1, 'footer-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 429, 'T3', '', '<ul>\r\n<li><a href="http://www.joomlart.com/forums/downloads.php">Download</a></li>\r\n<li><a href="#">Release Announcement</a></li>\r\n<li><a href="#">New Features</a></li>\r\n<li><a href="#">Changelog and Details</a></li>\r\n<li><a href="#">Migration FAQs</a></li>\r\n</ul>', 1, 'footer-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 430, 'JoomlArt', '', '<ul>\r\n<li><a href="http://wiki.joomlart.com/wiki/Main_Page">JA Wiki</a></li>\r\n<li><a href="http://www.joomlart.com/joomla/templates-club">Joomla! Themes</a></li>\r\n<li><a href="http://www.joomlart.com/magento/themes-club">Magento Themes</a></li>\r\n<li><a href="http://www.joomlart.com/joomla/extensions-club">Joomla! Extension</a></li>\r\n<li><a href="http://www.joomlart.com/member/contact.php">Contact Us</a></li>\r\n</ul>', 1, 'footer-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 213, 'T3 Masthead 1', '', '<div class="jumbotron masthead">\r\n    <h1>Welcome to T3</h1>\r\n    <p>The all new, modern and flexible framework from JoomlArt.</p>\r\n    <p><a class="btn btn-primary btn-lg" href="http://www.joomlart.com/forums/downloads.php?do=cat&amp;id=460"> Download <span class="hidden-phone">T3 </span> </a></p>\r\n</div>', 1, 'home-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 214, 'T3 Introduction', '', '<img class="img-responsive" src="images/joomlart/banners/t3-banner.png" alt="T3 Framework" />\r\n\r\n<div class="row">\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>The "All New" T3</h2>\r\n  <p>Support the latest Joomla 3, T3 hits the beat with the brand-new look, design approach and incredibly powerful customization feature.</p>\r\n </div>\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>User Centric Design</h2>\r\n  <p>Sleek look, clean coding and elegant design make T3 a sophisticated and user-friendly theme, guarantee to catch the attention right on spot. </p>\r\n</div>\r\n\r\n<div class="col-xs-12 col-sm-4">\r\n  <h2>Developer\'s Freedom</h2>\r\n  <p>Customize and style your theme in a click with the built-in tool developed for T3 only, cherish the endless flexibility it gives you.</p>\r\n</div>\r\n</div>', 1, 'home-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 554, 'T3 Features', '', '<header class="jumbotron">\r\n<h1>Why Purity III?</h1>\r\n<p>A Free Responsive Joomla 3 Template can\'t go wrong</p>\r\n</header>\r\n\r\n<div class="row">\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/responsive-icon.png" alt="Reponsive"></p>\r\n  <h2>Responsive</h2>\r\n  <p>Purity III is a fully responsive Joomla template. It looks amazingly beautiful in all screen sizes: from a wide screen desktop to tablet & mobile devices.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/html5-icon.png" alt="Compatibilities"></p>\r\n  <h2>Compatibilities</h2>\r\n  <p>Purity III is compatible with most of the popular 3rd party Joomla extensions, such as: EasySocial, Kunena, JomSocial, Mijoshop, and more.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/bootstrap-icon.png" alt="Bootstrap 3"></p>\r\n  <h2>Bootstrap 3</h2>\r\n  <p>Purity III embraces Bootstrap 3 at core, meaning it also supports Font Awesome 4, as well as all the cool features Bootstrap 3 Framework has.</p>\r\n</div>\r\n\r\n<div class="col-sm-6 col-md-3">\r\n  <p><img src="images/joomlart/banners/seo-icon.png" alt="SEO friendly"></p>\r\n  <h2>SEO</h2>\r\n  <p>Great design impresses your visitors, but SEO friendly codes bring visitors, drive more <a href="http://www.google.com" target="_blank">Googlers</a> to yours while you\'re sleeping.</p>\r\n</div>\r\n\r\n</div>', 1, 'home-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 0, 'T3 Gallery', '', '<header class="jumbotron">\r\n  <h1>T3 Gallery</h1>\r\n  <p>More to come. Stay tune :) !</p>\r\n</header>\r\n\r\n<div class="row">\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_obelisk" title="JA Obelisk template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-1.png" alt="JA Obelisk template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_magz" title="JA Magz template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-2.png" alt="JA Magz Template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_muzic" title="JA Muzic Template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-3.png" alt="JA Muzic Template" target="_blank">\r\n    </a>\r\n  </div>\r\n <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_fixel" title="JA Fixel template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-4.png" alt="JA Fixel Template">\r\n    </a>\r\n  </div>\r\n</div>\r\n\r\n<div class="row">\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_beranis" title="JA beranis template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-5.png" alt="JA Beranis template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_smashboard" title="JA Smashboard Template" target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-6.png" alt="JA Smashboard Template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_hawkstore" title="JA Hawstore template"  target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-7.png" alt="JA Hawstore template">\r\n    </a>\r\n  </div>\r\n  <div class="col-xs-6 col-sm-3">\r\n    <a class="thumbnail" href="http://www.joomlart.com/demo/#ja_fubix" title="JA Fubix Template"  target="_blank">\r\n      <img class="img-responsive" src="images/joomlart/thumbnails/thumb-8.png" alt="JA Fubix Template">\r\n    </a>\r\n  </div>\r\n</div>', 1, 'home-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 0, 'T3 Masthead 2', '', '<div class="jumbotron masthead">\r\n  <span class="section-arrow-alt"></span>\r\n  <h2>Want to be the first to try our new framework...</h2>\r\n  <p>\r\n    <a class="btn btn-primary btn-lg" href="http://www.joomlart.com/forums/downloads.php?do=cat&amp;id=460"> Download <span class="hidden-phone">T3 </span> </a>\r\n  </p>\r\n</div>\r\n', 1, 'home-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 406, 'Built on T3 Framework', '', '<p>The powerful T3 Framework makes Purity III an extreme flexible for customization especially when it comes to layout configuration, and compatible with all the popular 3rd party extensions out there in the community.</p>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 407, 'Joomla 3 & Bootstrap 3', '', '<p>Purity III is compatible with Joomla 3.x and embraces Bootstrap 3 at core. Comes with all the outstanding cool features in Joomla 3.x core, as well as the changes and improvements Bootstrap 3 Framework has.</p>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 408, 'A Free Joomla template', '', '<p>Purity III is a fully responsive FREE Joomla template. It looks stunning on all screen sizes: from a wide screen to mobile devices. Definitely a responsive Joomla template you would never want to miss out for 2014, We promise.</p>\r\n', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 409, 'Flat Design & Stunning Typo', '', '<p>Sleek look, clean coding and minimalism design, Purity is real flat both front-end and back-end. It is also packed with beautiful typography pages including: Support Policy and Pricing Table that indeed, will come in handy for anyone.</p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 0, 'Position 5', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 0, 'Position 6', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 0, 'Position 7', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 0, 'Position 8', '', 'Curabitur orci hendrerit In rhoncus iaculis ut Quisque convallis sem egestas. Curabitur quis wisi id Fusce neque sem Cras id Curabitur eros. Velit nec tempus ligula sed penatibus dui habitasse tellus Lorem Sed. Elit condimentum dapibus Phasellus Nunc turpis tristique tincidunt ac orci at. Dapibus scelerisque.', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 578, 'Purity III - The best free Joomla Template', '', '<p> </p>\r\n<a href="index.php/layout/new-layouts/features-intro" title="Video"><img src="images/joomlart/demo/video.png" alt="Sample video" /></a>\r\n<p> </p>\r\n<p>Sneakpeak on Purity III - the best free responsive Joomla template of all time!</p>\r\n', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 319, 'Demo Content', '', '', 2, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"dynamic","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["","80"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"1","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 207, 'Main Menu', '', '', 3, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 220, 'Product intro', '', '<p>Dui eu dolor Curabitur pellentesque pellentesque ligula quis et leo neque. Nibh vitae Nam sit eu felis mauris porttitor odio a est. Felis lacinia risus tempus Aenean sagittis tortor Nulla non mattis pharetra. Et vel semper eu tellus lacinia sed semper ac tristique Nulla. Enim vel mattis Nulla sit In Ut Curabitur nonummy suscipit ut. Et feugiat morbi metus tincidunt ante consectetuer nec rutrum nunc at. Tellus Lorem Lorem.</p>', 1, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-primary","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 221, 'Fully Reponsive', '', '<div class="col-md-6 feature-ct pd-feature-ct">\r\n  <h2>Fully Responsive</h2>\r\n  <p>T3 Framework is one of the first responsive Joomla frameworks template. It supports numbers of responsive layouts including: Wide, Normal, XTablet, Tablet and Mobile. </p>\r\n</div>\r\n<div class="col-md-6 feature-img pd-feature-img">\r\n  <img src="http://joomlart.s3.amazonaws.com/images/jat3v3-documents/landing-page/responsive.png" title="Fully responsive joomla framework">\r\n</div>', 2, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-alt","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 222, 'HTML5, Bootstrap and LESS', '', '<div class="col-md-6 feature-img pd-feature-img">\r\n  <img src="http://joomlart.s3.amazonaws.com/images/jat3v3-documents/landing-page/html5_bootstrap.jpg" title="HTML5 and Bootstrap">\r\n</div>\r\n\r\n<div class="col-md-6 feature-ct pd-feature-ct">    \r\n  <h2>HTML5, Bootstrap and LESS</h2>\r\n  <p>HTML 5 ensures web experience and visualization quality that benefits from rich markup and compatibility. With Bootstrap and LESS- the Dynamic Stylesheet language, you can standardize your grid, typography, and modules with less efforts. All are built in T3 Framework at core.</p>\r\n</div>\r\n', 6, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(141, 250, '2 starter themes', '', ' <div class="col-md-6 feature-ct pd-feature-ct">\r\n  <h2>2 starter themes</h2>\r\n  <p>T3 Framework comes with 2 starter themes: the usual T3 Blank template (Bootstrap 2 T3 Blank template) and the new T3 B3 Blank (Bootstrap 3 T3 Blank template). Both looks amazingly stunning on any devices. </p>\r\n </div>\r\n\r\n<div class="col-md-6 feature-img">\r\n  <img src="http://joomlart.s3.amazonaws.com/images/jat3v3-documents/landing-page/2-starter-theme.jpg" title="2 starter themes">\r\n</div>\r\n', 3, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 251, 'Flat design', '', '<div class="col-md-6 feature-img">\r\n<img src="http://joomlart.s3.amazonaws.com/images/jat3v3-documents/landing-page/flat_design.jpg" title="Flat design">\r\n</div>\r\n\r\n<div class="col-md-6 feature-ct pd-feature-ct">\r\n<h2>Flat design</h2>\r\n<p>The T3 Framework 2.0.0 is real Flat, both Front-page and back-end setting panel. It deverses a clean layout and typography.</p>\r\n</div>', 4, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-alt","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 252, 'Megamenu and Off-canvas', '', '<div class="col-md-6 feature-ct pd-feature-ct">\r\n<h2>Megamenu and Off-canvas</h2>\r\n<p>Megamenu and Off-canvas are highlight features in T3 Framework. It allows you to build up a powerful menu system and you are full control.</p>\r\n</div>\r\n\r\n<div class="col-md-6 feature-img">\r\n<img src="http://joomlart.s3.amazonaws.com/images/jat3v3-documents/landing-page/megamenu_offcanvas.png" title="megamenu and off-canvas">\r\n</div>\r\n', 5, 'features-intro-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(163, 345, 'Blog Categories', '', '', 4, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"87","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(165, 348, 'Blog Tags', '', '', 17, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":1,"no_results_text":"0","minsize":1,"maxsize":2,"layout":"_:cloud","moduleclass_sfx":"","owncache":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(166, 349, 'Important Articles ', '', '', 3, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["94","95","96","97"],"show_child_category_articles":"0","levels":"2","author_filtering_type":"1","author_alias_filtering_type":"1","created_by_alias":["Joomla"],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(167, 354, 'Magazine - Articles', '', '', 1, 'magazine-articles', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"85","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"purity_iii:magazine","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","extra-count":"4","extra-show-subcat":"0"}', 0, '*'),
(168, 362, 'Magazine - Other articles', '', '', 1, 'after-content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"dynamic","show_on_article_page":"1","show_front":"show","count":"8","category_filtering_type":"1","catid":["85"],"show_child_category_articles":"1","levels":"2","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"1","show_author":"1","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(177, 373, 'How we work', '', '<p><img src="images/joomlart/corporate/sam-1.jpg" alt="Sample image" class="img-responsive" /></p>\r\n<h3>At the first glance</h3>\r\n<p>T3 Framework. Joomla 3. Bootstrap 3.  Responsive. Customizable. Multi-style. Flat and typographic design.</p>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(178, 374, 'Success Stories', '', '<p><img src="images/joomlart/corporate/sam-2.jpg" alt="Sample image 2" class="img-responsive" /></p>\r\n<h3>Purity Series Stories </h3>\r\n<p>2007: Purity, default Joomla template.\r\n<br>2009: free Joomla template JA Purity II.\r\n<br>2014: it\'s Purity III\'s time to rock.</p>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(179, 375, 'Let\'s connect', '', '<p><img src="images/joomlart/corporate/sam-3.jpg" alt="Sample image" class="img-responsive" /></p>\r\n<h3>What\'s more?</h3>\r\n<p><strong>Purity III</strong> is ready for numerous of the most pupular 3rd party extensions in the market! And the list is yet to complete.</p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(181, 377, 'Slideshow', '', '<div class="container">\r\n\r\n<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">\r\n  <!-- Indicators -->\r\n  <ol class="carousel-indicators">\r\n    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>\r\n    <li data-target="#carousel-example-generic" data-slide-to="1"></li>\r\n    <li data-target="#carousel-example-generic" data-slide-to="2"></li>\r\n  </ol>\r\n\r\n  <!-- Wrapper for slides -->\r\n  <div class="carousel-inner">\r\n\r\n    <div class="item active">\r\n     <img src="images/joomlart/slideshow/sl-1.jpg" alt="Sample image" />\r\n      <div class="carousel-caption">\r\n      <h2>Your perfect starting template, Purity III</h2>\r\n      <p>Either it\'s your first time with Joomla or you are a developer already, Purity III won\'t let you down.</p>\r\n     </div>\r\n    </div>\r\n\r\n    <div class="item">\r\n      <img src="images/joomlart/slideshow/sl-2.jpg" alt="Sample image" />\r\n      <div class="carousel-caption">\r\n      <h2>This is the best FREE Joomla 3 template!</h2>\r\n      <p>We have drunken too much of the best… but this repsonsive Joomla template truly is, and IT\'S FREE!</p>\r\n     </div>\r\n    </div>\r\n    <div class="item">\r\n      <img src="images/joomlart/slideshow/sl-3.jpg" alt="Sample image" />\r\n      <div class="carousel-caption">\r\n      <h2>The next generation of Purity series</h2>\r\n      <p>Sophisticated in Design, Brilliant in Features. That\'s how we define Purity Series.</p>\r\n     </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- Controls -->\r\n  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">\r\n    <span class="glyphicon glyphicon-chevron-left"></span>\r\n  </a>\r\n  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">\r\n    <span class="glyphicon glyphicon-chevron-right"></span>\r\n  </a>\r\n</div>\r\n\r\n</div>', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(182, 387, 'Testimonials', '', '<div class="well" style="margin-bottom: 0;">\r\n<blockquote style="margin-bottom: 0;">\r\n  <p>I\'m in need of a FREE responsive Joomla template, which definitely has to be on T3 Framework. Something easy to customize, powerful in functions, quick to set it up, something to write blog and post news at the same time. Now I\'ve got Purity III. Totally satisfied.</p>\r\n  <small>Melisa Monroe in <cite title="Source Title">Somewhere over Joomla world</cite></small>\r\n</blockquote>\r\n</div>\r\n', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(183, 388, 'Business Joomla template', '', '<p><img src="images/joomlart/corporate/sam-6.jpg" alt="Sample image" class="img-thumbnail" /></p>\r\n<p>This is how your eCommerce Joomla template looks with Purity III. </p>', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(184, 389, 'Blog Joomla template', '', '<p><img src="images/joomlart/corporate/sam-7.jpg" alt="Sample image" class="img-thumbnail" /></p>\r\n<p> This is how your Joomla template for personal blog looks with Purity III.</p>', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(185, 390, 'News Joomla template', '', '<p><img src="images/joomlart/corporate/sam-8.jpg" alt="Sample image" class="img-thumbnail" /></p>\r\n\r\n<p> This is how your Joomla template for news looks with Purity III. </p>', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(189, 397, 'Why we do it', '', '<p><img src="images/joomlart/corporate/sam-4.jpg" alt="Sample image" class="img-responsive" /></p>\r\n<h3>How this rocks</h3>\r\n<p>With this free Joomla template, you can create a whole fresh site in 5 minutes. Woo hoo!</p>', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(190, 398, 'Portfolio Joomla template', '', '<p><img src="images/joomlart/corporate/sam-9.jpg" alt="Sample image" class="img-thumbnail" /></p>\r\n\r\n<p>This is how your Joomla template for portfolio looks with Purity III.</p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(191, 400, 'Blog post', '', '', 1, 'footer-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"3","category_filtering_type":"1","catid":["94","95","96","97"],"show_child_category_articles":"0","levels":"3","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(192, 403, 'Popular post', '', '', 1, 'tab-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 0, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["90","89","91","92","93"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.hits","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"1","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(193, 404, 'Sample Banner 1', '', '<a href="#" title="Sample banner"><img class="img-responsive" src="images/joomlart/banners/sb-1.jpg" alt="Sample banner" /></a>', 7, 'sidebar-2', 42, '2015-03-24 08:53:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(194, 405, 'Custom tabs', '', '<!-- Nav tabs -->\r\n<ul class="nav nav-tabs">\r\n  <li class="active"><a href="#popular" data-toggle="tab">Latest post</a></li>\r\n  <li><a href="#latest" data-toggle="tab">Most read</a></li>\r\n</ul>\r\n\r\n<!-- Tab panes -->\r\n<div class="tab-content">\r\n  <div class="tab-pane active" id="popular">{loadposition tab-1}</div>\r\n  <div class="tab-pane" id="latest">{loadposition tab-2}</div>\r\n</div>\r\n', 8, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(195, 411, 'Most read', '', '', 1, 'tab-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 0, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["90","89","91","92","93"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.created","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"1","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"1","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(196, 414, 'Joomla', '', '<ul>\r\n<li><a href="#" title="Joomla template">Joomla template</a></li>\r\n<li><a href="#" title="Joomla extension">Joomla extension</a></li>\r\n<li><a href="#" title="Joomla module">Joomla module</a></li>\r\n<li><a href="#" title="Joomla plugin">Joomla plugin</a></li>\r\n<li><a href="#" title="Joomla 3 template">Joomla 3 template</a></li>\r\n</ul>', 1, 'footer-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(197, 415, 'Bootstrap 3', '', '<ul>\r\n<li><a href="#" title="Joomla">Joomla</a></li>\r\n<li><a href="#" title="Bootstrap">Bootstrap</a></li>\r\n<li><a href="#" title="Joomla 2.5">Joomla 2.5</a></li>\r\n<li><a href="#" title="Joomla 3.2">Joomla 3.2</a></li>\r\n<li><a href="#" title="T3 framework template">T3 framework template</a></li>\r\n</ul>', 1, 'footer-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(198, 416, 'Framework', '', '<ul>\r\n<li><a href="#" title="T3 template">T3 template</a></li>\r\n<li><a href="#" title="T3 Framework">T3 Framework</a></li>\r\n<li><a href="#" title="Joomla framework">Joomla framework</a></li>\r\n<li><a href="#" title="Template framework">Template framework</a></li>\r\n\r\n<li><a href="#" title="Responsive template">Responsive template</a></li>\r\n</ul>', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(199, 417, 'Typography', '', '<ul>\r\n<li><a href="#" title="Responsive">Responsive</a></li>\r\n<li><a href="#" title="Font Awesome 4">Font Awesome 4</a></li>\r\n<li><a href="#" title="Multiple layouts">Multiple layouts</a></li>\r\n<li><a href="#" title="Multiple layouts">Multiple layouts</a></li>\r\n<li><a href="#" title="Compatible Extensions">Compatible Extensions</a></li>\r\n</ul>', 1, 'footer-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(200, 422, 'Masthead', '', '<div class="jumbotron jumbotron-primary masthead">\r\n  <h1>Hello, I\'m Purity III</h1>\r\n  <p>Now back and way cooler.</p>\r\n  <p class="btn-actions"><a href="http://bit.ly/purity_iii" class="btn btn-primary btn-lg">Check me out</a></p>\r\n</div>', 1, 'masthead', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-primary","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(202, 443, 'Feature 1', '', '<div class="text-center">\r\n<div class="item-image"><img class="img-responsive" pagespeed_url_hash="557298203" alt="T3 Framework" src="images/joomlart/intro-page/fullresponsive.png"></div>\r\n\r\n<div class="col-md-4">\r\n  <h3>The Perfect Starting Point</h3>\r\n  <p>Purity III is a GREAT starter theme for any Joomla lovers. It allows YOU to get started in minutes, and highly versatile to fit in any type of projects</p>\r\n </div>\r\n\r\n<div class="col-md-4">\r\n  <h3>Joomla 3 Native</h3>\r\n  <p>Purity III supports Joomla 3 at core. The sleek look, clean code and flat design sets it stand out and guarantee to capture anyone\'s attention</p>\r\n</div>\r\n\r\n<div class="col-md-4">\r\n  <h3>Easy to Customize</h3>\r\n  <p>Purity III is extremely flexible to customize. Thanks to the powerful T3 Framework, which makes all the impossibilities possible</p>\r\n</div>\r\n\r\n</div>', 1, 'features-intro-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(203, 444, 'Supports multiple layouts', '', '<header class="jumbotron">\r\n<h2>Supports Multiple Layouts</h2>\r\n<p>8 layouts with dynamic and flexible grids</p>\r\n</header>\r\n\r\n<div class="gallery">\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="magazine layout" href="index.php/layout/new-layouts/magazine">\r\n        <img pagespeed_url_hash="2579736203" alt="" src="images/joomlart/supported-layout/magazine.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Magazine Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="Coperate layout" href="index.php/layout/new-layouts//corporate">\r\n          <img pagespeed_url_hash="2874236124" alt="" src="images/joomlart/supported-layout/corporate.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Corporate Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="blog layout" href="index.php/layout/new-layouts/blog">\r\n        <img pagespeed_url_hash="3168736045" target="_blank" alt="" src="images/joomlart/supported-layout/blog.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Blog Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="features intro 1" href="index.php/layout/new-layouts/features-intro">\r\n        <img pagespeed_url_hash="3757735887" alt="" src="images/joomlart/supported-layout/features_1.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Features Intro 1 Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="features intro 2" href="http://joomla-templates.joomlart.com/purity_iii/">\r\n        <img pagespeed_url_hash="4052235808" alt="" src="images/joomlart/supported-layout/features_2.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Features Intro 2 Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="portfolio layout" href="index.php/layout/new-layouts/portfolio">\r\n        <img pagespeed_url_hash="3463235966" alt="" src="images/joomlart/supported-layout/portfolio.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Portfolio Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="" href="index.php/layout/new-layouts/glossary">\r\n        <img alt="" src="images/joomlart/supported-layout/glossary.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Glossary Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-3">\r\n    <div class="thumbnail">\r\n      <a target="_blank" title="" href="index.php/layout/class-layout/default-layout">\r\n        <img alt="" src="images/joomlart/supported-layout/classic_layout.png" class="img-responsive">\r\n      </a>\r\n      <h4 class="text-center">Classic Layout</h4>\r\n    </div>\r\n  </div>\r\n\r\n</div>', 3, 'features-intro-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(204, 445, 'Why Purity III?', '', '<header class="jumbotron">\r\n<h2>Why Purity III?</h2>\r\n<p>A Free Responsive Joomla 3 Template that no one can resist</p>\r\n</header>\r\n\r\n<div class="text-center">\r\n\r\n<div class="col-md-3">\r\n  <p><img pagespeed_url_hash="932791188" alt="Responsive" src="images/joomlart/banners/responsive-icon.png" /></p>\r\n  <h3>Responsive</h3>\r\n  <p>Purity III is a fully responsive Joomla template. It looks amazingly beautiful in all screen sizes: from a wide screen desktop to tablet & mobile devices</p>\r\n</div>\r\n\r\n<div class="col-md-3">\r\n  <p><img pagespeed_url_hash="2048194936" alt="Compatibilities" src="images/joomlart/banners/html5-icon.png"></p>\r\n  <h3>Compatibilities</h3>\r\n  <p>Purity III is compatible with most of the popular 3rd party Joomla extensions, such as: EasySocial, Kunena, JomSocial, Mijoshop, etc</p>\r\n</div>\r\n\r\n<div class="col-md-3">\r\n  <p><img pagespeed_url_hash="1985577692" alt="Bootstrap 3" src="images/joomlart/banners/bootstrap-icon.png"></p>\r\n  <h3>Bootstrap 3</h3>\r\n  <p>Purity III embraces Bootstrap 3 at core, meaning it also supports Font Awesome 4, as well as all the cool features in Bootstrap 3 Framework</p>\r\n</div>\r\n\r\n<div class="col-md-3">\r\n  <p><img pagespeed_url_hash="1616445301" alt="SEO" src="images/joomlart/banners/seo-icon.png"></p>\r\n  <h3>SEO</h3>\r\n  <p>Great design impresses your visitors, but SEO friendly codes bring visitors, drive more <a target="_blank" href="http://www.google.com">Googlers</a> to yours while you\'re sleeping</p>\r\n</div>\r\n\r\n</div>', 4, 'features-intro-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(205, 446, 'Want to be the first to try our Purity III', '', '<div class="container jumbotron masthead" style="margin:0;">\r\n  <span class="section-arrow-alt"></span>\r\n  <p>Want to be the first to try our Purity III...</p>\r\n<div class="btn-actions">\r\n    <a class="btn btn-success btn-lg" role="button" href="http://bit.ly/purity_iii">Download <span class="hidden-phone">Purity III</span></a>\r\n  </div>\r\n</div>', 5, 'features-intro-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-primary","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(206, 449, 'Team members', '', '<div class="media">\r\n  <a href="#" class="pull-left"><img src="images/joomlart/corporate/staff-1.jpg" alt="Sample image" style="width: 60px;" class="img-thumbnail" /></a>\r\n  <div class="media-body">\r\n  <h4 class="media-heading">Scott Singleton</h4>\r\n    <strong><small>CEO Director</small></strong><br />\r\n    <small><a href="mailto:ceo@your-domain.com">ceo@your-domain.com</a></small>\r\n  </div>\r\n</div>\r\n\r\n<div class="media">\r\n  <a href="#" class="pull-left"><img src="images/joomlart/corporate/staff-2.jpg" alt="Sample image" style="width: 60px;" class="img-thumbnail" /></a>\r\n  <div class="media-body">\r\n  <h4 class="media-heading">Marie Hall</h4>\r\n    <strong><small>Managing Director</small></strong><br />\r\n    <small><a href="mailto:sale@your-domain.com">sale@your-domain.com</a></small>\r\n  </div>\r\n</div>\r\n\r\n<div class="media">\r\n  <a href="#" class="pull-left"><img src="images/joomlart/corporate/staff-3.jpg" alt="Sample image" style="width: 60px;" class="img-thumbnail" /></a>\r\n  <div class="media-body">\r\n  <h4 class="media-heading">Mamie Ray</h4>\r\n    <strong><small>Sales manager</small></strong><br />\r\n    <small><a href="mailto:ceo@your-domain.com">sales@your-domain.com</a></small>\r\n  </div>\r\n</div>\r\n\r\n<div class="media">\r\n  <a href="#" class="pull-left"><img src="images/joomlart/corporate/staff-4.jpg" alt="Sample image" style="width: 60px;" class="img-thumbnail" /></a>\r\n  <div class="media-body">\r\n  <h4 class="media-heading">Johnny Payne</h4>\r\n    <strong><small>Creative director</small></strong><br />\r\n    <small><a href="mailto:ceo@your-domain.com">design@your-domain.com</a></small>\r\n  </div>\r\n</div>', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(207, 450, 'Our partners', '', '<img src="images/joomlart/corporate/partners.gif" alt="Sample image" class="image-reponsive" />', 24, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(210, 555, 'Compatible Extensions', '', '<header class="jumbotron">\r\n  <h2>Highly Compatible</h2>\r\n  <p>Purity III is highly compatible with most of the 3rd party Joomla extensions</p>\r\n</header>\r\n\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/compatible/easyblog">\r\n      <img src="images/joomlart/compatible-extension/easyblog.png" alt="Easy Blog" />\r\n    </a>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/compatible/easysocial">\r\n      <img src="images/joomlart/compatible-extension/easysocial.png" alt="easysocial" />\r\n    </a>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/compatible/discussions">\r\n      <img src="images/joomlart/compatible-extension/easydiscuss.png" border="0" alt="easydiscuss" />\r\n    </a>\r\n  </div>\r\n\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/forum/index">\r\n      <img src="images/joomlart/compatible-extension/kunena.png" border="0" alt="Kunena" />\r\n    </a>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/compatible/jomsocial">\r\n      <img src="images/joomlart/compatible-extension/jomsocial.png" border="0" alt="JomSocial" />\r\n    </a>\r\n  </div>\r\n\r\n  <div class="col-xs-6 col-md-4">\r\n    <a class="thumbnail" href="index.php/compatible/mijoshop">\r\n      <img src="images/joomlart/compatible-extension/mijoshop-logo.png" border="0" alt="mijoshop" />\r\n    </a>\r\n  </div>\r\n\r\n<div class="wrap btn-actions text-center">\r\n    <a class="btn btn-primary btn-lg" role="button" href="http://bit.ly/purity_iii">More detail?</a>\r\n  </div>', 2, 'features-intro-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(211, 564, 'Sidebar 1', '', '<p>Leo Sed nibh ut ac magnis Nam hendrerit lacus convallis massa. Laoreet sed hendrerit et et penatibus tellus et Curabitur lacinia Curabitur. Dis quis semper fringilla Nam pellentesque ipsum id odio scelerisque congue. Et nunc risus Pellentesque sapien malesuada ligula orci tristique adipiscing malesuada. Pede molestie Aenean risus orci id lorem Nullam felis orci velit. </p>\r\n\r\n<p>Hendrerit eu ut id dolor nibh nisl vel augue adipiscing leo. At faucibus Lorem mauris elit Sed vel neque nibh tellus adipiscing. Sagittis dui lacus vitae convallis pretium montes pretium.</p>', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(212, 565, 'Sidebar 2', '', '<p>Leo Sed nibh ut ac magnis Nam hendrerit lacus convallis massa. Laoreet sed hendrerit et et penatibus tellus et Curabitur lacinia Curabitur. Dis quis semper fringilla Nam pellentesque ipsum id odio scelerisque congue. Et nunc risus Pellentesque sapien malesuada ligula orci tristique adipiscing malesuada. Pede molestie Aenean risus orci id lorem Nullam felis orci velit.</p>\r\n\r\n<p>Porta dapibus laoreet id ut Vestibulum Phasellus magna eros quis gravida. Faucibus Nunc tortor ac enim non ut Nam vitae Nunc ornare. Convallis id nibh id orci ligula Cum nulla Curabitur et aliquam. Auctor augue aliquam magna mi massa parturient Sed Nullam at orci. <a href="#" title="Sample link">Pede nunc condimentum.</a></p>', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(213, 566, 'After content', '', '<p>Nam pellentesque ipsum id odio scelerisque congue. Et nunc risus Pellentesque sapien malesuada ligula orci tristique adipiscing malesuada. Pede molestie Aenean risus orci id lorem Nullam felis orci velit.</p>', 1, 'after-content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(214, 567, 'Footer 1', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(215, 568, 'Footer 2', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(216, 569, 'Footer 5', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(217, 570, 'Footer 3', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(218, 571, 'Footer 4', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(219, 572, 'Footer 6', '', '<ul>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n<li><a href="#" title="Sample link">Sample link</a></li>\r\n</ul>', 1, 'footer-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(221, 576, 'Purity III and its stunning typography', '', '<img src="images/joomlart/demo/typography.png" alt="Sample image">', 1, 'mega', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(224, 580, 'T3 Framework', '', '<a href="http://demo.t3-framework.org/joomla30/" class="btn btn-block btn-lg btn-default">Live Demo</a>\r\n<a href="http://t3-framework.org/downloads.html" class="btn btn-block btn-lg btn-default">Download</a>\r\n<a href="http://t3-framework.org/whats-new.html" class="btn btn-block btn-lg btn-default">More Info</a>', 2, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(225, 581, 'Purity III Template', '', '<img class="img-responsive" src="images/joomlart/demo/responsive.png" alt="Purity iii - The best free responsive Joomla template for Joomla 3" style="margin-bottom: 20px;" />\r\n\r\n<p class="text-center">Purity III is the best responsive Joomla template that you won\'t get enough of for almost everything...</p>\r\n\r\n<ul class="nav nav-pills nav-stacked">\r\n      <li class="active"><a href="http://bit.ly/purity_iii">Purity III Template</a></li>\r\n      <li class=""><a href="/purity_iii/index.php/layout">Multiple Layouts</a></li>\r\n      <li class=""><a href="/purity_iii/index.php/compatible">Supported 3rd Extensions</a></li>\r\n      <li class=""><a href="http://bit.ly/purity_iii">Download Purity III</a></li>\r\n<li class=""><a href="http://bit.ly/purity_iii">More Info</a></li>\r\n<li class=""><a href="http://www.joomlart.com/documentation/joomla-templates/purity-iii">Documentation</a></li>\r\n<li class=""><a href="http://www.joomlart.com/forums/forumdisplay.php?542-Purity-III">Get Support</a></li>\r\n</ul>', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(226, 585, 'Purity III video', '', '<div class="jumbotron jumbotron-primary masthead">\r\n  <div class="col-md-6" align="left">\r\n    <h1>I\'m Purity III</h1>\r\n    <p>The best free Joomla template that you ever need.</p>\r\n    <div class="btn-actions" style="margin-bottom: 20px;"><p><a href="http://bit.ly/purity_iii" class="btn btn-success btn-lg">Download Now</a></p></div>\r\n  </div>\r\n\r\n  <div class="col-md-6">\r\n    <div class="video-wrapper">\r\n      <iframe width="560" height="315" frameborder="0" src="//www.youtube.com/embed/KSK2OR9pEUY?modestbranding=1&amp;;showinfo=0&amp;;autohide=1&amp;;rel=0&amp;;hd=1&amp;html5=1" allowfullscreen=""></iframe>\r\n    </div>\r\n  </div>\r\n</div>', 1, 'masthead', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" row-feature-primary","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","masthead-title":"Masthead title","masthead-slogan":""}', 0, '*'),
(228, 591, 'Portfolio Articles ', '', '', 3, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"5","category_filtering_type":"1","catid":["83"],"show_child_category_articles":"0","levels":"2","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(229, 593, 'Sample Profiles', '', '<ul class="nav nav-pills nav-stacked">\r\n<li><a href="index.php?option=com_joomprofile&view=profile&task=user.display&id=553&Itemid=765">Profile 1</a></li>\r\n<li><a href="index.php?option=com_joomprofile&view=profile&task=user.display&id=550&Itemid=765">Profile 2</a></li>\r\n<li><a href="index.php?option=com_joomprofile&view=profile&task=user.display&id=548&Itemid=765">Profile 3</a></li>\r\n<li><a href="index.php?option=com_joomprofile&view=profile&task=user.display&id=549&Itemid=765">Profile 4</a></li>\r\n<li><a href="index.php?option=com_joomprofile&view=profile&task=user.display&id=551&Itemid=765">Profile 5</a></li>\r\n</ul>', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 537),
(1, 548),
(1, 550),
(1, 551),
(1, 558),
(1, 566),
(1, 652),
(1, 653),
(1, 744),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 537),
(16, 540),
(16, 542),
(16, 545),
(16, 549),
(16, 567),
(16, 653),
(16, 707),
(16, 710),
(16, 712),
(16, 713),
(16, 744),
(16, 765),
(17, 0),
(19, 201),
(19, 207),
(19, 444),
(19, 449),
(19, 450),
(19, 464),
(19, 468),
(19, 469),
(19, 540),
(19, 542),
(19, 543),
(20, 0),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, 435),
(26, 533),
(26, 540),
(26, 542),
(26, 543),
(26, 545),
(26, 567),
(26, 568),
(26, 569),
(26, 570),
(26, 652),
(26, 653),
(26, 694),
(27, 325),
(27, 694),
(29, 302),
(30, 410),
(31, 558),
(31, 744),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(37, 311),
(38, 300),
(39, 545),
(39, 709),
(40, 313),
(41, 0),
(45, 540),
(45, 709),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 537),
(61, 540),
(61, 542),
(61, 545),
(61, 653),
(63, 0),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(79, 0),
(84, 467),
(86, 0),
(87, 534),
(87, 538),
(88, 534),
(88, 538),
(89, 238),
(89, 427),
(89, 429),
(89, 430),
(89, 431),
(89, 432),
(89, 433),
(89, 462),
(89, 463),
(90, 568),
(92, 568),
(93, 568),
(94, 567),
(95, 567),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 536),
(101, 540),
(102, 536),
(102, 540),
(103, 536),
(103, 540),
(104, 536),
(104, 540),
(105, 536),
(106, 536),
(107, 536),
(108, 536),
(112, 0),
(113, 537),
(113, 548),
(113, 558),
(113, 652),
(113, 653),
(114, 0),
(119, 0),
(120, 0),
(121, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(141, 0),
(142, 0),
(143, 0),
(147, 634),
(158, 693),
(159, 693),
(160, 693),
(161, 693),
(163, 694),
(163, 709),
(163, 744),
(165, 694),
(166, 694),
(166, 744),
(167, 0),
(168, 567),
(169, 634),
(170, 634),
(171, 634),
(172, 634),
(175, 0),
(176, 0),
(177, 568),
(178, 568),
(179, 568),
(181, 568),
(182, 568),
(183, 568),
(184, 568),
(185, 568),
(186, 707),
(186, 710),
(186, 712),
(186, 713),
(187, 707),
(187, 710),
(187, 712),
(187, 713),
(189, 568),
(190, 568),
(191, 568),
(192, 567),
(193, 567),
(194, 567),
(195, 567),
(196, 567),
(197, 567),
(198, 567),
(199, 567),
(200, 721),
(202, 721),
(203, 721),
(204, 721),
(205, 721),
(206, 549),
(206, 568),
(206, 744),
(207, 568),
(208, 707),
(208, 710),
(208, 712),
(208, 713),
(210, 0),
(211, 536),
(212, 536),
(213, 536),
(214, 536),
(215, 536),
(216, 536),
(217, 536),
(218, 536),
(219, 536),
(221, 0),
(224, 0),
(225, 0),
(226, 570),
(228, 0),
(229, 765),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(242, 0),
(243, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0);

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__overrider`;
CREATE TABLE `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__postinstall_messages`;
CREATE TABLE `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__redirect_links`;
CREATE TABLE `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__schemas`;
CREATE TABLE `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__session`;
CREATE TABLE `#__session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_access`;
CREATE TABLE `#__social_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_access_logs`;
CREATE TABLE `#__social_access_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rule` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `utype` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rule` (`rule`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_utypes` (`uid`,`utype`),
  KEY `idx_created` (`created`),
  KEY `idx_useritems` (`rule`,`user_id`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_access_rules`;
CREATE TABLE `#__social_access_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `extension` (`extension`),
  KEY `element` (`element`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_albums`;
CREATE TABLE `#__social_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `caption` text NOT NULL,
  `created` datetime NOT NULL,
  `assigned_date` datetime NOT NULL,
  `ordering` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `core` tinyint(3) NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `user_id` (`user_id`),
  KEY `idx_albums_user_assigned` (`uid`,`type`,`assigned_date`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_albums_favourite`;
CREATE TABLE `#__social_albums_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_alert`;
CREATE TABLE `#__social_alert` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  `email` int(1) NOT NULL DEFAULT '1',
  `system` int(1) NOT NULL DEFAULT '1',
  `core` int(1) NOT NULL DEFAULT '0',
  `app` int(1) NOT NULL DEFAULT '0',
  `field` tinyint(3) NOT NULL DEFAULT '0',
  `group` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_alert_field` (`field`),
  KEY `idx_alert_published` (`published`),
  KEY `idx_alert_element` (`element`),
  KEY `idx_alert_rule` (`rule`),
  KEY `idx_alert_published_field` (`published`,`field`),
  KEY `idx_alert_isfield` (`published`,`field`,`element`(64),`rule`(64))
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_alert_map`;
CREATE TABLE `#__social_alert_map` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT '0',
  `alert_id` bigint(20) NOT NULL,
  `email` int(1) DEFAULT '1',
  `system` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_alertmap_alertid` (`alert_id`),
  KEY `idx_alertmap_userid` (`user_id`),
  KEY `idx_alertmap_alertuser` (`alert_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_apps`;
CREATE TABLE `#__social_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `core` tinyint(4) NOT NULL DEFAULT '0',
  `system` tinyint(3) NOT NULL DEFAULT '0',
  `unique` tinyint(4) NOT NULL DEFAULT '0',
  `default` tinyint(3) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'It could be widgets,fields or applications',
  `element` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `widget` tinyint(3) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `installable` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `type` (`type`),
  KEY `core` (`core`),
  KEY `idx_default_widget` (`state`,`group`,`widget`,`default`),
  KEY `idx_group` (`group`),
  KEY `idx_apps_element` (`element`),
  KEY `idx_apps_type_group` (`type`(64),`group`(64))
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_apps_calendar`;
CREATE TABLE `#__social_apps_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `reminder` tinyint(3) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `all_day` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_apps_map`;
CREATE TABLE `#__social_apps_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `app_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_uid_type` (`app_id`,`uid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_apps_views`;
CREATE TABLE `#__social_apps_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `view` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_view` (`app_id`,`view`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_avatars`;
CREATE TABLE `#__social_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary ID',
  `uid` int(11) NOT NULL COMMENT 'Node''s ID',
  `type` varchar(255) NOT NULL,
  `avatar_id` bigint(20) NOT NULL COMMENT 'If the node is using a default avatar, this field will be populated with an id.',
  `photo_id` int(11) NOT NULL COMMENT 'If the avatar is created from a photo, this field will be populated with the photo id.',
  `small` text NOT NULL,
  `medium` text NOT NULL,
  `square` text NOT NULL,
  `large` text NOT NULL,
  `modified` datetime NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `avatar_id` (`avatar_id`),
  KEY `photo_id` (`photo_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_storage_cron` (`storage`,`avatar_id`,`small`(64))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_badges`;
CREATE TABLE `#__social_badges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `howto` text NOT NULL,
  `avatar` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `frequency` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discuss_badges_alias` (`alias`),
  KEY `discuss_badges_published` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_badges_history`;
CREATE TABLE `#__social_badges_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achieved` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_badges_maps`;
CREATE TABLE `#__social_badges_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badge_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `badge_id` (`badge_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_block_users`;
CREATE TABLE `#__social_block_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`target_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_targetid` (`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_bookmarks`;
CREATE TABLE `#__social_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `uid` int(11) NOT NULL COMMENT 'The bookmarked item id',
  `type` varchar(255) NOT NULL COMMENT 'The bookmarked type',
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'The owner of the bookmarked item',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `user_id` (`user_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_user_utype` (`uid`,`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_broadcasts`;
CREATE TABLE `#__social_broadcasts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `link` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_broadcast` (`target_id`,`target_type`,`state`,`created`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_clusters`;
CREATE TABLE `#__social_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `cluster_type` varchar(255) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `creator_uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  `hits` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `key` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `parent_type` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL COMMENT 'The longitude value of the event for proximity search purposes',
  `latitude` varchar(255) NOT NULL COMMENT 'The latitude value of the event for proximity search purposes',
  `address` text NOT NULL COMMENT 'The full address value of the event for displaying purposes',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `featured` (`featured`),
  KEY `idx_state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_clusters_categories`;
CREATE TABLE `#__social_clusters_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL COMMENT 'The creator of the category',
  `ordering` tinyint(3) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_clusters_categories_access`;
CREATE TABLE `#__social_clusters_categories_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'create',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`profile_id`),
  KEY `category_id_2` (`category_id`,`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_clusters_news`;
CREATE TABLE `#__social_clusters_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `hits` int(11) NOT NULL,
  `comments` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_clusters_nodes`;
CREATE TABLE `#__social_clusters_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(4) NOT NULL,
  `owner` tinyint(3) NOT NULL,
  `admin` tinyint(3) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `reminder_sent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`,`state`),
  KEY `invited_by` (`invited_by`),
  KEY `idx_clusters_nodes_uid` (`uid`),
  KEY `idx_clusters_nodes_user` (`uid`,`state`,`created`),
  KEY `idx_members` (`cluster_id`,`type`,`state`),
  KEY `idx_reminder_sent` (`reminder_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_comments`;
CREATE TABLE `#__social_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `depth` bigint(10) DEFAULT '0',
  `parent` bigint(20) DEFAULT '0',
  `child` bigint(20) DEFAULT '0',
  `lft` bigint(20) DEFAULT '0',
  `rgt` bigint(20) DEFAULT '0',
  `stream_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `social_comments_uid` (`uid`),
  KEY `social_comments_type` (`element`),
  KEY `social_comments_createdby` (`created_by`),
  KEY `social_comments_content_type` (`element`,`uid`),
  KEY `social_comments_content_type_by` (`element`,`uid`,`created_by`),
  KEY `social_comments_content_parent` (`element`,`uid`,`parent`),
  KEY `idx_comment_batch` (`stream_id`,`element`,`uid`),
  KEY `idx_comment_stream_id` (`stream_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_config`;
CREATE TABLE `#__social_config` (
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `value_binary` blob,
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_conversations`;
CREATE TABLE `#__social_conversations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `lastreplied` datetime NOT NULL,
  `type` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_conversations_message`;
CREATE TABLE `#__social_conversations_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `message` text,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_conversations_message_maps`;
CREATE TABLE `#__social_conversations_message_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - publish, 2 - archive, 3 - trash',
  PRIMARY KEY (`id`),
  KEY `node_id` (`user_id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `message_id` (`message_id`),
  KEY `idx_user_conversation` (`user_id`,`state`,`conversation_id`,`message_id`),
  KEY `idx_user_conversation_isread` (`user_id`,`state`,`isread`,`conversation_id`,`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_conversations_participants`;
CREATE TABLE `#__social_conversations_participants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_conversation_maps_conversation_id` (`conversation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_covers`;
CREATE TABLE `#__social_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary ID',
  `uid` int(11) NOT NULL COMMENT 'Node''s ID',
  `type` varchar(255) NOT NULL,
  `photo_id` int(13) NOT NULL COMMENT 'If the node is using a default avatar, this field will be populated with an id.',
  `cover_id` int(11) NOT NULL,
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avatar_id` (`photo_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_default_avatars`;
CREATE TABLE `#__social_default_avatars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `large` text NOT NULL,
  `medium` text NOT NULL,
  `small` text NOT NULL,
  `square` text NOT NULL,
  `default` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `system` (`default`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_default_covers`;
CREATE TABLE `#__social_default_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `large` text NOT NULL,
  `small` text NOT NULL,
  `default` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`type`),
  KEY `system` (`default`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_discussions`;
CREATE TABLE `#__social_discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'This determines if this is a reply to a discussion. If it is a reply, it should contain the parent''s id here.',
  `uid` int(11) NOT NULL COMMENT 'The unique id this discussion is associated to. For example, if it is associated with a group, it should store the group''s id.',
  `type` varchar(255) NOT NULL COMMENT 'The unique type this discussion is associated to. For example, if it is associated with a group, it should store the type as group',
  `answer_id` int(11) NOT NULL COMMENT 'This is only applicable to main question. This should contain the reference to the discussion that is an answer.',
  `last_reply_id` int(11) NOT NULL COMMENT 'Determines the last reply for the discussion',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT 'Stores the total views for this discussion.',
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `last_replied` datetime NOT NULL COMMENT 'Stores the last replied date time.',
  `votes` int(11) NOT NULL COMMENT 'Determines the vote count for this discussion.',
  `total_replies` int(11) NOT NULL DEFAULT '0' COMMENT 'This is to denormalize the reply count of a discussion.',
  `lock` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'Determines if this discussion is locked',
  `params` text NOT NULL COMMENT 'Stores additional raw parameters for the discussion that doesn''t need to be indexed',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `uid_2` (`uid`,`type`),
  KEY `id` (`id`,`parent_id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_discussions_files`;
CREATE TABLE `#__social_discussions_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`,`discussion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_events_meta`;
CREATE TABLE `#__social_events_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` int(11) NOT NULL COMMENT 'The event cluster id',
  `start` datetime NOT NULL COMMENT 'The start datetime of the event',
  `end` datetime NOT NULL COMMENT 'The end datetime of the event',
  `timezone` varchar(255) NOT NULL COMMENT 'The optional timezone of the event for datetime calculation',
  `all_day` tinyint(3) NOT NULL COMMENT 'Flag if this event is an all day event',
  `group_id` int(11) NOT NULL COMMENT 'The group id if this is a group event',
  `reminder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cluster_id` (`cluster_id`),
  KEY `idx_reminder` (`reminder`),
  KEY `idx_upcoming_reminder` (`reminder`,`start`),
  KEY `idx_start` (`start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_feeds`;
CREATE TABLE `#__social_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields`;
CREATE TABLE `#__social_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_key` text NOT NULL,
  `app_id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `display_title` tinyint(3) NOT NULL,
  `description` text NOT NULL,
  `display_description` tinyint(3) NOT NULL,
  `default` text NOT NULL,
  `validation` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `searchable` tinyint(4) NOT NULL DEFAULT '1',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `core` tinyint(4) NOT NULL DEFAULT '0',
  `visible_registration` tinyint(3) NOT NULL,
  `visible_edit` tinyint(3) NOT NULL,
  `visible_display` tinyint(3) NOT NULL,
  `friend_suggest` tinyint(4) DEFAULT '0',
  `visible_mini_registration` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`app_id`),
  KEY `required` (`required`),
  KEY `searchable` (`searchable`),
  KEY `state` (`state`),
  KEY `step_id` (`step_id`),
  KEY `friend_suggest` (`friend_suggest`),
  KEY `idx_advanced_search1` (`searchable`,`state`,`ordering`),
  KEY `idx_unique_key` (`unique_key`(64))
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields_data`;
CREATE TABLE `#__social_fields_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `datakey` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `params` text NOT NULL,
  `raw` text,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`,`uid`),
  KEY `node_id` (`uid`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_type_raw` (`type`(25),`raw`(255)),
  KEY `idx_type_key_raw` (`type`(25),`datakey`(50),`raw`(255)),
  FULLTEXT KEY `fields_data_raw` (`raw`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields_options`;
CREATE TABLE `#__social_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parents` (`parent_id`,`key`),
  KEY `idx_parentid` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields_position`;
CREATE TABLE `#__social_fields_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields_rules`;
CREATE TABLE `#__social_fields_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `match_text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_fields_steps`;
CREATE TABLE `#__social_fields_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `sequence` int(11) NOT NULL,
  `visible_registration` tinyint(3) NOT NULL,
  `visible_edit` tinyint(3) NOT NULL,
  `visible_display` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_id` (`uid`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_files`;
CREATE TABLE `#__social_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `hits` int(11) NOT NULL,
  `hash` text NOT NULL,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `size` text NOT NULL,
  `mime` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `collection_id` (`collection_id`),
  KEY `idx_storage_cron` (`storage`,`created`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_files_collections`;
CREATE TABLE `#__social_files_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'This is the person that creates the item.',
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_friends`;
CREATE TABLE `#__social_friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_friends_actor` (`actor_id`),
  KEY `idx_friends_target` (`target_id`),
  KEY `idx_friends_actor_state` (`actor_id`,`state`),
  KEY `idx_friends_target_state` (`target_id`,`state`),
  KEY `idx_actor_target` (`actor_id`,`target_id`,`state`),
  KEY `idx_target_actor` (`target_id`,`actor_id`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_friends_invitations`;
CREATE TABLE `#__social_friends_invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `created` datetime NOT NULL,
  `message` text NOT NULL,
  `registered_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_indexer`;
CREATE TABLE `#__social_indexer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `utype` varchar(64) DEFAULT NULL,
  `component` varchar(64) DEFAULT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `link` text,
  `last_update` datetime NOT NULL,
  `ucreator` bigint(20) unsigned DEFAULT '0',
  `image` text,
  PRIMARY KEY (`id`),
  KEY `social_source` (`uid`,`utype`,`component`),
  FULLTEXT KEY `social_indexer_snapshot` (`title`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_languages`;
CREATE TABLE `#__social_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `updated` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `translator` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_likes`;
CREATE TABLE `#__social_likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stream_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `social_likes_uid` (`uid`),
  KEY `social_likes_contenttype` (`type`),
  KEY `social_likes_createdby` (`created_by`),
  KEY `social_likes_content_type` (`type`,`uid`),
  KEY `social_likes_content_type_by` (`type`,`uid`,`created_by`),
  KEY `idx_stream_id` (`stream_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_links`;
CREATE TABLE `#__social_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_links_images`;
CREATE TABLE `#__social_links_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` text NOT NULL,
  `internal_url` text NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  PRIMARY KEY (`id`),
  KEY `idx_storage_cron` (`storage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_lists`;
CREATE TABLE `#__social_lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `default` tinyint(3) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_lists_maps`;
CREATE TABLE `#__social_lists_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `list_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_list_type` (`target_id`,`list_id`,`target_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_locations`;
CREATE TABLE `#__social_locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `short_address` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_logger`;
CREATE TABLE `#__social_logger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `line` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_mailer`;
CREATE TABLE `#__social_mailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` text NOT NULL,
  `sender_email` text NOT NULL,
  `replyto_email` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_email` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `template` text NOT NULL,
  `html` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `response` text NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  `priority` tinyint(4) NOT NULL COMMENT '1 - Low , 2 - Medium , 3 - High , 4 - Highest',
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_migrators`;
CREATE TABLE `#__social_migrators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `oid` bigint(20) unsigned NOT NULL,
  `element` varchar(100) NOT NULL,
  `component` varchar(100) NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `component_content` (`component`,`oid`,`element`)
) ENGINE=MyISAM COMMENT='Store migrated content id and map with easysocial item id.' DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_moods`;
CREATE TABLE `#__social_moods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key of the row',
  `namespace` varchar(255) NOT NULL COMMENT 'Determines if this item is tied to a specific item',
  `namespace_uid` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT 'Contains the css class for the emoticon',
  `verb` varchar(255) NOT NULL COMMENT 'Feeling, Watching, Eating etc',
  `subject` text NOT NULL COMMENT 'Happy, Sad, Angry etc',
  `custom` tinyint(3) NOT NULL COMMENT 'Determines if the user supplied a custom text',
  `text` text NOT NULL COMMENT 'If there is a custom text, based on the custom column, this text will be used.',
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_notes`;
CREATE TABLE `#__social_notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `alias` text NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_notifications`;
CREATE TABLE `#__social_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `context_ids` text NOT NULL,
  `context_type` varchar(255) NOT NULL,
  `cmd` text NOT NULL,
  `app_id` bigint(20) DEFAULT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `actor_id` int(11) NOT NULL,
  `actor_type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`uid`,`created`),
  KEY `idx_target_state` (`target_id`,`target_type`,`state`),
  KEY `idx_target_created` (`target_id`,`target_type`,`created`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_oauth`;
CREATE TABLE `#__social_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_id` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `client` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `secret` text NOT NULL,
  `created` datetime NOT NULL,
  `expires` varchar(255) NOT NULL,
  `pull` tinyint(3) NOT NULL,
  `push` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `last_pulled` datetime NOT NULL,
  `last_pushed` datetime NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pull` (`pull`,`push`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_oauth_history`;
CREATE TABLE `#__social_oauth_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_id` int(11) NOT NULL,
  `remote_id` int(11) NOT NULL,
  `remote_type` varchar(255) NOT NULL,
  `local_id` int(11) NOT NULL,
  `local_type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_photos`;
CREATE TABLE `#__social_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `caption` text NOT NULL,
  `created` datetime NOT NULL,
  `assigned_date` datetime NOT NULL,
  `ordering` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `storage` varchar(255) NOT NULL DEFAULT 'joomla',
  `total_size` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_photos_user_photos` (`state`,`uid`,`type`,`ordering`),
  KEY `idx_albums` (`state`,`album_id`,`ordering`),
  KEY `idx_storage_cron` (`state`,`storage`,`created`),
  KEY `idx_created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_photos_meta`;
CREATE TABLE `#__social_photos_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `group` varchar(255) NOT NULL,
  `property` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`),
  KEY `group` (`group`),
  KEY `idx_sql1` (`photo_id`,`group`(64),`property`),
  KEY `idx_sql2` (`photo_id`,`group`(64))
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_photos_tag`;
CREATE TABLE `#__social_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `label` text NOT NULL,
  `top` varchar(255) NOT NULL,
  `left` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_points`;
CREATE TABLE `#__social_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'The title of the points',
  `description` text NOT NULL,
  `alias` varchar(255) NOT NULL COMMENT 'The permalink that links to the points.',
  `created` datetime NOT NULL COMMENT 'Creation datetime of the points.',
  `threshold` int(11) DEFAULT NULL COMMENT 'Optional value if app needs to give points based on certain actions multiple times.',
  `interval` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 - every time , 1 - once , 2 - twice - n times',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT 'The amount of points to be given.',
  `state` tinyint(3) NOT NULL COMMENT 'The state of the points. 0 - unpublished, 1 - published ',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `command_id` (`command`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_points_history`;
CREATE TABLE `#__social_points_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for this table',
  `points_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'The target user id',
  `points` int(11) NOT NULL COMMENT 'The number of points',
  `created` datetime NOT NULL COMMENT 'The date time value when the user earned the point.',
  `state` tinyint(3) NOT NULL COMMENT 'The publish state',
  `message` text NOT NULL COMMENT 'Any custom message set for this points assignment',
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `points_id` (`points_id`),
  KEY `idx_userid` (`user_id`),
  KEY `user_points` (`user_id`,`points`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_polls`;
CREATE TABLE `#__social_polls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `multiple` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `cluster_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiry_date` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_element_id` (`element`,`uid`),
  KEY `idx_clusterid` (`cluster_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_polls_items`;
CREATE TABLE `#__social_polls_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) unsigned NOT NULL,
  `value` text NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pollid` (`poll_id`),
  KEY `idx_polls` (`poll_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_polls_users`;
CREATE TABLE `#__social_polls_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` bigint(20) unsigned NOT NULL,
  `poll_itemid` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pollid` (`poll_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_pollitem` (`poll_itemid`),
  KEY `idx_poll_user` (`poll_id`,`user_id`),
  KEY `idx_poll_item_user` (`poll_id`,`poll_itemid`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_privacy`;
CREATE TABLE `#__social_privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL COMMENT 'object type e.g. photos, friends, albums, profile and etc',
  `rule` varchar(64) NOT NULL COMMENT 'rule type e.g. view_friends, view, search, comment, tag and etc',
  `value` int(11) DEFAULT '0',
  `options` text,
  `description` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `core` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_rule` (`type`,`rule`),
  KEY `type_rule_privacy` (`type`,`rule`,`value`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_privacy_customize`;
CREATE TABLE `#__social_privacy_customize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'id from user or profile or item',
  `utype` varchar(64) NOT NULL COMMENT 'user or profile or item',
  `user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`utype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_privacy_items`;
CREATE TABLE `#__social_privacy_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_id` int(11) NOT NULL COMMENT 'key to social_privacy.id',
  `user_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL COMMENT 'object id e.g streamid, activityid and etc',
  `type` varchar(64) NOT NULL COMMENT 'object type e.g. stream, activity and etc',
  `value` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `privacy_id` (`privacy_id`),
  KEY `user_privacy_item` (`user_id`,`uid`,`type`),
  KEY `idx_uid_type` (`uid`,`type`),
  KEY `idx_user_type` (`user_id`,`type`),
  KEY `idx_value_user` (`value`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_privacy_map`;
CREATE TABLE `#__social_privacy_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_id` int(11) NOT NULL COMMENT 'key to social_privacy.id',
  `uid` int(11) NOT NULL COMMENT 'userid or profileid',
  `utype` varchar(64) NOT NULL COMMENT 'user or profile',
  `value` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `privacy_id` (`privacy_id`),
  KEY `uid_type` (`uid`,`utype`),
  KEY `uid_type_value` (`uid`,`utype`,`value`),
  KEY `idx_privacy_uid_type` (`privacy_id`,`uid`,`utype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_profiles`;
CREATE TABLE `#__social_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `gid` text NOT NULL,
  `default` tinyint(4) NOT NULL,
  `default_avatar` int(11) DEFAULT NULL COMMENT 'If this field contains an id, it''s from the default avatar, otherwise use system''s default avatar.',
  `created` datetime NOT NULL,
  `state` tinyint(4) NOT NULL,
  `params` text NOT NULL,
  `registration` tinyint(4) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `community_access` tinyint(3) NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `apps` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`),
  KEY `profile_esad` (`community_access`),
  KEY `idx_profile_access` (`id`,`community_access`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_profiles_maps`;
CREATE TABLE `#__social_profiles_maps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  KEY `idx_userid` (`user_id`),
  KEY `idx_profile_users` (`profile_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_regions`;
CREATE TABLE `#__social_regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) NOT NULL,
  `parent_uid` bigint(20) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `params` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `site_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_registrations`;
CREATE TABLE `#__social_registrations` (
  `session_id` varchar(200) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `values` text NOT NULL,
  `step` bigint(20) NOT NULL,
  `step_access` text NOT NULL,
  `errors` text NOT NULL,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `profile_id` (`profile_id`),
  KEY `step` (`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_relationship_status`;
CREATE TABLE `#__social_relationship_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relation_type` (`type`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_reports`;
CREATE TABLE `#__social_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `extension` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_rss`;
CREATE TABLE `#__social_rss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`),
  KEY `uid` (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_search_filter`;
CREATE TABLE `#__social_search_filter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `filter` text NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sitewide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_searchfilter_element_id` (`element`,`uid`),
  KEY `idx_searchfilter_owner` (`element`,`uid`,`created_by`),
  KEY `idx_searchfilter_alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_shares`;
CREATE TABLE `#__social_shares` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `element` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shares_element` (`uid`,`element`),
  KEY `shares_element_user` (`uid`,`element`,`user_id`),
  KEY `shares_userid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_step_sessions`;
CREATE TABLE `#__social_step_sessions` (
  `session_id` varchar(200) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `values` text NOT NULL,
  `step` bigint(20) NOT NULL,
  `step_access` text NOT NULL,
  `errors` text NOT NULL,
  UNIQUE KEY `session_id` (`session_id`),
  KEY `profile_id` (`uid`),
  KEY `step` (`step`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_storage_log`;
CREATE TABLE `#__social_storage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream`;
CREATE TABLE `#__social_stream` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` bigint(20) unsigned NOT NULL,
  `alias` varchar(255) DEFAULT '',
  `actor_type` varchar(64) DEFAULT 'people',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text,
  `content` text,
  `context_type` varchar(64) DEFAULT '',
  `stream_type` varchar(15) DEFAULT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `target_id` bigint(20) NOT NULL,
  `location_id` int(11) NOT NULL,
  `mood_id` int(11) NOT NULL,
  `with` text NOT NULL,
  `ispublic` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  `cluster_id` int(11) DEFAULT '0',
  `cluster_type` varchar(64) DEFAULT NULL,
  `cluster_access` tinyint(3) DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `privacy_id` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `custom_access` text,
  `verb` varchar(64) DEFAULT '',
  `edited` datetime DEFAULT '0000-00-00 00:00:00',
  `last_action` varchar(255) DEFAULT NULL,
  `last_userid` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stream_actor` (`actor_id`),
  KEY `stream_created` (`created`),
  KEY `stream_modified` (`modified`),
  KEY `stream_alias` (`alias`),
  KEY `stream_source` (`actor_type`),
  KEY `idx_stream_context_type` (`context_type`),
  KEY `idx_stream_target` (`target_id`),
  KEY `idx_actor_modified` (`actor_id`,`modified`),
  KEY `idx_target_context_modified` (`target_id`,`context_type`,`modified`),
  KEY `idx_sitewide_modified` (`sitewide`,`modified`),
  KEY `idx_ispublic` (`ispublic`,`modified`),
  KEY `idx_cluster_access` (`cluster_id`,`cluster_access`),
  KEY `idx_clusterid` (`cluster_id`),
  KEY `idx_cluster_items` (`cluster_id`,`cluster_type`,`modified`),
  KEY `idx_access` (`access`),
  KEY `idx_custom_access` (`access`,`custom_access`(255)),
  KEY `idx_stream_total_cluster` (`cluster_id`,`cluster_access`,`context_type`,`id`,`actor_id`),
  KEY `idx_stream_total_user` (`cluster_id`,`access`,`actor_id`,`context_type`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_assets`;
CREATE TABLE `#__social_stream_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_filter`;
CREATE TABLE `#__social_stream_filter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `utype` varchar(255) DEFAULT 'user',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `streamfilter_uidtype` (`uid`,`utype`),
  KEY `streamfilter_alias` (`alias`),
  KEY `streamfilter_cluster_user` (`uid`,`utype`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_filter_item`;
CREATE TABLE `#__social_stream_filter_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filter_id` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `filteritem_fid` (`filter_id`),
  KEY `filteritem_type` (`type`),
  KEY `filteritem_fidtype` (`filter_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_hide`;
CREATE TABLE `#__social_stream_hide` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  `actor_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stream_hide_user` (`user_id`),
  KEY `stream_hide_uid` (`uid`),
  KEY `stream_hide_user_uid` (`user_id`,`uid`),
  KEY `stream_hide_actorid` (`actor_id`),
  KEY `idx_stream_hide_context` (`context`,`user_id`,`uid`,`actor_id`),
  KEY `idx_stream_hide_actor` (`actor_id`,`user_id`,`uid`,`context`),
  KEY `idx_stream_hide_uid` (`uid`,`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_history`;
CREATE TABLE `#__social_stream_history` (
  `id` bigint(20) unsigned NOT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  `alias` varchar(255) DEFAULT '',
  `actor_type` varchar(64) DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited` datetime DEFAULT '0000-00-00 00:00:00',
  `title` text,
  `content` text,
  `context_type` varchar(64) DEFAULT '',
  `verb` varchar(64) DEFAULT '',
  `stream_type` varchar(15) DEFAULT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `target_id` bigint(20) NOT NULL,
  `location_id` int(11) NOT NULL,
  `mood_id` int(11) NOT NULL,
  `with` text NOT NULL,
  `ispublic` tinyint(3) NOT NULL DEFAULT '0',
  `cluster_id` int(11) DEFAULT '0',
  `cluster_type` varchar(64) DEFAULT NULL,
  `cluster_access` tinyint(3) DEFAULT '0',
  `params` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  `privacy_id` int(11) DEFAULT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `custom_access` text,
  `last_action` varchar(255) DEFAULT NULL,
  `last_userid` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `stream_history_created` (`created`),
  KEY `stream_history_modified` (`modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_item`;
CREATE TABLE `#__social_stream_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(255) DEFAULT 'people',
  `context_type` varchar(64) DEFAULT '',
  `context_id` bigint(20) unsigned DEFAULT '0',
  `verb` varchar(64) DEFAULT '',
  `target_id` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` bigint(20) unsigned NOT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `params` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `activity_actor` (`actor_id`),
  KEY `activity_created` (`created`),
  KEY `activity_context` (`context_type`),
  KEY `activity_context_id` (`context_id`),
  KEY `idx_context_verb` (`context_type`,`verb`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_item_history`;
CREATE TABLE `#__social_stream_item_history` (
  `id` bigint(20) unsigned NOT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  `actor_type` varchar(255) DEFAULT 'people',
  `context_type` varchar(64) DEFAULT '',
  `context_id` bigint(20) unsigned DEFAULT '0',
  `verb` varchar(64) DEFAULT '',
  `target_id` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` bigint(20) unsigned NOT NULL,
  `sitewide` tinyint(1) DEFAULT '0',
  `params` text,
  `state` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_history_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_sticky`;
CREATE TABLE `#__social_stream_sticky` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` bigint(20) unsigned NOT NULL,
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_streamid` (`stream_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_stream_tags`;
CREATE TABLE `#__social_stream_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` bigint(20) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `utype` varchar(255) DEFAULT 'user',
  `with` tinyint(3) unsigned DEFAULT '0',
  `offset` int(11) DEFAULT '0',
  `length` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streamtags_streamid` (`stream_id`),
  KEY `streamtags_uidtype` (`uid`,`utype`),
  KEY `streamtags_uidoffset` (`stream_id`,`offset`),
  KEY `streamtags_title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_subscriptions`;
CREATE TABLE `#__social_subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT 'object id e.g userid, groupid, streamid and etc',
  `type` varchar(64) NOT NULL COMMENT 'subscription type e.g. user, group, stream and etc',
  `user_id` int(11) DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_type` (`uid`,`type`),
  KEY `uid_type_user` (`uid`,`type`,`user_id`),
  KEY `uid_type_email` (`uid`,`type`),
  KEY `idx_uid` (`uid`),
  KEY `idx_type_userid` (`type`,`user_id`),
  KEY `idx_userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_tags`;
CREATE TABLE `#__social_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` varchar(255) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `offset` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_targets` (`target_id`,`target_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_tasks`;
CREATE TABLE `#__social_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `created` datetime NOT NULL,
  `milestone_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_tasks_milestones`;
CREATE TABLE `#__social_tasks_milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `due` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_themes`;
CREATE TABLE `#__social_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_tmp`;
CREATE TABLE `#__social_tmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` text NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_uploader`;
CREATE TABLE `#__social_uploader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `name` text NOT NULL,
  `mime` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_users`;
CREATE TABLE `#__social_users` (
  `user_id` bigint(20) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(3) NOT NULL,
  `params` text NOT NULL,
  `connections` int(11) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'joomla',
  `auth` varchar(255) NOT NULL COMMENT 'Used in conjunction with the REST api',
  `completed_fields` int(11) NOT NULL DEFAULT '0',
  `reminder_sent` tinyint(1) DEFAULT '0',
  `require_reset` tinyint(1) DEFAULT '0',
  `block_date` datetime DEFAULT '0000-00-00 00:00:00',
  `block_period` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `state` (`state`),
  KEY `alias` (`alias`),
  KEY `connections` (`connections`),
  KEY `permalink` (`permalink`),
  KEY `idx_types` (`user_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_videos`;
CREATE TABLE `#__social_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for this table',
  `title` varchar(255) NOT NULL COMMENT 'Title of the video',
  `description` text NOT NULL COMMENT 'The description of the video',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this video',
  `uid` int(11) NOT NULL COMMENT 'This video may belong to another node other than the user.',
  `type` varchar(255) NOT NULL COMMENT 'This video may belong to another node other than the user.',
  `created` datetime NOT NULL,
  `state` tinyint(3) NOT NULL,
  `featured` tinyint(3) NOT NULL,
  `category_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL COMMENT 'Total hits received for this video',
  `duration` varchar(255) NOT NULL COMMENT 'Duration of the video',
  `size` int(11) NOT NULL COMMENT 'The file size of the video',
  `params` text NOT NULL COMMENT 'Store video params',
  `storage` varchar(255) NOT NULL COMMENT 'Storage for videos',
  `path` text NOT NULL,
  `original` text NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`user_id`,`state`,`featured`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_videos_categories`;
CREATE TABLE `#__social_videos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(3) NOT NULL,
  `default` tinyint(3) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL COMMENT 'The user id that created this category',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__social_videos_categories_access`;
CREATE TABLE `#__social_videos_categories_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`profile_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__tags`;
CREATE TABLE `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) binary NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__template_styles`;
CREATE TABLE `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(14, 'purity_iii', 0, '1', 'Purity III - Default', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","link_titles":"","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-content-left","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_easysocial":["693","715"],"theme_extras_com_joomprofile":["765"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"]}'),
(15, 'purity_iii', 0, '0', 'Purity III - Features Intro 1', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"features-intro-1","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_easysocial":["693","715"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(16, 'purity_iii', 0, '0', 'Purity III - Blog', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"blog","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easydiscuss":["651"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easysocial":["693","715"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(17, 'purity_iii', 0, '0', 'Purity III - Porfolio', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"portfolio","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easydiscuss":["651"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easysocial":["693","715"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(18, 'purity_iii', 0, '0', 'Purity III - Corporate', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"corporate","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"theme_extras_com_easysocial":["693","715"],"mm_config_needupdate":"","link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(19, 'purity_iii', 0, '0', 'Purity III - Magazine', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"magazine","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easydiscuss":["651"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easysocial":["693","715"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(20, 'purity_iii', 0, '0', 'Purity III - Product Style 2', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"blog","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_easysocial":["693","715"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easyblog":["634"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(21, 'purity_iii', 0, '0', 'Purity III - Sidebar Content', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"default-content-right","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easydiscuss":["651"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easysocial":["693","715"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(23, 'purity_iii', 0, '0', 'Purity III - Features Intro 2', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","mainlayout":"features-intro-2","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"],"mm_config_needupdate":"","theme_extras_com_easysocial":["693","715"],"theme_extras_com_community":["599","718","719"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_easyblog":["634"],"link_titles":null,"theme_extras_com_joomprofile":["765"]}'),
(24, 'purity_iii', 0, '0', 'Purity III - Docs', '{"tpl_article_info_datetime_format":"l, d F Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"components\\/com_community\\/assets\\/release\\/js\\/loader.js,media\\/jui\\/js\\/jquery.min.js, js\\/script.js,error.css ","link_titles":null,"theme":"","logotype":"image","sitename":"Purity III","slogan":"The last template you will ever need.","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"docs","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"200","mm_config":"{\\"mainmenu\\":{\\"item-435\\":{\\"sub\\":{\\"width\\":850,\\"rows\\":[[{\\"item\\":743,\\"width\\":3},{\\"item\\":540,\\"width\\":3},{\\"position\\":112,\\"width\\":6}]]}},\\"item-743\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":567,\\"width\\":12}]]},\\"group\\":1},\\"item-540\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":744,\\"width\\":12}]]},\\"group\\":1},\\"item-546\\":{\\"sub\\":{\\"width\\":620,\\"rows\\":[[{\\"item\\":741,\\"width\\":4},{\\"position\\":221,\\"width\\":8}]]}},\\"item-741\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":738,\\"width\\":12}]]},\\"group\\":1},\\"item-545\\":{\\"sub\\":{\\"width\\":700,\\"rows\\":[[{\\"item\\":548,\\"width\\":4},{\\"item\\":742,\\"width\\":4},{\\"position\\":16,\\"width\\":4}]]},\\"alignsub\\":\\"left\\"},\\"item-548\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":553,\\"width\\":12}]]},\\"group\\":1},\\"item-742\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":550,\\"width\\":12}]]},\\"group\\":1},\\"item-571\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":693,\\"width\\":12}]]}},\\"item-693\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":716,\\"width\\":12}]]}},\\"item-599\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":718,\\"width\\":12}]]}},\\"item-634\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":715,\\"width\\":12}]]}},\\"item-707\\":{\\"sub\\":{\\"rows\\":[[{\\"item\\":712,\\"width\\":12}]]}}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":null,"snippet_close_head":null,"snippet_open_body":null,"snippet_close_body":null,"snippet_debug":"0","theme_extras_com_community":["599","718","719"],"theme_extras_com_easyblog":["634"],"theme_extras_com_easydiscuss":["651"],"theme_extras_com_easysocial":["693","715"],"theme_extras_com_joomprofile":["765"],"theme_extras_com_kunena":["588","589","590","591","592","593","594","595","596","597"],"theme_extras_com_mijoshop":["707","712","710","713","711","745"],"theme_extras_layout_glossary":["724"]}');

DROP TABLE IF EXISTS `#__ucm_base`;
CREATE TABLE `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__ucm_content`;
CREATE TABLE `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) binary NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 COMMENT='Contains core content data in name spaced fields' DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__ucm_history`;
CREATE TABLE `#__ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__update_sites`;
CREATE TABLE `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 COMMENT='Update Sites' DEFAULT CHARSET=utf8;

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'Kunena 4.0 Update Site', 'collection', 'http://update.kunena.org/4.0/list.xml', 1, 1445854790, '');

DROP TABLE IF EXISTS `#__update_sites_extensions`;
CREATE TABLE `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB COMMENT='Links extensions to update sites' DEFAULT CHARSET=utf8;
INSERT IGNORE INTO `#__update_sites_extensions` VALUES
(1, 700),
(2, 700),
(3, 600);

DROP TABLE IF EXISTS `#__updates`;
CREATE TABLE `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 COMMENT='Available Updates' DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__user_keys`;
CREATE TABLE `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__user_notes`;
CREATE TABLE `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__user_profiles`;
CREATE TABLE `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB COMMENT='Simple user profile storage table' DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__user_usergroup_map`;
CREATE TABLE `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__usergroups`;
CREATE TABLE `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 22, 'Public'),
(2, 1, 8, 19, 'Registered'),
(3, 2, 9, 16, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 20, 21, 'Super Users'),
(10, 3, 14, 15, 'Shop Suppliers (Example)'),
(12, 2, 17, 18, 'Customer Group (Example)'),
(13, 1, 2, 3, 'Guest');

DROP TABLE IF EXISTS `#__users`;
CREATE TABLE `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `#__viewlevels`;
CREATE TABLE `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]'),
(5, 'Guest', 0, '[13]');

