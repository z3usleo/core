-- ADVANCE CHARACTERS TABLE
/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50045
Source Host           : 127.0.0.1:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2010-12-05 19:43:59
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL default '0',
  `maxpower1` int(10) unsigned NOT NULL default '0',
  `maxpower2` int(10) unsigned NOT NULL default '0',
  `maxpower3` int(10) unsigned NOT NULL default '0',
  `maxpower4` int(10) unsigned NOT NULL default '0',
  `maxpower5` int(10) unsigned NOT NULL default '0',
  `maxpower6` int(10) unsigned NOT NULL default '0',
  `maxpower7` int(10) unsigned NOT NULL default '0',
  `strength` int(10) unsigned NOT NULL default '0',
  `agility` int(10) unsigned NOT NULL default '0',
  `stamina` int(10) unsigned NOT NULL default '0',
  `intellect` int(10) unsigned NOT NULL default '0',
  `spirit` int(10) unsigned NOT NULL default '0',
  `armor` int(10) unsigned NOT NULL default '0',
  `resHoly` int(10) unsigned NOT NULL default '0',
  `resFire` int(10) unsigned NOT NULL default '0',
  `resNature` int(10) unsigned NOT NULL default '0',
  `resFrost` int(10) unsigned NOT NULL default '0',
  `resShadow` int(10) unsigned NOT NULL default '0',
  `resArcane` int(10) unsigned NOT NULL default '0',
  `blockPct` float unsigned NOT NULL default '0',
  `dodgePct` float unsigned NOT NULL default '0',
  `parryPct` float unsigned NOT NULL default '0',
  `critPct` float unsigned NOT NULL default '0',
  `rangedCritPct` float unsigned NOT NULL default '0',
  `spellCritPct` float unsigned NOT NULL default '0',
  `attackPower` int(10) unsigned NOT NULL default '0',
  `rangedAttackPower` int(10) unsigned NOT NULL default '0',
  `spellPower` int(10) unsigned NOT NULL default '0',
  `apmelee` int(11) NOT NULL,
  `ranged` int(11) NOT NULL,
  `blockrating` int(11) NOT NULL,
  `defrating` int(11) NOT NULL,
  `dodgerating` int(11) NOT NULL,
  `parryrating` int(11) NOT NULL,
  `resilience` int(11) NOT NULL,
  `manaregen` float NOT NULL,
  `melee_hitrating` int(11) NOT NULL,
  `melee_critrating` int(11) NOT NULL,
  `melee_hasterating` int(11) NOT NULL,
  `melee_mainmindmg` float NOT NULL,
  `melee_mainmaxdmg` float NOT NULL,
  `melee_offmindmg` float NOT NULL,
  `melee_offmaxdmg` float NOT NULL,
  `melee_maintime` float NOT NULL,
  `melee_offtime` float NOT NULL,
  `ranged_critrating` int(11) NOT NULL,
  `ranged_hasterating` int(11) NOT NULL,
  `ranged_hitrating` int(11) NOT NULL,
  `ranged_mindmg` float NOT NULL,
  `ranged_maxdmg` float NOT NULL,
  `ranged_attacktime` float NOT NULL,
  `spell_hitrating` int(11) NOT NULL,
  `spell_critrating` int(11) NOT NULL,
  `spell_hasterating` int(11) NOT NULL,
  `spell_bonusdmg` int(11) NOT NULL,
  `spell_bonusheal` int(11) NOT NULL,
  `spell_critproc` float NOT NULL,
  `account` int(11) unsigned NOT NULL default '0',
  `name` varchar(12) NOT NULL default '',
  `race` tinyint(3) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `gender` tinyint(3) unsigned NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `map` int(11) unsigned NOT NULL default '0',
  `money` int(10) unsigned NOT NULL default '0',
  `totaltime` int(11) unsigned NOT NULL default '0',
  `online` int(10) unsigned NOT NULL default '0',
  `arenaPoints` int(10) unsigned NOT NULL default '0',
  `totalHonorPoints` int(10) unsigned NOT NULL default '0',
  `totalKills` int(10) unsigned NOT NULL default '0',
  `equipmentCache` longtext NOT NULL,
  `specCount` tinyint(3) unsigned NOT NULL default '1',
  `activeSpec` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
------------------------------------------------------------------------------------------------------------------------
-- CHARACTERS JAIL
/*
MySQL Data Transfer
Source Host: localhost
Source Database: 01
Target Host: localhost
Target Database: 01
Date: 12.11.2008 00:55:44
*/
DROP TABLE IF EXISTS `jail_conf`;
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for jail_conf
-- ----------------------------
CREATE TABLE `jail_conf` (
  `id` int(11) NOT NULL auto_increment,
  `obt` varchar(50) default NULL,
  `jail_conf` int(11) default NULL,
  `jail_tele` float default NULL,
  `help_ger` varchar(255) character set latin1 default '',
  `help_enq` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `jail_conf` VALUES ('1', 'm_jailconf_max_jails', '3', null, 'Hier legst ihre fest nach wie fielen Jails der Char gel�scht werden \r\nStandart = 3\r\n ', '');
INSERT INTO `jail_conf` VALUES ('2', 'm_jailconf_max_duration', '672', null, 'Hier legst ihre fest wie hoch der maximale Jail Time in Stunden \r\nStandart = 672\r\n', '');
INSERT INTO `jail_conf` VALUES ('3', 'm_jailconf_min_reason', '25', null, 'Hier legst ihre die minimalen Zeichen fest die als Grund angeben m�sst  \r\nStandart = 25\r\n\r\n', '');
INSERT INTO `jail_conf` VALUES ('4', 'm_jailconf_warn_player', '1', null, 'Hier legst ihre fest wann der Char gewarnt wirt  bevor er gel�scht wird \r\nStandart = 1\r\n', '');
INSERT INTO `jail_conf` VALUES ('5', 'm_jailconf_amnestie', '180', null, 'Hier legst ihre in Tagen fest wann der Jail Status  auf 0 zur�ckgesetzt wird   \r\nStandart = 180 Tage (das entspricht ca. � Jahr)  \r\n                     0  Tage (Aus )\r\n', '');
INSERT INTO `jail_conf` VALUES ('6', 'm_jailconf_ally_x', null, '31.7282', 'Teleport Alliance  X Achse \r\nStandart = 31,7282\r\n', '');
INSERT INTO `jail_conf` VALUES ('7', 'm_jailconf_ally_y', null, '135.794', 'Teleport Alliance  Y Achse \r\nStandart = 135,794\r\n', '');
INSERT INTO `jail_conf` VALUES ('8', 'm_jailconf_ally_z', null, '-40.0508', 'Teleport Alliance  Z Achse \r\nStandart = -40,0508', '');
INSERT INTO `jail_conf` VALUES ('9', 'm_jailconf_ally_o', null, '4.73516', 'Teleport Alliance  blickrichtung\r\nStandart = 4,73516', '');
INSERT INTO `jail_conf` VALUES ('10', 'm_jailconf_ally_m', '35', null, 'Teleport Alliance  Mape\r\nStandart = 35', '');
INSERT INTO `jail_conf` VALUES ('11', 'm_jailconf_horde_x', null, '2179.85', 'Teleport Horde  X Achse \r\nStandart = \r\n', '');
INSERT INTO `jail_conf` VALUES ('12', 'm_jailconf_horde_y', null, '-4763.96', 'Teleport Horde  Y Achse \r\nStandart = -4763,96', '');
INSERT INTO `jail_conf` VALUES ('13', 'm_jailconf_horde_z', null, '54.911', 'Teleport Horde  Z Achse \r\nStandart = 54,911', '');
INSERT INTO `jail_conf` VALUES ('14', 'm_jailconf_horde_o', null, '4.44216', 'Teleport  Horde  blickrichtung\r\nStandart = 4,44216', '');
INSERT INTO `jail_conf` VALUES ('15', 'm_jailconf_horde_m', '1', null, 'Teleport Horde  Mape\r\nStandart = 1', '');
INSERT INTO `jail_conf` VALUES ('16', 'm_jailconf_ban', '0', null, 'Nach wie vielen Jail soll der  Account Gebant werden\r\nStandart = 0  (aus)\r\n', '');
INSERT INTO `jail_conf` VALUES ('17', 'm_jailconf_radius', '10', null, 'Legt den Bewegung Radius in Metern waren des Jails fest\r\nStandart = 10\r\n', '');

/*
MySQL Data Transfer
Source Host: localhost
Source Database: 01
Target Host: localhost
Target Database: 01
Date: 12.11.2008 00:08:28
*/
DROP TABLE IF EXISTS `jail`;
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for jail
-- ----------------------------
CREATE TABLE `jail` (
  `guid` int(11) unsigned NOT NULL COMMENT 'GUID of the jail brother',
  `char` varchar(13) NOT NULL COMMENT 'Jailed charname',
  `release` int(11) unsigned NOT NULL COMMENT 'Release time for the char',
  `amnestietime` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL COMMENT 'Reason for the jail',
  `times` int(11) unsigned NOT NULL COMMENT 'How many times this char already was jailed',
  `gmacc` int(11) unsigned NOT NULL COMMENT 'Used GM acc to jail this char',
  `gmchar` varchar(13) NOT NULL COMMENT 'Used GM char to jail this char',
  `lasttime` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP COMMENT 'Last time jailed',
  `duration` int(11) unsigned NOT NULL default '0' COMMENT 'Duration of the jail',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Jail table for MaNGOS by WarHead';

-- ----------------------------
-- Records 
-- ----------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

