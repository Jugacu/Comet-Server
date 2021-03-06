ALTER TABLE `player_badges`
	ADD INDEX `player_id_badge_code` (`player_id`, `badge_code`),
	ADD UNIQUE INDEX `player_id_badge_code_unique` (`player_id`, `badge_code`);

CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) NOT NULL DEFAULT 'ACH_',
  `category` enum('identity','explore','music','social','games','room_builder','pets') NOT NULL DEFAULT 'identity',
  `level` int(11) NOT NULL DEFAULT '1',
  `reward_activity_points` int(11) NOT NULL DEFAULT '100',
  `reward_achievement_points` int(11) DEFAULT '10',
  `progress_requirement` int(11) NOT NULL DEFAULT '1',
  `enabled` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

INSERT INTO `achievements` (`id`, `group_name`, `category`, `level`, `reward_activity_points`, `reward_achievement_points`, `progress_requirement`, `enabled`) VALUES
	(1, 'ACH_AvatarTags', 'identity', 1, 5, 5, 5, '1'),
	(2, 'ACH_AvatarLooks', 'identity', 1, 5, 5, 1, '1'),
	(3, 'ACH_Motto', 'identity', 1, 10, 10, 1, '1'),
	(4, 'ACH_EmailVerification', 'identity', 1, 20, 20, 1, '1'),
	(5, 'ACH_RespectGiven', 'social', 1, 100, 100, 2, '1'),
	(6, 'ACH_BasicClub', 'identity', 1, 25, 25, 1, '1'),
	(7, 'ACH_VipHC', 'identity', 1, 50, 50, 1, '1'),
	(8, 'ACH_BasicClub', 'identity', 2, 100, 100, 2, '1'),
	(9, 'ACH_BasicClub', 'identity', 3, 250, 250, 3, '1'),
	(10, 'ACH_BasicClub', 'identity', 4, 350, 350, 4, '1'),
	(11, 'ACH_BasicClub', 'identity', 5, 500, 500, 5, '1'),
	(12, 'ACH_VipHC', 'identity', 2, 200, 200, 2, '1'),
	(13, 'ACH_VipHC', 'identity', 3, 500, 500, 3, '1'),
	(14, 'ACH_VipHC', 'identity', 4, 700, 700, 4, '1'),
	(15, 'ACH_VipHC', 'identity', 5, 1000, 1000, 5, '1'),
	(16, 'ACH_RespectEarned', 'social', 1, 5, 5, 1, '1'),
	(17, 'ACH_RespectEarned', 'social', 2, 20, 20, 10, '1'),
	(18, 'ACH_RespectEarned', 'social', 3, 40, 40, 20, '1'),
	(19, 'ACH_RespectEarned', 'social', 4, 100, 100, 50, '1'),
	(20, 'ACH_RespectEarned', 'social', 5, 200, 200, 100, '1'),
	(21, 'ACH_RespectEarned', 'social', 6, 500, 500, 250, '1'),
	(22, 'ACH_RespectEarned', 'social', 7, 1000, 1000, 500, '1'),
	(23, 'ACH_RespectEarned', 'social', 8, 1300, 1300, 750, '1'),
	(24, 'ACH_RespectEarned', 'social', 9, 2000, 2000, 1000, '1'),
	(25, 'ACH_RespectEarned', 'social', 10, 3000, 3000, 1500, '1'),
	(26, 'ACH_RoomEntry', 'explore', 1, 20, 10, 5, '1'),
	(27, 'ACH_RoomEntry', 'explore', 2, 20, 10, 20, '1'),
	(28, 'ACH_RoomEntry', 'explore', 3, 25, 10, 20, '1'),
	(29, 'ACH_RoomEntry', 'explore', 4, 30, 15, 30, '1'),
	(30, 'ACH_RoomEntry', 'explore', 5, 30, 20, 30, '1'),
	(31, 'ACH_RoomEntry', 'explore', 6, 60, 25, 60, '1'),
	(32, 'ACH_RoomEntry', 'explore', 7, 80, 25, 75, '1'),
	(33, 'ACH_RoomEntry', 'explore', 8, 80, 30, 100, '1'),
	(34, 'ACH_RoomEntry', 'explore', 9, 80, 30, 120, '1'),
	(35, 'ACH_RoomEntry', 'explore', 10, 85, 30, 150, '1'),
	(36, 'ACH_PinataWhacker', 'explore', 1, 100, 10, 1, '1'),
	(37, 'ACH_PinataWhacker', 'explore', 2, 100, 20, 24, '1'),
	(38, 'ACH_PinataWhacker', 'explore', 3, 120, 30, 25, '1'),
	(39, 'ACH_PinataWhacker', 'explore', 4, 130, 40, 25, '1'),
	(40, 'ACH_PinataWhacker', 'explore', 5, 140, 50, 35, '1'),
	(41, 'ACH_PinataWhacker', 'explore', 6, 150, 60, 45, '1'),
	(42, 'ACH_PinataWhacker', 'explore', 7, 150, 60, 60, '1'),
	(43, 'ACH_PinataWhacker', 'explore', 8, 150, 60, 60, '1'),
	(44, 'ACH_PinataWhacker', 'explore', 9, 150, 60, 75, '1'),
	(45, 'ACH_PinataWhacker', 'explore', 10, 150, 60, 75, '1'),
	(46, 'ACH_PinataBreaker', 'explore', 1, 120, 50, 1, '1'),
	(47, 'ACH_PinataBreaker', 'explore', 2, 120, 50, 1, '1'),
	(48, 'ACH_PinataBreaker', 'explore', 3, 120, 50, 1, '1'),
	(49, 'ACH_PinataBreaker', 'explore', 4, 120, 50, 2, '1'),
	(50, 'ACH_PinataBreaker', 'explore', 5, 120, 50, 2, '1'),
	(51, 'ACH_SafetyQuizGraduate', 'identity', 1, 100, 250, 1, '1'),
	(52, 'ACH_RegistrationDuration', 'identity', 1, 100, 10, 1, '1'),
	(53, 'ACH_RegistrationDuration', 'identity', 2, 100, 10, 10, '1'),
	(54, 'ACH_RegistrationDuration', 'identity', 3, 200, 15, 15, '1'),
	(55, 'ACH_RegistrationDuration', 'identity', 4, 250, 100, 20, '1'),
	(56, 'ACH_RegistrationDuration', 'identity', 5, 300, 120, 35, '1'),
	(57, 'ACH_RegistrationDuration', 'identity', 6, 400, 130, 40, '1'),
	(58, 'ACH_RegistrationDuration', 'identity', 7, 500, 140, 40, '1'),
	(59, 'ACH_RegistrationDuration', 'identity', 8, 600, 150, 45, '1'),
	(60, 'ACH_RegistrationDuration', 'identity', 9, 700, 160, 50, '1'),
	(61, 'ACH_RegistrationDuration', 'identity', 10, 800, 170, 70, '1'),
	(62, 'ACH_RespectGiven', 'social', 2, 100, 10, 5, '1'),
	(63, 'ACH_RespectGiven', 'social', 3, 100, 10, 15, '1'),
	(64, 'ACH_RespectGiven', 'social', 4, 100, 10, 35, '1'),
	(65, 'ACH_RespectGiven', 'social', 5, 100, 10, 65, '1'),
	(66, 'ACH_RespectGiven', 'social', 6, 100, 10, 117, '1'),
	(67, 'ACH_RespectGiven', 'social', 7, 100, 10, 136, '1'),
	(68, 'ACH_RespectGiven', 'social', 8, 100, 10, 200, '1'),
	(69, 'ACH_RespectGiven', 'social', 9, 100, 10, 249, '1'),
	(70, 'ACH_RespectGiven', 'social', 10, 100, 10, 273, '1'),
	(71, 'ACH_PetRespectGiver', 'pets', 1, 100, 10, 2, '1'),
	(72, 'ACH_PetRespectGiver', 'pets', 2, 100, 10, 8, '1'),
	(73, 'ACH_PetRespectGiver', 'pets', 3, 100, 10, 25, '1'),
	(74, 'ACH_PetRespectGiver', 'pets', 4, 100, 10, 40, '1'),
	(75, 'ACH_PetRespectGiver', 'pets', 5, 100, 10, 75, '1'),
	(76, 'ACH_PetRespectGiver', 'pets', 6, 100, 10, 120, '1'),
	(77, 'ACH_PetRespectGiver', 'pets', 7, 100, 10, 145, '1'),
	(78, 'ACH_PetRespectGiver', 'pets', 8, 100, 10, 173, '1'),
	(79, 'ACH_PetRespectGiver', 'pets', 9, 100, 10, 203, '1'),
	(80, 'ACH_PetRespectGiver', 'pets', 10, 100, 10, 261, '1'),
	(86, 'ACH_PetLover', 'pets', 3, 100, 10, 3, '1'),
	(85, 'ACH_PetLover', 'pets', 2, 100, 10, 1, '1'),
	(84, 'ACH_PetLover', 'pets', 1, 100, 10, 1, '1'),
	(87, 'ACH_PetLover', 'pets', 4, 100, 10, 4, '1'),
	(88, 'ACH_PetLover', 'pets', 5, 100, 10, 5, '1'),
	(89, 'ACH_PetLover', 'pets', 6, 100, 10, 10, '1'),
	(90, 'ACH_PetLover', 'pets', 7, 100, 10, 10, '1'),
	(91, 'ACH_PetLover', 'pets', 8, 100, 10, 10, '1'),
	(92, 'ACH_PetLover', 'pets', 9, 100, 10, 10, '1'),
	(103, 'ACH_PetLover', 'pets', 10, 100, 10, 20, '1'),
	(104, 'ACH_GiftGiver', 'social', 1, 100, 10, 1, '1'),
	(106, 'ACH_GiftGiver', 'social', 2, 100, 10, 5, '1'),
	(107, 'ACH_GiftGiver', 'social', 3, 100, 10, 6, '1'),
	(108, 'ACH_GiftGiver', 'social', 4, 100, 10, 8, '1'),
	(109, 'ACH_GiftGiver', 'social', 5, 100, 10, 15, '1'),
	(110, 'ACH_GiftGiver', 'social', 6, 100, 10, 20, '1'),
	(111, 'ACH_GiftGiver', 'social', 7, 100, 10, 20, '1'),
	(112, 'ACH_GiftGiver', 'social', 8, 100, 10, 22, '1'),
	(113, 'ACH_GiftGiver', 'social', 9, 100, 10, 25, '1'),
	(114, 'ACH_GiftGiver', 'social', 10, 100, 10, 30, '1'),
	(124, 'ACH_GiftReceiver', 'social', 1, 100, 10, 1, '1'),
	(126, 'ACH_GiftReceiver', 'social', 2, 100, 10, 5, '1'),
	(127, 'ACH_GiftReceiver', 'social', 3, 100, 10, 6, '1'),
	(128, 'ACH_GiftReceiver', 'social', 4, 100, 10, 8, '1'),
	(129, 'ACH_GiftReceiver', 'social', 5, 100, 10, 15, '1'),
	(130, 'ACH_GiftReceiver', 'social', 6, 100, 10, 20, '1'),
	(131, 'ACH_GiftReceiver', 'social', 7, 100, 10, 20, '1'),
	(132, 'ACH_GiftReceiver', 'social', 8, 100, 10, 25, '1'),
	(133, 'ACH_GiftReceiver', 'social', 9, 100, 10, 30, '1'),
	(134, 'ACH_GiftReceiver', 'social', 10, 100, 10, 35, '1'),
	(164, 'ACH_BattleBallTilesLocked', 'games', 1, 100, 10, 25, '1'),
	(165, 'ACH_BattleBallTilesLocked', 'games', 2, 100, 10, 30, '1'),
	(166, 'ACH_BattleBallTilesLocked', 'games', 3, 100, 10, 40, '1'),
	(167, 'ACH_BattleBallTilesLocked', 'games', 4, 100, 10, 50, '1'),
	(168, 'ACH_BattleBallTilesLocked', 'games', 5, 100, 10, 60, '1'),
	(169, 'ACH_BattleBallTilesLocked', 'games', 6, 100, 10, 70, '1'),
	(170, 'ACH_BattleBallTilesLocked', 'games', 7, 100, 10, 80, '1'),
	(171, 'ACH_BattleBallTilesLocked', 'games', 8, 100, 10, 95, '1'),
	(172, 'ACH_BattleBallTilesLocked', 'games', 9, 100, 10, 125, '1'),
	(173, 'ACH_BattleBallTilesLocked', 'games', 10, 100, 10, 150, '1'),
	(174, 'ACH_BattleBallTilesLocked', 'games', 11, 100, 10, 200, '1'),
	(175, 'ACH_BattleBallTilesLocked', 'games', 12, 100, 10, 250, '1'),
	(176, 'ACH_BattleBallTilesLocked', 'games', 13, 100, 10, 300, '1'),
	(177, 'ACH_BattleBallTilesLocked', 'games', 14, 100, 10, 350, '1'),
	(178, 'ACH_BattleBallTilesLocked', 'games', 15, 100, 10, 400, '1'),
	(179, 'ACH_BattleBallTilesLocked', 'games', 16, 100, 10, 450, '1'),
	(180, 'ACH_BattleBallTilesLocked', 'games', 17, 100, 10, 500, '1'),
	(181, 'ACH_BattleBallTilesLocked', 'games', 18, 100, 10, 650, '1'),
	(182, 'ACH_BattleBallTilesLocked', 'games', 19, 100, 10, 850, '1'),
	(183, 'ACH_BattleBallTilesLocked', 'games', 20, 100, 10, 1000, '1'),
	(184, 'ACH_BattleBallPlayer', 'games', 1, 100, 10, 1, '1'),
	(185, 'ACH_BattleBallPlayer', 'games', 2, 100, 10, 2, '1'),
	(186, 'ACH_BattleBallPlayer', 'games', 3, 100, 10, 3, '1'),
	(187, 'ACH_BattleBallPlayer', 'games', 4, 100, 10, 4, '1'),
	(188, 'ACH_BattleBallPlayer', 'games', 5, 100, 10, 5, '1'),
	(189, 'ACH_BattleBallPlayer', 'games', 6, 100, 10, 10, '1'),
	(190, 'ACH_BattleBallPlayer', 'games', 7, 100, 10, 15, '1'),
	(191, 'ACH_BattleBallPlayer', 'games', 8, 100, 10, 20, '1'),
	(192, 'ACH_BattleBallPlayer', 'games', 9, 100, 10, 21, '1'),
	(193, 'ACH_BattleBallPlayer', 'games', 10, 100, 10, 22, '1'),
	(194, 'ACH_BattleBallPlayer', 'games', 11, 100, 10, 23, '1'),
	(195, 'ACH_BattleBallPlayer', 'games', 12, 100, 10, 25, '1'),
	(196, 'ACH_BattleBallPlayer', 'games', 13, 100, 10, 35, '1'),
	(197, 'ACH_BattleBallPlayer', 'games', 14, 100, 10, 45, '1'),
	(198, 'ACH_BattleBallPlayer', 'games', 15, 100, 10, 60, '1'),
	(199, 'ACH_BattleBallPlayer', 'games', 16, 100, 10, 75, '1'),
	(200, 'ACH_BattleBallPlayer', 'games', 17, 100, 10, 90, '1'),
	(201, 'ACH_BattleBallPlayer', 'games', 18, 100, 10, 125, '1'),
	(202, 'ACH_BattleBallPlayer', 'games', 19, 100, 10, 250, '1'),
	(203, 'ACH_BattleBallPlayer', 'games', 20, 100, 10, 450, '1'),
	(224, 'ACH_BattleBallWinner', 'games', 1, 100, 10, 1, '1'),
	(225, 'ACH_BattleBallWinner', 'games', 2, 100, 10, 2, '1'),
	(226, 'ACH_BattleBallWinner', 'games', 3, 100, 10, 3, '1'),
	(227, 'ACH_BattleBallWinner', 'games', 4, 100, 10, 4, '1'),
	(228, 'ACH_BattleBallWinner', 'games', 5, 100, 10, 5, '1'),
	(229, 'ACH_BattleBallWinner', 'games', 6, 100, 10, 10, '1'),
	(230, 'ACH_BattleBallWinner', 'games', 7, 100, 10, 15, '1'),
	(231, 'ACH_BattleBallWinner', 'games', 8, 100, 10, 20, '1'),
	(232, 'ACH_BattleBallWinner', 'games', 9, 100, 10, 21, '1'),
	(233, 'ACH_BattleBallWinner', 'games', 10, 100, 10, 22, '1'),
	(234, 'ACH_BattleBallWinner', 'games', 11, 100, 10, 23, '1'),
	(235, 'ACH_BattleBallWinner', 'games', 12, 100, 10, 25, '1'),
	(236, 'ACH_BattleBallWinner', 'games', 13, 100, 10, 35, '1'),
	(237, 'ACH_BattleBallWinner', 'games', 14, 100, 10, 45, '1'),
	(238, 'ACH_BattleBallWinner', 'games', 15, 100, 10, 60, '1'),
	(239, 'ACH_BattleBallWinner', 'games', 16, 100, 10, 75, '1'),
	(240, 'ACH_BattleBallWinner', 'games', 17, 100, 10, 90, '1'),
	(241, 'ACH_BattleBallWinner', 'games', 18, 100, 10, 125, '1'),
	(242, 'ACH_BattleBallWinner', 'games', 19, 100, 10, 250, '1'),
	(243, 'ACH_BattleBallWinner', 'games', 20, 100, 10, 450, '1'),
	(244, 'ACH_MonsterPlantTreater', 'pets', 1, 100, 10, 1, '1'),
	(245, 'ACH_MonsterPlantTreater', 'pets', 2, 100, 10, 4, '1'),
	(246, 'ACH_MonsterPlantTreater', 'pets', 3, 100, 10, 7, '1'),
	(247, 'ACH_MonsterPlantTreater', 'pets', 4, 100, 10, 9, '1'),
	(248, 'ACH_MonsterPlantTreater', 'pets', 5, 100, 10, 11, '1'),
	(249, 'ACH_MonsterPlantTreater', 'pets', 6, 100, 10, 15, '1'),
	(250, 'ACH_MonsterPlantTreater', 'pets', 7, 100, 10, 25, '1'),
	(251, 'ACH_MonsterPlantTreater', 'pets', 8, 100, 10, 35, '1'),
	(252, 'ACH_MonsterPlantTreater', 'pets', 9, 100, 10, 45, '1'),
	(253, 'ACH_MonsterPlantTreater', 'pets', 10, 100, 10, 50, '1'),
	(254, 'ACH_AllTimeHotelPresence', 'identity', 1, 100, 10, 30, '1'),
	(255, 'ACH_AllTimeHotelPresence', 'identity', 2, 100, 10, 50, '1'),
	(256, 'ACH_AllTimeHotelPresence', 'identity', 3, 100, 10, 75, '1'),
	(257, 'ACH_AllTimeHotelPresence', 'identity', 4, 100, 10, 125, '1'),
	(258, 'ACH_AllTimeHotelPresence', 'identity', 5, 100, 10, 150, '1'),
	(259, 'ACH_AllTimeHotelPresence', 'identity', 6, 100, 10, 250, '1'),
	(260, 'ACH_AllTimeHotelPresence', 'identity', 7, 100, 10, 385, '1'),
	(261, 'ACH_AllTimeHotelPresence', 'identity', 8, 100, 10, 450, '1'),
	(262, 'ACH_AllTimeHotelPresence', 'identity', 9, 100, 10, 495, '1'),
	(263, 'ACH_AllTimeHotelPresence', 'identity', 10, 100, 10, 525, '1'),
	(264, 'ACH_AllTimeHotelPresence', 'identity', 11, 100, 10, 550, '1'),
	(265, 'ACH_AllTimeHotelPresence', 'identity', 12, 100, 10, 580, '1'),
	(266, 'ACH_AllTimeHotelPresence', 'identity', 13, 100, 10, 620, '1'),
	(267, 'ACH_AllTimeHotelPresence', 'identity', 14, 100, 10, 660, '1'),
	(268, 'ACH_AllTimeHotelPresence', 'identity', 15, 100, 10, 700, '1'),
	(269, 'ACH_AllTimeHotelPresence', 'identity', 16, 100, 10, 875, '1'),
	(270, 'ACH_AllTimeHotelPresence', 'identity', 17, 100, 10, 1050, '1'),
	(271, 'ACH_AllTimeHotelPresence', 'identity', 18, 100, 10, 1500, '1'),
	(272, 'ACH_AllTimeHotelPresence', 'identity', 19, 100, 10, 1850, '1'),
	(273, 'ACH_AllTimeHotelPresence', 'identity', 20, 100, 10, 2000, '1'),
	(274, 'ACH_Citizenship', 'identity', 1, 250, 150, 1, '1'),
	(275, 'ACH_Login', 'identity', 1, 100, 10, 1, '1'),
	(276, 'ACH_Login', 'identity', 2, 100, 10, 3, '1'),
	(277, 'ACH_Login', 'identity', 3, 100, 10, 7, '1'),
	(278, 'ACH_Login', 'identity', 4, 100, 10, 10, '1'),
	(279, 'ACH_Login', 'identity', 5, 100, 10, 15, '1'),
	(280, 'ACH_Login', 'identity', 6, 100, 10, 25, '1'),
	(281, 'ACH_Login', 'identity', 7, 100, 10, 35, '1'),
	(282, 'ACH_Login', 'identity', 8, 100, 10, 50, '1'),
	(283, 'ACH_Login', 'identity', 9, 100, 10, 70, '1'),
	(284, 'ACH_Login', 'identity', 10, 100, 10, 95, '1'),
	(285, 'ACH_Login', 'identity', 11, 100, 10, 125, '1'),
	(286, 'ACH_Login', 'identity', 12, 100, 10, 170, '1'),
	(287, 'ACH_Login', 'identity', 13, 100, 10, 200, '1'),
	(288, 'ACH_Login', 'identity', 14, 100, 10, 225, '1'),
	(289, 'ACH_Login', 'identity', 15, 100, 10, 240, '1'),
	(290, 'ACH_Login', 'identity', 16, 100, 10, 270, '1'),
	(291, 'ACH_Login', 'identity', 17, 100, 10, 300, '1'),
	(292, 'ACH_Login', 'identity', 18, 100, 10, 320, '1'),
	(293, 'ACH_Login', 'identity', 19, 100, 10, 365, '1'),
	(294, 'ACH_Login', 'identity', 20, 100, 10, 420, '1');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `player_achievements` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(50) NOT NULL DEFAULT '',
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `progress` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_group` (`player_id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `server_ranks` (
  `rank_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL DEFAULT 'Player',
  `badge_id` varchar(50) DEFAULT 'Player',
  `permission_mod_tool` enum('1','0') NOT NULL DEFAULT '0',
  `permission_room_full_control` enum('1','0') NOT NULL DEFAULT '0',
  `permission_bypass_filter` enum('1','0') NOT NULL DEFAULT '0',
  `permission_room_unkickable` enum('1','0') NOT NULL DEFAULT '0',
  `permission_unignorable` enum('1','0') NOT NULL DEFAULT '0',
  `permission_room_staff_pick` enum('1','0') NOT NULL DEFAULT '0',
  `flood_length` int(11) DEFAULT '30',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `server_ranks` (`rank_id`, `title`, `badge_id`, `permission_mod_tool`, `permission_room_full_control`, `permission_bypass_filter`, `permission_room_unkickable`, `permission_unignorable`, `permission_room_staff_pick`, `flood_length`) VALUES
	(1, 'Player', NULL, '0', '0', '0', '0', '0', '0', 30),
	(2, 'VIP', 'VIP', '0', '0', '0', '0', '0', '0', 15),
	(3, 'Super VIP', 'SVIP', '0', '0', '0', '0', '0', '0', 5);
