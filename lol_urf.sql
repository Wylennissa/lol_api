-- MySQL dump 10.13  Distrib 5.5.8, for Win32 (x86)
--
-- Host: localhost    Database: lol_urf
-- ------------------------------------------------------
-- Server version	5.5.8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `1`
--

DROP TABLE IF EXISTS `1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1`
--

LOCK TABLES `1` WRITE;
/*!40000 ALTER TABLE `1` DISABLE KEYS */;
/*!40000 ALTER TABLE `1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `10`
--

DROP TABLE IF EXISTS `10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `10` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `10`
--

LOCK TABLES `10` WRITE;
/*!40000 ALTER TABLE `10` DISABLE KEYS */;
/*!40000 ALTER TABLE `10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2`
--

DROP TABLE IF EXISTS `2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2`
--

LOCK TABLES `2` WRITE;
/*!40000 ALTER TABLE `2` DISABLE KEYS */;
/*!40000 ALTER TABLE `2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `3`
--

DROP TABLE IF EXISTS `3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `3` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3`
--

LOCK TABLES `3` WRITE;
/*!40000 ALTER TABLE `3` DISABLE KEYS */;
/*!40000 ALTER TABLE `3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `4`
--

DROP TABLE IF EXISTS `4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `4` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `4`
--

LOCK TABLES `4` WRITE;
/*!40000 ALTER TABLE `4` DISABLE KEYS */;
/*!40000 ALTER TABLE `4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `5`
--

DROP TABLE IF EXISTS `5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `5` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `5`
--

LOCK TABLES `5` WRITE;
/*!40000 ALTER TABLE `5` DISABLE KEYS */;
/*!40000 ALTER TABLE `5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `6`
--

DROP TABLE IF EXISTS `6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `6` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `6`
--

LOCK TABLES `6` WRITE;
/*!40000 ALTER TABLE `6` DISABLE KEYS */;
/*!40000 ALTER TABLE `6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `7`
--

DROP TABLE IF EXISTS `7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `7` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `7`
--

LOCK TABLES `7` WRITE;
/*!40000 ALTER TABLE `7` DISABLE KEYS */;
/*!40000 ALTER TABLE `7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `8`
--

DROP TABLE IF EXISTS `8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `8` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `8`
--

LOCK TABLES `8` WRITE;
/*!40000 ALTER TABLE `8` DISABLE KEYS */;
/*!40000 ALTER TABLE `8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `9`
--

DROP TABLE IF EXISTS `9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `9` (
  `gameId` int(11) NOT NULL,
  `teamId` int(3) NOT NULL,
  `spell1Id` int(3) NOT NULL,
  `spell2Id` int(3) NOT NULL,
  `championId` int(6) NOT NULL,
  `highestAchievedSeasonTier` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `lane` varchar(10) NOT NULL,
  `runes` varchar(300) NOT NULL,
  `masteries` varchar(600) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `item0` int(6) NOT NULL,
  `item1` int(6) NOT NULL,
  `item2` int(6) NOT NULL,
  `item3` int(6) NOT NULL,
  `item4` int(6) NOT NULL,
  `item5` int(6) NOT NULL,
  `item6` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `combatPlayerScore` int(11) NOT NULL,
  `objectivePlayerScore` int(11) NOT NULL,
  `totalPlayerScore` int(11) NOT NULL,
  `totalScoreRank` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` varchar(11) NOT NULL,
  `firstBloodAssist` varchar(11) NOT NULL,
  `firstTowerKill` varchar(11) NOT NULL,
  `firstTowerAssist` varchar(11) NOT NULL,
  `firstInhibitorKill` varchar(11) NOT NULL,
  `firstInhibitorAssist` varchar(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  `participantId` int(11) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `teamId` (`teamId`,`spell1Id`,`spell2Id`,`championId`,`highestAchievedSeasonTier`,`role`,`lane`,`runes`,`masteries`,`winner`,`champLevel`,`item0`,`item1`,`item2`,`item3`,`item4`),
  KEY `item5` (`item5`,`item6`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`),
  KEY `minionsKilled` (`minionsKilled`,`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`combatPlayerScore`,`objectivePlayerScore`,`totalPlayerScore`,`totalScoreRank`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`),
  KEY `physicalDamageDealt` (`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`,`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`),
  KEY `killingSprees` (`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`,`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `9`
--

LOCK TABLES `9` WRITE;
/*!40000 ALTER TABLE `9` DISABLE KEYS */;
/*!40000 ALTER TABLE `9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_calls`
--

DROP TABLE IF EXISTS `api_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) NOT NULL,
  `date` int(13) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `url` (`url`(767),`date`)
) ENGINE=InnoDB AUTO_INCREMENT=109597 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_calls`
--

LOCK TABLES `api_calls` WRITE;
/*!40000 ALTER TABLE `api_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champ_history`
--

DROP TABLE IF EXISTS `champ_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `champ_history` (
  `id` int(6) NOT NULL,
  `version` varchar(10) NOT NULL,
  `md5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champ_history`
--

LOCK TABLES `champ_history` WRITE;
/*!40000 ALTER TABLE `champ_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `champ_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `champions`
--

DROP TABLE IF EXISTS `champions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `champions` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(22) NOT NULL,
  `winrate` varchar(11) NOT NULL,
  `tier` varchar(11) NOT NULL,
  `games` int(3) NOT NULL,
  `minions` int(3) NOT NULL,
  `gold` int(3) NOT NULL,
  `magic` int(3) NOT NULL,
  `physical` int(3) NOT NULL,
  `wards` int(3) NOT NULL,
  `heal` int(3) NOT NULL,
  `crowd` int(3) NOT NULL,
  `killrate` varchar(11) NOT NULL,
  `pentarate` varchar(11) NOT NULL,
  `assistrate` varchar(11) NOT NULL,
  `goldrate` varchar(11) NOT NULL,
  `deathrate` varchar(11) NOT NULL,
  `damagetakenrate` varchar(11) NOT NULL,
  `towerinhibrate` varchar(11) NOT NULL,
  `minionrate` varchar(11) NOT NULL,
  `date` int(13) NOT NULL,
  UNIQUE KEY `cid` (`cid`),
  KEY `image` (`image`),
  KEY `name` (`name`),
  KEY `winrate` (`winrate`,`tier`,`date`),
  KEY `minions` (`minions`,`gold`,`magic`,`physical`,`wards`,`heal`,`crowd`),
  KEY `killrate` (`killrate`,`pentarate`,`assistrate`,`goldrate`,`deathrate`,`damagetakenrate`,`towerinhibrate`,`minionrate`),
  KEY `games` (`games`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champions`
--

LOCK TABLES `champions` WRITE;
/*!40000 ALTER TABLE `champions` DISABLE KEYS */;
INSERT INTO `champions` VALUES (1,'Annie','annie','0.505521342','master',21,93,56,30,109,28,102,92,'0.119216394','0.002123593','0.091933531','0.179202398','0.109719685','0.307616136','0.013598428','0.118407623',1429311709),(2,'Olaf','olaf','0.484693877','platinum',116,28,95,120,25,91,45,30,'0.082285714','0.001020408','0.083336734','0.169758831','0.115642857','0.467126045','0.027561224','0.117775510',1429311709),(3,'Galio','galio','0.539823008','challenger',77,104,21,5,112,94,59,28,'0.101849330','0.001361470','0.147145450','0.185390238','0.090778307','0.538884229','0.016616746','0.157594054',1429311709),(4,'Twisted Fate','twistedfate','0.502969796','master',41,69,23,18,77,98,97,110,'0.093865790','0.001263743','0.096630860','0.184707456','0.120667256','0.304075676','0.023395677','0.142244281',1429311709),(5,'Xin Zhao','xinzhao','0.539804222','challenger',37,15,49,83,37,13,50,37,'0.128951527','0.004245783','0.080584974','0.179781881','0.120985965','0.451713415','0.032941384','0.107677910',1429311709),(6,'Urgot','urgot','0.505919348','master',66,63,65,122,18,81,108,48,'0.115395856','0.001664816','0.089914909','0.176647630','0.108159452','0.325816744','0.021831298','0.121154273',1429311709),(7,'LeBlanc','leblanc','0.466113811','gold',6,92,89,45,91,36,79,120,'0.115424649','0.001048517','0.079393766','0.171542656','0.104996663','0.307348491','0.011735773','0.105960346',1429311709),(8,'Vladimir','vladimir','0.506710646','master',32,53,22,4,106,29,66,57,'0.110092097','0.002728823','0.105316657','0.185008950','0.101964752','0.504015965','0.015527003','0.152505059',1429311709),(9,'Fiddlesticks','fiddlesticks','0.480700561','platinum',61,46,90,24,120,4,43,44,'0.072735929','0.000680156','0.111581363','0.171356886','0.116721645','0.355682006','0.011066145','0.128546505',1429311709),(10,'Kayle','kayle','0.519692168','master',76,80,105,62,58,80,8,90,'0.076871887','0.000452693','0.117569035','0.166471966','0.101964689','0.412361688','0.023051154','0.112524219',1429311709),(11,'Master Yi','masteryi','0.530730533','challenger',28,11,12,113,2,77,33,117,'0.130387139','0.006889763','0.071571522','0.188394748','0.123519247','0.402830766','0.030248250','0.138357830',1429311709),(12,'Alistar','alistar','0.490645161','diamond',24,112,102,58,86,37,1,33,'0.079188172','0.001075268','0.154518279','0.168041006','0.106817204','0.523998541','0.014484946','0.094940107',1429311709),(13,'Ryze','ryze','0.471197730','gold',39,51,66,31,92,24,120,73,'0.106595534','0.001726902','0.091302578','0.176388458','0.117671148','0.449306336','0.012749475','0.124530282',1429311709),(14,'Sion','sion','0.450581395','gold',88,100,104,81,49,116,28,9,'0.067616279','0','0.117827695','0.167098290','0.113895348','0.569443411','0.013644291','0.117599365',1429311709),(15,'Sivir','sivir','0.498617086','diamond',50,65,46,111,6,32,24,123,'0.085500921','0.000921942','0.112790411','0.180056510','0.103895205','0.298073448','0.028216041','0.157209434',1429311709),(16,'Soraka','soraka','0.494973743','diamond',48,121,110,61,108,63,4,63,'0.049788447','0.000750187','0.193231807','0.164867851','0.094091522','0.330329347','0.010229557','0.091265866',1429311709),(17,'Teemo','satan','0.519112437','master',3,107,60,43,68,122,77,24,'0.094045310','0.000279694','0.119823792','0.177866115','0.107273913','0.297055130','0.014024799','0.114547641',1429311709),(18,'Tristana','tristana','0.482758620','platinum',98,43,107,89,36,39,27,105,'0.078282189','0.000632711','0.078690287','0.165799892','0.115751344','0.323244821','0.029614046','0.115147738',1429311709),(19,'Warwick','warwick','0.513828238','master',83,13,100,68,57,75,37,64,'0.092685589','0.000242600','0.114247937','0.169312227','0.106967491','0.535383163','0.017935468','0.082001698',1429311709),(20,'Nunu','nunu','0.467486338','gold',89,7,85,54,85,35,61,11,'0.088117486','0.000273224','0.101806010','0.171935081','0.113581967','0.487103497','0.013046448','0.098919398',1429311709),(21,'Miss Fortune','missfortune','0.452488687','gold',94,88,75,73,44,40,13,29,'0.072389140','0.000603318','0.104437405','0.174020401','0.112325791','0.324251119','0.022208144','0.143491101',1429311709),(22,'Ashe','ashe','0.470664797','gold',13,108,68,94,33,103,26,15,'0.079519423','0.000400480','0.121652983','0.175946423','0.106794152','0.279692932','0.018417100','0.115373748',1429311709),(23,'Tryndamere','tryndamere','0.531918477','challenger',59,5,41,96,3,88,54,99,'0.106070405','0.001684352','0.086070405','0.181509666','0.103889169','0.547118083','0.028908539','0.133969344',1429311709),(24,'Jax','jax','0.561752988','challenger',40,20,30,86,32,3,92,71,'0.137131300','0.004604853','0.078164281','0.183061230','0.110999377','0.399770233','0.024680771','0.109163161',1429311709),(25,'Morgana','morgana','0.497648824','diamond',12,105,55,34,96,6,94,50,'0.090988494','0.000400200','0.133725862','0.179463295','0.097380690','0.347014500','0.013487743','0.131861630',1429311709),(26,'Zilean','zilean','0.449490778','gold',90,119,118,51,102,114,41,108,'0.046529039','0','0.136614368','0.159757954','0.102892925','0.348334148','0.010093586','0.104733553',1429311709),(27,'Singed','singed','0.487014593','platinum',86,106,76,37,122,76,116,14,'0.071563195','0','0.126952757','0.173455609','0.106401187','0.509458078','0.009624041','0.124395251',1429311709),(28,'Evelynn','evelynn','0.543392275','challenger',36,3,2,14,59,20,114,75,'0.163300372','0.006281991','0.086329688','0.202918623','0.110339692','0.401555893','0.017786179','0.144238948',1429311709),(29,'Twitch','twitch','0.466553287','gold',91,57,83,114,24,53,34,53,'0.092349773','0.000566893','0.082990362','0.172377185','0.116006235','0.315702227','0.025793650','0.112914965',1429311709),(30,'Karthus','karthus','0.514113930','master',16,25,1,1,124,121,96,40,'0.127812086','0.000509528','0.155937022','0.203750336','0.122125751','0.324621149','0.010991541','0.152276062',1429311709),(31,'Cho\'Gath','chogath','0.472246127','gold',25,16,36,27,95,79,44,20,'0.098471385','0.000753012','0.093000215','0.181943361','0.096287650','0.446808448','0.011724397','0.140998171',1429311709),(32,'Amumu','amumu','0.511506524','master',38,22,33,29,107,38,111,45,'0.111690391','0.001423487','0.119240806','0.182656785','0.116934756','0.411837717','0.009621589','0.110891221',1429311709),(33,'Rammus','rammus','0.514144271','master',104,68,81,55,73,104,68,21,'0.086142149','0.000353606','0.132666195','0.172699059','0.117648514','0.417994992','0.015993635','0.096107142',1429311709),(34,'Anivia','anivia','0.441339066','gold',97,94,99,35,115,57,47,2,'0.069659090','0.000614250','0.103617936','0.169408258','0.094677518','0.420349026','0.011348280','0.133558353',1429311709),(35,'Shaco','shaco','0.525651383','challenger',15,55,73,60,60,123,84,42,'0.131693597','0.001716824','0.089741466','0.174626190','0.084084023','0.283722835','0.016726923','0.084029993',1429311709),(36,'Dr. Mundo','drmundo','0.486874409','platinum',68,101,111,59,70,99,39,27,'0.074583569','0.000377714','0.124834749','0.164721915','0.088035882','0.788158855','0.014211520','0.097088385',1429311709),(37,'Sona','sona','0.555566311','challenger',7,114,87,56,75,50,5,118,'0.103611810','0.002516940','0.162606001','0.171865169','0.095952565','0.342564715','0.022151016','0.092372410',1429311709),(38,'Kassadin','kassadin','0.486764034','platinum',33,62,97,49,72,97,104,85,'0.105637836','0.003080785','0.085309219','0.169698011','0.106932907','0.341055701','0.015834094','0.104536513',1429311709),(39,'Irelia','irelia_hate_puns','0.520888219','challenger',106,56,38,108,31,10,56,77,'0.129777945','0.002634550','0.093255551','0.181865156','0.113669552','0.475905385','0.020632292','0.116360933',1429311709),(40,'Janna','janna','0.471204188','gold',108,124,123,67,84,21,2,67,'0.037027788','0','0.170668546','0.154028872','0.088912605','0.281815783','0.012150624','0.073053564',1429311709),(41,'Gangplank','gangplank','0.492898357','diamond',29,67,3,70,35,48,53,3,'0.106948513','0.000998668','0.152847314','0.196370911','0.109102308','0.468109926','0.019202174','0.148652130',1429311709),(42,'Corki','corki','0.465160075','gold',107,38,70,52,53,74,32,122,'0.080256120','0','0.104651600','0.175657966','0.110790960','0.339594485','0.018410546','0.140389453',1429311709),(43,'Karma','karma','0.471637645','gold',23,102,67,22,100,9,81,32,'0.083276359','0.000747783','0.128066445','0.176064657','0.095839119','0.281381621','0.015265463','0.135592458',1429311709),(44,'Taric','taric','0.485903083','platinum',112,120,121,77,71,45,3,61,'0.050096916','0','0.172308370','0.156546876','0.102819383','0.531087594','0.009669603','0.066992070',1429311709),(45,'Veigar','veigar','0.505035645','master',31,64,20,3,110,43,89,100,'0.109592621','0.000339481','0.089927577','0.185426774','0.107602127','0.293422011','0.015085436','0.154092791',1429311709),(48,'Trundle','trundle','0.496171516','diamond',117,40,117,107,38,73,38,16,'0.069285349','0.000510464','0.111403777','0.163435431','0.107861153','0.539090877','0.031311893','0.092882082',1429311709),(50,'Swain','swain','0.494266828','diamond',46,37,45,23,79,55,57,25,'0.108776473','0.000944287','0.099670848','0.180625003','0.115834345','0.480919047','0.013626062','0.128746526',1429311709),(51,'Caitlyn','caitlyn','0.454935622','gold',92,86,86,101,13,78,20,119,'0.074866952','0.000572246','0.102177396','0.171922294','0.099811158','0.279392712','0.022589413','0.133828898',1429311709),(53,'Blitzcrank','blitzcrank','0.494770482','diamond',8,109,63,44,69,26,35,74,'0.111359148','0.000677637','0.124954501','0.176818326','0.111418199','0.385527369','0.017003872','0.101190125',1429311709),(54,'Malphite','malphite','0.500213583','diamond',22,89,29,46,74,5,113,12,'0.131940856','0.000747304','0.112090317','0.183129841','0.107050282','0.346412430','0.013915874','0.105606490',1429311709),(55,'Katarina','katarina','0.496221161','diamond',11,74,10,26,98,2,101,114,'0.146874502','0.011535401','0.085600636','0.188503966','0.115558870','0.336932190','0.012024661','0.137095365',1429311709),(56,'Nocturne','nocturne','0.538801571','challenger',113,19,43,116,15,60,55,95,'0.115672888','0.000491159','0.093772102','0.180688501','0.110825147','0.391264066','0.021714145','0.116374754',1429311709),(57,'Maokai','maokai','0.523865962','challenger',26,87,18,17,104,113,62,22,'0.114311254','0.002046311','0.130032310','0.186642844','0.104452342','0.446852648','0.011310716','0.134934194',1429311709),(58,'Renekton','renekton','0.489920586','diamond',119,34,48,98,20,59,49,88,'0.102779474','0.000610873','0.106395846','0.179870030','0.105626145','0.545854923','0.015729993','0.130572388',1429311709),(59,'Jarvan IV','jarvan9000','0.499132245','diamond',102,30,25,93,34,96,80,56,'0.107375911','0.000694203','0.156706004','0.183701881','0.110128427','0.402189687','0.019229434','0.108885109',1429311709),(60,'Elise','elise','0.481765834','platinum',124,52,114,57,61,61,65,104,'0.070211132','0','0.086765834','0.163452552','0.113934740','0.344911305','0.019424184','0.105998080',1429311709),(61,'Orianna','orianna','0.500212404','diamond',73,70,14,12,87,44,110,5,'0.106563296','0.002124044','0.134180118','0.188062905','0.097863211','0.282184424','0.018545029','0.153688827',1429311709),(62,'Wukong','wukong','0.550903386','challenger',27,29,17,106,12,7,31,97,'0.129956738','0.003028336','0.096328141','0.186825250','0.097685485','0.391631903','0.028246809','0.129992537',1429311709),(63,'Brand','brand','0.459107806','gold',60,84,50,20,113,33,91,91,'0.105789117','0.000337952','0.095532274','0.179740008','0.119684014','0.330482899','0.011916187','0.136250591',1429311709),(64,'Lee Sin','leesin','0.457933279','gold',54,18,82,88,43,1,82,68,'0.104475183','0.000488201','0.099331163','0.172566467','0.118076484','0.398639269','0.015300244','0.097193653',1429311709),(67,'Vayne','vayne','0.509010120','master',85,36,78,115,22,16,14,106,'0.102954825','0.002221673','0.073448531','0.172838427','0.122043939','0.351655541','0.023621328','0.115181436',1429311709),(68,'Rumble','rumble_in_the_jungle','0.519604380','master',103,83,16,21,94,58,121,7,'0.126711409','0.002119392','0.115160720','0.187089886','0.112818791','0.350491536','0.013094312','0.134583539',1429311709),(69,'Cassiopeia','cassiopeia','0.473836011','platinum',110,73,91,40,101,64,46,1,'0.084915533','0','0.099361351','0.170959699','0.122163164','0.350011697','0.011549237','0.120716522',1429311709),(72,'Skarner','skarner','0.533279220','challenger',109,12,64,75,48,62,118,18,'0.096038961','0.001217532','0.119066558','0.176790507','0.093879870','0.355973648','0.022589285','0.112166801',1429311709),(74,'Heimerdinger','heimerdinger','0.485465116','platinum',65,117,80,25,117,118,29,82,'0.070801235','0','0.092407340','0.172775121','0.109823764','0.291572992','0.018524709','0.149413699',1429311709),(75,'Nasus','nasus','0.517316241','master',19,9,58,72,21,108,122,35,'0.080127158','0.000620283','0.091150625','0.178847358','0.106361004','0.526244108','0.034591129','0.146134911',1429311709),(76,'Nidalee','nidalee','0.481575723','platinum',5,96,115,47,97,124,9,124,'0.093733861','0.000659692','0.100208274','0.163452235','0.093014795','0.346414967','0.018211290','0.097207897',1429311709),(77,'Udyr','udyr','0.500978952','diamond',84,1,106,85,41,100,93,49,'0.073465491','0.000244738','0.081316691','0.166361309','0.101532060','0.406169948','0.028582966','0.092395252',1429311709),(78,'Poppy','poppy','0.558912386','challenger',63,33,39,64,54,17,98,59,'0.149984005','0.004798293','0.074529944','0.181673330','0.109989337','0.399923325','0.018827083','0.086938688',1429311709),(79,'Gragas','ladygragas','0.468550592','gold',95,47,74,33,90,69,70,31,'0.095995138','0.000303859','0.104193254','0.174114989','0.109234275','0.420224117','0.011415982','0.114714068',1429311709),(80,'Pantheon','pantheon','0.466532070','gold',51,71,88,92,42,42,75,107,'0.111298338','0.001087125','0.092303152','0.171725552','0.119964280','0.374376629','0.013436869','0.092699021',1429311709),(81,'Ezreal','ezreal','0.491541007','diamond',1,50,5,38,46,115,30,116,'0.127534019','0.003310040','0.111965796','0.190657117','0.099226737','0.299873219','0.019069510','0.160882585',1429311709),(82,'Mordekaiser','mordekaiser','0.506478209','master',78,48,37,8,93,87,40,87,'0.104244994','0.001648998','0.090098939','0.181939559','0.113411071','0.335399279','0.021877502','0.150653945',1429311709),(83,'Yorick','yorick','0.502768166','master',101,49,92,74,47,110,64,6,'0.084301038','0.000346020','0.110162629','0.170959667','0.110709342','0.504434380','0.021927335','0.116666435',1429311709),(84,'Akali','akali','0.491911418','diamond',53,54,96,76,55,67,124,19,'0.108946128','0.004711795','0.082060625','0.169704686','0.113596670','0.389147198','0.013901366','0.092323700',1429311709),(85,'Kennen','kennen','0.533660046','challenger',87,99,44,32,80,51,112,103,'0.122532886','0.003095176','0.100219241','0.180679695','0.108669074','0.341824756','0.017142120','0.117339695',1429311709),(86,'Garen','garen','0.480401529','platinum',79,98,119,99,45,92,99,72,'0.076281070','0','0.087961281','0.158964402','0.100537762','0.471085532','0.017029158','0.087898661',1429311709),(89,'Leona','leona','0.485881455','platinum',42,115,108,66,63,25,11,54,'0.075681760','0.000127194','0.145128466','0.165603085','0.112791910','0.413114744','0.013744594','0.081692190',1429311709),(90,'Malzahar','malzahar','0.499485890','diamond',34,45,53,53,51,86,117,96,'0.092946550','0.001027866','0.089572864','0.179577814','0.115102786','0.314195541','0.032711283','0.155076975',1429311709),(91,'Talon','talon','0.525084101','challenger',47,44,8,123,7,11,72,17,'0.134168494','0.002486470','0.091120374','0.188732467','0.119311101','0.384140598','0.023536638','0.139063185',1429311709),(92,'Riven','riven','0.495769706','diamond',18,24,79,124,17,85,74,102,'0.101333058','0.001754023','0.087416425','0.172795022','0.105176434','0.337345261','0.018063351','0.117094510',1429311709),(96,'Kog\'Maw','kogmaw','0.482433900','platinum',64,59,15,9,66,65,83,8,'0.105181093','0.002354219','0.105152118','0.187218525','0.115411082','0.329435170','0.020387540','0.159548895',1429311709),(98,'Shen','shen','0.531927473','challenger',70,111,103,78,64,89,42,81,'0.086852581','0.000591249','0.177688214','0.167392585','0.094410721','0.404080425','0.013994875','0.065546905',1429311709),(99,'Lux','lux','0.470812773','gold',2,116,54,19,114,83,76,70,'0.094773298','0.000744809','0.128043943','0.179533899','0.097692952','0.244108197','0.011848058','0.139052415',1429311709),(101,'Xerath','xerath','0.451515759','gold',71,97,69,16,123,93,88,62,'0.089433848','0.000602288','0.106687412','0.175901734','0.107285685','0.274476958','0.010293113','0.140565147',1429311709),(102,'Shyvana','shyvana','0.493108728','diamond',122,8,71,63,50,101,17,83,'0.074900459','0','0.098254211','0.175185911','0.101462480','0.460863246','0.022220520','0.124415007',1429311709),(103,'Ahri','ahri','0.522322822','challenger',20,78,19,42,99,14,36,89,'0.115269018','0.001769174','0.105455302','0.186516994','0.102005411','0.327189538','0.016089083','0.150720470',1429311709),(104,'Graves','graves','0.487030820','diamond',96,27,42,102,5,18,22,113,'0.104168446','0.001525785','0.088275862','0.181327058','0.107750991','0.333042441','0.027924931','0.146361611',1429311709),(105,'Fizz','fizz','0.549752999','challenger',14,79,28,50,62,34,107,76,'0.149243875','0.004234297','0.084538763','0.183422828','0.106495614','0.326686826','0.017093457','0.105435326',1429311709),(106,'Volibear','volleyball','0.491803278','diamond',111,58,77,71,52,71,23,10,'0.098438308','0.000431406','0.111876617','0.173250375','0.105349439','0.518994603','0.018705780','0.096742450',1429311709),(107,'Rengar','rengar','0.518185801','master',74,4,24,87,30,68,73,65,'0.127079316','0.001752848','0.089211218','0.184309419','0.115350569','0.417624467','0.016875547','0.102597283',1429311709),(110,'Varus','varus','0.454457364','gold',82,76,62,100,14,47,18,86,'0.091979166','0.000484496','0.098311531','0.177342919','0.111487403','0.300183144','0.023827519','0.138897286',1429311709),(111,'Nautilus','nautilus','0.486583522','platinum',69,90,59,41,83,54,63,13,'0.095239984','0.000188964','0.135196523','0.178771647','0.105472411','0.398829544','0.010506424','0.123432917',1429311709),(112,'Viktor','viktor','0.472552910','platinum',100,77,47,13,111,72,106,101,'0.100578703','0.000992063','0.091838624','0.179964404','0.119851190','0.293176947','0.016130952','0.148517526',1429311709),(113,'Sejuani','sejuani','0.523272214','challenger',62,32,27,39,82,15,90,36,'0.110786318','0.002115655','0.124947108','0.183472981','0.101075458','0.474887834','0.009869534','0.110020275',1429311709),(114,'Fiora','fiora','0.544534412','challenger',52,21,34,117,10,23,51,109,'0.132591093','0.003737153','0.074180940','0.182383688','0.117855808','0.406536346','0.032812208','0.116478822',1429311709),(115,'Ziggs','ziggs','0.458789802','gold',17,103,32,2,118,84,85,43,'0.085574895','0.000511927','0.108434524','0.182679498','0.105062967','0.274854802','0.017101464','0.168529743',1429311709),(117,'Lulu','lulu','0.505859077','master',49,110,84,48,76,12,103,23,'0.075113376','0.000456551','0.145804291','0.171968832','0.099289301','0.337104067','0.016184751','0.117101202',1429311709),(119,'Draven','draven','0.514631685','master',114,41,4,112,1,70,19,78,'0.113289606','0.004540867','0.095110998','0.193914248','0.115257315','0.349624641','0.025918264','0.136696266',1429311709),(120,'Hecarim','hecarim','0.519317957','master',10,10,13,90,28,109,52,69,'0.139639266','0.003055391','0.105874236','0.188272664','0.108163808','0.511926570','0.022070766','0.114868815',1429311709),(121,'Kha\'Zix','khazix','0.504960077','master',81,2,40,121,8,41,71,46,'0.111686426','0.001209774','0.085676264','0.181519414','0.102163077','0.404157616','0.015763368','0.111859182',1429311709),(122,'Darius','darius','0.519487750','master',67,61,35,103,23,52,58,79,'0.121583147','0.002041573','0.090100222','0.182213940','0.116828136','0.442263251','0.021720489','0.124521158',1429311709),(126,'Jayce','jayce','0.473232437','platinum',30,82,52,104,11,102,123,112,'0.103052857','0.000677659','0.113417664','0.179655409','0.096278518','0.315689304','0.025241698','0.138678337',1429311709),(127,'Lissandra','lissandra','0.471260908','gold',93,72,31,11,119,27,109,52,'0.098949744','0.000300932','0.106888353','0.182839563','0.120388203','0.349986337','0.012082455','0.153103520',1429311709),(131,'Diana','diana','0.534303882','challenger',58,26,6,10,81,19,119,93,'0.137351070','0.005020080','0.087009705','0.189546328','0.105694444','0.316772627','0.020667670','0.139850401',1429311709),(133,'Quinn','quinn','0.494159636','diamond',99,42,61,109,16,66,67,51,'0.112553536','0.000973393','0.081567164','0.177426333','0.116813757','0.344811135','0.023504218','0.117705061',1429311709),(134,'Syndra','syndra','0.483754512','platinum',55,85,7,7,105,56,95,41,'0.132193961','0.002625533','0.083168690','0.189315630','0.115403675','0.310307495','0.014264850','0.155175910',1429311709),(143,'Zyra','zyra','0.506746937','master',72,81,11,6,103,22,78,38,'0.102302262','0.001037990','0.113250986','0.188444141','0.113074527','0.302578644','0.013259290','0.155024911',1429311709),(150,'Gnar','gnar','0.483969465','platinum',115,75,113,97,39,117,86,34,'0.069633587','0.000508905','0.101659033','0.163774076','0.112361323','0.410513328','0.016905852','0.103239185',1429311709),(154,'Zac','zac','0.503663003','master',118,6,72,36,121,105,60,26,'0.091428571','0.000610500','0.116251526','0.174725439','0.085061050','0.505590024','0.007026862','0.094803418',1429311709),(157,'Yasuo','yasuo','0.475728155','platinum',75,39,101,91,29,95,115,111,'0.073272285','0.000441306','0.092824360','0.168337296','0.121751985','0.315662557','0.018389232','0.125678508',1429311709),(161,'Vel\'Koz','velkoz','0.446198904','gold',43,95,57,28,116,31,69,47,'0.090601044','0.000127339','0.107984209','0.179018266','0.111787851','0.297654823','0.012023430','0.145858143',1429311709),(201,'Braum','braum','0.478731631','platinum',123,122,120,82,67,30,10,4,'0.047780355','0','0.175831399','0.157186658','0.097006960','0.441656318','0.008143851','0.061417633',1429311709),(222,'Jinx','jinx','0.479882237','platinum',9,91,93,105,19,112,12,115,'0.081263984','0.001079489','0.101258096','0.170638071','0.107642787','0.282026001','0.022241413','0.121782728',1429311709),(236,'Lucian','lucian','0.485304327','platinum',35,31,51,95,9,49,25,121,'0.091495662','0.001388085','0.092286871','0.179727767','0.110780798','0.327507952','0.025733950','0.152156159',1429311709),(238,'Zed','zed','0.524833972','challenger',4,23,9,118,4,106,100,84,'0.143094191','0.002712561','0.077328594','0.188632300','0.110776353','0.344677279','0.020172107','0.146973248',1429311709),(254,'Vi','vi','0.521445067','challenger',56,14,98,119,27,90,87,80,'0.094285714','0.000659848','0.095552622','0.169599396','0.110371164','0.381749214','0.018762784','0.093481194',1429311709),(266,'Aatrox','aatrox','0.483094928','platinum',120,17,94,84,40,107,21,39,'0.080383615','0','0.095936280','0.170294447','0.095669700','0.454095812','0.024414824','0.113676853',1429311709),(267,'Nami','nami','0.487898514','diamond',57,123,112,65,89,8,6,60,'0.065895509','0.000667668','0.178716407','0.164585756','0.097684860','0.344811355','0.012318477','0.071548155',1429311709),(268,'Azir','azir','0.494493830','diamond',44,66,26,15,78,119,105,58,'0.110736367','0.003184290','0.091052142','0.183584233','0.123180310','0.331891133','0.025482287','0.150643624',1429311709),(412,'Thresh','thresh','0.416806722','gold',80,113,122,80,65,46,16,66,'0.049817527','0','0.151217286','0.154361010','0.122744297','0.363393855','0.010516206','0.063467466',1429311709),(421,'Rek\'Sai','reksai','0.459577567','gold',105,35,116,69,56,82,48,98,'0.068506919','0','0.106933721','0.163437487','0.100975965','0.379408404','0.012785870','0.093542243',1429311709),(429,'Kalista','kalista','0.442934782','gold',121,60,109,110,26,111,15,94,'0.070040760','0.000679347','0.092302989','0.165026440','0.121834239','0.315496297','0.023661684','0.12046875',1429311709),(432,'Bard','bard','0.431503198','gold',45,118,124,79,88,120,7,55,'0.043410181','0','0.126703091','0.147003626','0.108140991','0.321121079','0.006841684','0.055296641',1429311709);
/*!40000 ALTER TABLE `champions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_stats`
--

DROP TABLE IF EXISTS `game_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_stats` (
  `gameId` int(11) NOT NULL,
  `platformId` varchar(6) NOT NULL,
  `matchMode` varchar(20) NOT NULL,
  `matchType` varchar(20) NOT NULL,
  `matchCreation` varchar(13) NOT NULL,
  `matchDuration` int(6) NOT NULL,
  `queueType` varchar(10) NOT NULL,
  `mapId` int(6) NOT NULL,
  `season` varchar(10) NOT NULL,
  `matchVersion` varchar(16) NOT NULL,
  `participants` int(2) NOT NULL,
  `checked` int(1) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `platformId` (`platformId`,`matchMode`,`matchType`,`matchCreation`,`matchDuration`,`queueType`,`mapId`,`season`,`matchVersion`,`participants`,`checked`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_stats`
--

LOCK TABLES `game_stats` WRITE;
/*!40000 ALTER TABLE `game_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `dl_version` varchar(22) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `dl_version` (`dl_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock`
--

DROP TABLE IF EXISTS `lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock` (
  `id` int(22) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock`
--

LOCK TABLES `lock` WRITE;
/*!40000 ALTER TABLE `lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_list`
--

DROP TABLE IF EXISTS `master_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_list` (
  `gameId` int(22) NOT NULL,
  `status` int(1) NOT NULL,
  `checked` int(1) NOT NULL,
  `read` int(1) NOT NULL,
  `position` int(1) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `checked` (`checked`,`read`),
  KEY `status` (`status`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_list`
--

LOCK TABLES `master_list` WRITE;
/*!40000 ALTER TABLE `master_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `gameId` int(11) NOT NULL,
  `version` int(1) NOT NULL,
  `in1` int(1) NOT NULL,
  `in2` int(1) NOT NULL,
  `in3` int(1) NOT NULL,
  `in4` int(1) NOT NULL,
  `in5` int(1) NOT NULL,
  `in6` int(1) NOT NULL,
  `in7` int(1) NOT NULL,
  `in8` int(1) NOT NULL,
  `in9` int(1) NOT NULL,
  `in10` int(1) NOT NULL,
  `inteam1` int(1) NOT NULL,
  `inteam2` int(1) NOT NULL,
  `instats` int(1) NOT NULL,
  `good` int(1) NOT NULL,
  `looked` int(1) NOT NULL,
  `max` int(1) NOT NULL,
  `total` int(1) NOT NULL,
  `items` int(1) NOT NULL,
  UNIQUE KEY `gameid` (`gameId`),
  KEY `in1` (`in1`,`in2`,`in3`,`in4`,`in5`,`in6`,`in7`,`in8`,`in9`,`in10`,`inteam1`,`inteam2`),
  KEY `version` (`version`),
  KEY `looked` (`looked`),
  KEY `instats` (`instats`,`good`),
  KEY `max` (`max`,`total`),
  KEY `items` (`items`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redownload`
--

DROP TABLE IF EXISTS `redownload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redownload` (
  `gameId` int(11) NOT NULL,
  `done` int(1) NOT NULL,
  KEY `gameId` (`gameId`,`done`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redownload`
--

LOCK TABLES `redownload` WRITE;
/*!40000 ALTER TABLE `redownload` DISABLE KEYS */;
/*!40000 ALTER TABLE `redownload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `name` varchar(22) NOT NULL,
  `value` int(22) NOT NULL,
  `value_under` int(22) NOT NULL,
  `original` int(22) NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `name` varchar(100) NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team1_stats`
--

DROP TABLE IF EXISTS `team1_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team1_stats` (
  `gameId` int(11) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `firstBlood` varchar(11) NOT NULL,
  `firstTower` varchar(11) NOT NULL,
  `firstInhibitor` varchar(11) NOT NULL,
  `firstBaron` varchar(11) NOT NULL,
  `firstDragon` varchar(11) NOT NULL,
  `towerKills` int(6) NOT NULL,
  `inhibitorKills` int(6) NOT NULL,
  `baronKills` int(6) NOT NULL,
  `dragonKills` int(6) NOT NULL,
  `bans` varchar(1000) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `win` (`winner`,`firstBlood`,`firstTower`,`firstInhibitor`,`firstBaron`,`firstDragon`,`towerKills`,`inhibitorKills`,`baronKills`,`dragonKills`,`bans`(767))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team1_stats`
--

LOCK TABLES `team1_stats` WRITE;
/*!40000 ALTER TABLE `team1_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `team1_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_stats`
--

DROP TABLE IF EXISTS `team2_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team2_stats` (
  `gameId` int(11) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `firstBlood` varchar(11) NOT NULL,
  `firstTower` varchar(11) NOT NULL,
  `firstInhibitor` varchar(11) NOT NULL,
  `firstBaron` varchar(11) NOT NULL,
  `firstDragon` varchar(11) NOT NULL,
  `towerKills` int(6) NOT NULL,
  `inhibitorKills` int(6) NOT NULL,
  `baronKills` int(6) NOT NULL,
  `dragonKills` int(6) NOT NULL,
  `bans` varchar(1000) NOT NULL,
  UNIQUE KEY `gameId` (`gameId`),
  KEY `win` (`winner`,`firstBlood`,`firstTower`,`firstInhibitor`,`firstBaron`,`firstDragon`,`towerKills`,`inhibitorKills`,`baronKills`,`dragonKills`,`bans`(767))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_stats`
--

LOCK TABLES `team2_stats` WRITE;
/*!40000 ALTER TABLE `team2_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `team2_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wu_lock`
--

DROP TABLE IF EXISTS `wu_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wu_lock` (
  `id` varchar(22) NOT NULL,
  `valid` int(1) NOT NULL,
  `done` int(1) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `valid` (`valid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wu_lock`
--

LOCK TABLES `wu_lock` WRITE;
/*!40000 ALTER TABLE `wu_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wu_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_max_table`
--

DROP TABLE IF EXISTS `z_max_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_max_table` (
  `championId` int(6) NOT NULL,
  `winner` int(11) NOT NULL,
  `loser` int(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` int(11) NOT NULL,
  `firstBloodAssist` int(11) NOT NULL,
  `firstTowerKill` int(11) NOT NULL,
  `firstTowerAssist` int(11) NOT NULL,
  `firstInhibitorKill` int(11) NOT NULL,
  `firstInhibitorAssist` int(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  PRIMARY KEY (`championId`),
  KEY `champLevel` (`champLevel`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`,`minionsKilled`),
  KEY `neutralMinionsKilled` (`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`,`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`),
  KEY `firstBloodKill` (`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`,`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`),
  KEY `winner` (`winner`,`loser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_max_table`
--

LOCK TABLES `z_max_table` WRITE;
/*!40000 ALTER TABLE `z_max_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_max_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_total`
--

DROP TABLE IF EXISTS `z_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_total` (
  `championId` int(6) NOT NULL,
  `winner` int(11) NOT NULL,
  `loser` int(11) NOT NULL,
  `champLevel` int(6) NOT NULL,
  `kills` int(6) NOT NULL,
  `doubleKills` int(6) NOT NULL,
  `tripleKills` int(6) NOT NULL,
  `quadraKills` int(6) NOT NULL,
  `pentaKills` int(6) NOT NULL,
  `unrealKills` int(6) NOT NULL,
  `largestKillingSpree` int(6) NOT NULL,
  `deaths` int(6) NOT NULL,
  `assists` int(6) NOT NULL,
  `totalDamageDealt` int(11) NOT NULL,
  `totalDamageDealtToChampions` int(11) NOT NULL,
  `totalDamageTaken` int(11) NOT NULL,
  `largestCriticalStrike` int(11) NOT NULL,
  `totalHeal` int(11) NOT NULL,
  `minionsKilled` int(11) NOT NULL,
  `neutralMinionsKilled` int(11) NOT NULL,
  `neutralMinionsKilledTeamJungle` int(11) NOT NULL,
  `neutralMinionsKilledEnemyJungle` int(11) NOT NULL,
  `goldEarned` int(11) NOT NULL,
  `goldSpent` int(11) NOT NULL,
  `magicDamageDealtToChampions` int(11) NOT NULL,
  `physicalDamageDealtToChampions` int(11) NOT NULL,
  `trueDamageDealtToChampions` int(11) NOT NULL,
  `visionWardsBoughtInGame` int(11) NOT NULL,
  `sightWardsBoughtInGame` int(11) NOT NULL,
  `magicDamageDealt` int(11) NOT NULL,
  `physicalDamageDealt` int(11) NOT NULL,
  `trueDamageDealt` int(11) NOT NULL,
  `magicDamageTaken` int(11) NOT NULL,
  `physicalDamageTaken` int(11) NOT NULL,
  `trueDamageTaken` int(11) NOT NULL,
  `firstBloodKill` int(11) NOT NULL,
  `firstBloodAssist` int(11) NOT NULL,
  `firstTowerKill` int(11) NOT NULL,
  `firstTowerAssist` int(11) NOT NULL,
  `firstInhibitorKill` int(11) NOT NULL,
  `firstInhibitorAssist` int(11) NOT NULL,
  `inhibitorKills` int(11) NOT NULL,
  `towerKills` int(11) NOT NULL,
  `wardsPlaced` int(11) NOT NULL,
  `wardsKilled` int(11) NOT NULL,
  `largestMultiKill` int(11) NOT NULL,
  `killingSprees` int(11) NOT NULL,
  `totalUnitsHealed` int(11) NOT NULL,
  `totalTimeCrowdControlDealt` int(11) NOT NULL,
  PRIMARY KEY (`championId`),
  KEY `champLevel` (`champLevel`,`kills`,`doubleKills`,`tripleKills`,`quadraKills`,`pentaKills`,`unrealKills`,`largestKillingSpree`,`deaths`,`assists`,`totalDamageDealt`,`totalDamageDealtToChampions`,`totalDamageTaken`,`largestCriticalStrike`,`totalHeal`,`minionsKilled`),
  KEY `neutralMinionsKilled` (`neutralMinionsKilled`,`neutralMinionsKilledTeamJungle`,`neutralMinionsKilledEnemyJungle`,`goldEarned`,`goldSpent`,`magicDamageDealtToChampions`,`physicalDamageDealtToChampions`,`trueDamageDealtToChampions`,`visionWardsBoughtInGame`,`sightWardsBoughtInGame`,`magicDamageDealt`,`physicalDamageDealt`,`trueDamageDealt`,`magicDamageTaken`,`physicalDamageTaken`,`trueDamageTaken`),
  KEY `firstBloodKill` (`firstBloodKill`,`firstBloodAssist`,`firstTowerKill`,`firstTowerAssist`,`firstInhibitorKill`,`firstInhibitorAssist`,`inhibitorKills`,`towerKills`,`wardsPlaced`,`wardsKilled`,`largestMultiKill`,`killingSprees`,`totalUnitsHealed`,`totalTimeCrowdControlDealt`),
  KEY `winner` (`winner`,`loser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_total`
--

LOCK TABLES `z_total` WRITE;
/*!40000 ALTER TABLE `z_total` DISABLE KEYS */;
INSERT INTO `z_total` VALUES (1,4785,4682,210467,112852,13259,1513,133,20,0,36190,103830,86954,1378246832,328824471,291101315,65658,17379905,1120996,71689,43206,28501,169603567,152723408,316331545,10279825,2303216,1024,928,1282203621,92505977,3560857,188655863,97052094,5448714,1009,0,568,607,612,1314,2572,10299,89715,4311,16646,26619,9315,3032618),(2,951,1017,42305,16198,1688,119,8,2,0,5347,22771,16425,292384755,51526765,91982293,759403,9120660,231665,30153,17354,12799,33418815,31541179,1046143,35626969,14852260,120,118,4198298,255097135,33087842,47876697,42179238,1925122,241,0,284,105,293,199,1349,4064,15738,914,2998,3702,2118,1545809),(3,2386,2033,97695,45018,5024,523,50,6,0,17409,40102,64995,797285552,168459584,238018666,11384,110237066,696359,29112,15983,13129,81908741,71861138,163370728,4054727,1093072,395,234,754607524,41363028,1780611,114165563,116820775,7162461,342,0,387,411,379,996,1535,5803,35035,1445,7565,10485,4674,3550198),(4,3988,3942,173734,74439,7034,679,80,10,0,23489,95676,76627,1338870046,254197425,241077614,477096,13506450,1128153,79824,48408,31451,146471233,133605325,237314112,14690655,2282404,737,560,1207752059,128678065,3741411,151062835,86297844,3717628,659,0,1242,524,894,847,4201,14340,61907,3690,12506,17214,7840,1811429),(5,4604,3920,185768,109950,14875,1863,200,36,0,34498,103129,68702,1315398760,273401509,385074939,6202089,79476061,918390,153227,91488,61784,153288373,141983626,73386630,196522882,3583454,727,537,372628527,933454425,9425345,200142091,177483675,7515957,966,0,1049,403,1444,881,6307,21784,86424,4520,16224,25813,9127,5731192),(6,2739,2672,117969,62418,6940,647,62,9,0,21423,58524,48659,767800607,162885502,176284109,2535232,9709921,655515,58625,34904,23727,95579141,87879284,1215095,160230403,1468968,455,270,3934261,761516621,2985451,103328466,68818215,4282165,767,0,600,394,604,689,2642,9167,44364,2904,9479,14757,5258,3131265),(7,4942,5634,230178,122010,10685,947,96,11,0,41540,111007,83961,1344954490,294743649,324965954,93859,28054659,1121416,84954,48002,36947,181420186,168178890,279632358,12840855,2369048,1007,775,1216463209,124820420,3970438,205943088,113933817,5088322,1330,0,499,502,606,1198,3001,9412,98653,4775,17083,28396,10822,1891632),(8,4480,4364,199218,97356,11567,1301,139,24,0,33842,90167,93120,1610453375,337128372,445902172,20530,149696690,1348988,107203,56499,50706,163635546,145206840,324559652,9507905,3105550,691,501,1514140177,91590236,5153148,272826644,165320368,8017122,762,0,553,571,624,1203,2913,10818,83773,4353,15651,23135,9229,4219734),(9,2829,3059,128463,42816,4462,405,27,4,0,14016,68733,65693,899980562,152903804,209415820,44450,48870213,756914,74872,47097,27797,100888938,91327251,148080174,3882186,974214,772,580,851826813,45068623,3189112,125327303,80837955,3332104,538,0,407,451,296,692,1327,5190,66319,2839,8868,9723,6345,3637732),(10,2302,2125,94375,34036,3142,284,23,2,0,12027,45128,52044,546817514,101204616,182492216,395950,96597955,498070,40320,25124,15196,73686442,66689951,76736816,22966814,1462082,340,300,378251173,164974562,3134356,108350424,71393016,2801546,305,0,291,248,499,602,2388,7821,36502,2176,6422,7832,18882,1457496),(11,4878,4318,204593,119803,17593,2689,398,63,0,35971,113608,65861,1814513374,300423449,370417120,11433482,53011647,1272004,197813,121318,76436,173234943,159468238,11188738,258113693,31183596,612,474,56988730,1679572764,78823543,197971508,165065776,7387631,1459,0,923,411,1600,724,7305,20503,76203,3598,18269,28551,10140,1811504),(12,4584,4758,200191,74005,6437,539,51,10,0,25199,99802,144314,1038830072,235723506,489477363,850413,303108977,887296,54247,30825,23400,156993883,144411573,214661630,19196497,1740865,837,637,912618227,120824091,4484623,284035258,193305513,11649980,661,0,515,870,691,1898,2886,10645,85952,3682,13387,16833,613087,6537652),(13,3827,4291,177897,86521,9945,1081,93,14,0,27621,95519,74126,1188458711,253051999,364708577,61378,11979124,1011167,101145,59537,41525,143194280,129833552,239194931,11579147,2214347,727,521,1089186683,95156896,3947853,219384918,138442060,6797248,859,0,421,511,467,1016,2032,8326,78399,3518,13897,20187,7620,3298003),(14,1706,2085,81739,25627,1861,93,5,0,0,8249,43176,44648,491755958,86612367,215789840,530882,110160421,445834,26138,16236,9902,63334315,60638967,29317517,56446267,846590,245,161,195299418,293634614,2819891,118460442,92915927,4410843,240,0,234,252,242,488,1143,4033,25455,1095,5161,5567,4234,5812817),(15,3249,3271,141966,55747,5735,573,50,6,0,19346,67717,73524,1161327886,182996777,194345143,6433114,10713047,1025255,69016,39464,29552,117402828,106229213,6296496,175131617,1552490,579,421,47523700,1111038198,2654742,111629043,79343972,3352709,735,0,999,535,1017,735,4273,14132,61662,3661,10160,12879,7415,864040),(16,3306,3371,141291,33252,2404,167,19,5,0,12332,62817,129061,674142199,126825105,220629209,4441557,254220503,609538,25922,16137,9785,110100016,99779419,118439357,7577941,803910,894,784,606988399,65712278,1347450,136329853,80475549,3832134,346,0,326,776,370,1488,1421,5413,56315,2946,8073,7230,44988,2939107),(17,5615,5195,244347,101696,8602,728,66,3,0,33167,115979,129509,1532932740,432772147,321269213,228598,18387630,1239592,68866,34942,33924,192339047,174272089,406489782,22929643,3462050,979,603,1276639467,250264554,6687772,206495687,109506285,5264408,935,0,383,373,729,803,3984,11228,65888,8861,16604,24078,11124,8967544),(18,1528,1638,67401,24788,2071,174,12,2,0,8167,36656,24904,464600579,69775709,102325746,2494729,4944821,364439,41805,25786,16019,52484364,49445972,17549466,51314425,910108,231,192,96991508,365664887,1942391,59166507,41541675,1602043,291,0,403,158,491,253,2069,7310,28921,2028,4529,5460,3538,824221),(19,2123,2007,89304,38269,2891,218,15,1,0,13460,44176,47160,495223010,106737916,221004765,534083,84054701,338556,77286,51118,26170,69911719,64344430,79652707,24794169,2344667,266,238,271874611,211919664,11627393,109714112,107010532,4406333,216,0,236,157,375,556,1791,5621,34449,1722,6117,8746,4531,1814811),(20,1714,1951,79957,32300,2957,191,15,1,0,10525,41634,37317,633440455,94219359,178529199,35276,48057555,362563,84372,49975,34394,63009700,59005983,90051573,3309687,832550,446,255,375063446,49528296,208871288,99481444,75821018,3187134,476,0,184,210,262,423,1110,3670,34258,1583,5564,7539,3871,5288330),(21,1501,1815,72169,24011,2233,191,13,2,0,8137,37248,34637,504086374,82453116,107528215,2033655,5633764,475835,28463,17898,10572,57706796,53668235,34897257,46808028,784778,243,233,211791898,291012199,1447644,64490848,41379729,1704974,266,0,355,208,386,339,1569,5797,30145,1999,4832,5433,4139,2602112),(22,4750,5331,220051,80159,6461,448,41,4,0,27376,107698,122645,1427819641,293342330,282020053,8528441,13475316,1163209,63680,39836,23839,177383287,164302738,97102932,194509782,1820541,743,508,237645495,1187314626,3330843,171237432,106426963,4421440,1040,0,918,664,1081,976,4000,14567,76960,5433,14366,18359,11403,10721385),(23,3165,2783,131439,63117,6490,587,50,10,0,22059,61794,51206,1162319010,174252604,325411467,5080057,116276697,796790,140504,76506,64020,107966125,98709825,19427949,152026929,2858718,337,216,105675219,1050575766,7019904,174953799,145535050,5151791,624,0,336,244,824,574,4563,12624,47968,2498,9801,14633,6333,1720852),(24,4553,3554,180619,111080,15260,2172,272,37,0,36378,89924,63319,1249964142,271586310,323808432,5374116,19103778,884486,137761,78779,58982,148320517,135189912,77040639,191217391,3342790,752,674,285182809,957322721,7497387,185383821,131407753,6999946,1091,0,523,303,1068,808,5120,14875,98366,4122,15902,25741,8069,3354193),(25,4994,5050,223249,91401,8233,726,64,4,0,32415,97806,134246,1443267978,324701385,348458561,61798,14284023,1325059,65313,35568,29754,180250026,159249869,310390332,12285348,2095307,1147,1259,1325526736,114262256,3511346,209566373,132224819,6738810,976,0,744,891,676,1551,2860,10684,107005,4713,15309,21249,9973,5453772),(26,1635,2000,78715,16914,875,53,3,0,0,5702,37401,49652,423280036,68856412,126602598,44154,38452394,380617,15617,9693,5924,58067874,53388662,63312812,5034851,506907,345,296,383295582,39027187,955384,80683409,44057346,1855954,150,0,119,201,193,515,848,2820,24554,1572,4201,3435,3961,874203),(27,1971,2077,90338,28970,1977,139,7,0,0,10030,43073,51402,552193021,127711159,206211626,33738,12148175,503447,25984,13587,12397,70214964,64817387,122314914,4490035,878722,266,262,520501002,30109791,1610721,115149743,86129943,4933151,248,0,92,139,151,444,925,2968,33724,1229,5471,6449,3853,4629140),(28,4699,3944,200238,141107,20142,2691,352,54,0,45935,95344,74634,1702060364,357347846,346867949,791073,20488713,1246602,226474,129633,96845,175318191,158259514,272636719,81013580,3807464,791,507,1369025201,320343009,12924986,196480926,144014863,6340066,1662,0,426,390,722,857,4332,11044,85026,5545,17753,32242,8277,3393895),(29,1647,1885,76813,32627,3286,323,24,2,0,10564,40962,29292,506847336,95667484,111473114,3286241,4838181,398829,41610,24358,17252,60876499,56606071,2904432,81952472,10813612,285,201,21650173,458556755,27069353,65320999,44449863,1753789,371,0,270,142,422,251,2080,7029,30727,4291,5563,7526,3891,1803405),(30,5072,4793,231251,126048,14850,1535,107,5,0,35997,120491,153814,2030876788,640080258,320327606,7884674,16902826,1502494,157164,109257,47918,201007532,183063766,633765658,3058913,3362986,508,378,1976058399,48296874,6225107,199793634,115675566,4969213,460,0,413,381,494,848,2212,8631,63181,3251,18331,31035,9773,6323382),(31,4432,4943,210204,92202,7814,626,44,7,0,33518,90160,87105,1730665409,277921992,418407257,101707,66227041,1321416,163881,104807,59042,170458742,154567915,197323966,9551287,71053454,710,495,1327940638,107839402,293936817,237690773,171474668,9031999,949,0,607,682,522,1217,2137,8859,77181,3738,14425,21559,10095,8476157),(32,4317,4131,190949,94299,10710,1083,88,12,0,29871,98763,100702,1265452672,288444746,347818845,64524,22989852,936720,140745,88336,52416,154276110,139559030,273790259,12087186,2400151,712,526,1168181210,85265006,11536639,205554666,134314212,7573141,615,0,229,412,379,1044,1812,6309,77495,3489,14512,22133,8167,5013282),(33,1457,1374,62639,24387,1916,147,7,1,0,8083,33302,37563,346821839,77158497,118308396,155157,14351286,271910,28574,18776,9806,48881705,45338678,65311716,10929059,916158,175,183,288478021,54696338,3645856,66083420,48636059,3587093,186,0,94,140,188,336,1096,3430,21369,850,4102,5440,2943,2521093),(34,1438,1822,71496,22711,1777,131,13,2,0,8489,30863,33775,455960974,81155915,137059768,3064714,57321434,435387,23938,15113,8829,55223249,50749835,78067450,2611073,512579,286,201,426988656,28219144,819987,85664581,49209771,2241953,220,0,163,200,164,399,774,2925,28024,1585,4439,5194,3500,9392928),(35,5243,4745,218838,131486,13684,1345,137,17,0,48455,84086,89718,1297188477,363810251,283742779,5152364,21426721,839758,120218,69889,50321,174469931,160626317,317797354,41177476,4850845,993,421,955170048,329347710,13104956,177904201,101363942,4543502,1239,0,536,358,997,887,5089,11611,57495,7190,17695,30564,10140,6347717),(36,2584,2720,113864,39562,3050,157,9,2,0,16081,46698,66216,628756702,167658605,418010546,125486,58196665,514855,36510,19699,16811,87361688,79376515,146551539,19171093,1817674,401,272,509265504,114717373,4262862,220239422,187776860,9848235,592,0,291,299,338,875,1624,5910,41274,1895,7431,9171,5789,4296493),(37,5755,4607,215842,107375,12216,1405,161,26,0,39475,99408,168469,1209910367,317291410,354756806,127500,309890130,956619,53725,28671,25080,178022528,157903793,286312036,28534928,2545290,990,1051,1036378300,169736348,4252098,226521132,123134816,5161567,917,0,1130,1272,1343,2349,5352,17587,91086,4174,17751,25397,55072,2034742),(38,4272,4508,189872,92783,9672,1072,141,27,0,31631,93866,74910,1129049995,231652256,299401609,142214,21756314,917613,98376,57896,40492,148992993,137726750,212436432,16470786,2820767,646,543,948425703,175400069,5137025,153770581,139736205,5959527,748,0,447,347,680,825,3897,9998,68999,3389,14526,21445,8618,3046245),(39,1388,1274,59283,34549,4444,551,47,7,0,11394,30251,24825,382956919,88152683,126652394,1854782,23574594,309915,31895,18008,13887,48413050,44089774,11319455,64661917,12169136,282,170,25767401,321771369,35587435,67576182,56398563,2738698,345,0,140,113,235,298,1285,4215,27252,1318,5003,8058,2830,1019727),(40,1171,1314,51858,9197,396,21,0,0,0,3397,22088,42414,207828501,35914879,70010061,71418,36721102,181565,5992,3752,2240,38271827,34832413,31996109,3669067,248432,390,369,173255356,34098889,473006,46607870,22336909,1043219,102,0,118,237,179,519,693,2330,24133,1290,2536,1906,35056,1074886),(41,4458,4602,205311,96898,9661,832,82,9,0,32140,98822,138468,1648307969,317527070,424127201,12952117,158365004,1346632,92243,56010,36237,177913901,162036687,116864907,196683625,3817487,674,450,593463838,1047593983,6690604,245264050,171439204,7402528,1367,0,481,473,921,1171,4269,13114,80422,4475,15030,22997,9651,19419360),(42,1236,1427,58883,21376,1967,150,10,0,0,7208,29491,27883,439467143,71728192,90467451,1729789,5741375,374053,36624,23291,13333,46788188,43890710,47577266,21510199,2638096,218,174,276194899,153704287,9565304,55667183,33442936,1355654,225,0,188,168,207,266,1132,3773,22262,1578,3971,4878,2942,410118),(43,4439,4982,205262,78498,6602,539,50,8,0,29343,90295,120627,1488823525,296077624,265148988,62837,20798553,1277531,63104,36594,26510,165918638,148990504,283641468,10685642,1630072,1267,924,1382645629,102830881,2788315,172967294,87788143,4384484,1039,0,812,865,718,1510,3030,11340,96704,5109,13854,18057,9632,6792822),(44,1104,1168,47730,11378,617,26,1,0,0,3987,23363,39156,173970726,39455584,120656063,170155,71035048,152213,9630,5980,3650,35566154,32784852,31702734,7295733,452221,235,183,126736409,45741181,1524895,72473636,45371678,2740315,146,0,73,165,92,488,437,1759,20344,920,2707,2391,16910,1041337),(45,4489,4408,202357,97454,7756,675,46,3,0,32300,95733,79954,1667889272,283998742,261137677,30346,16373850,1372258,94874,61165,33699,165025391,146947222,276027257,6515208,1599937,712,505,1578187716,86130889,2787100,169003294,87793619,4352994,517,0,604,427,610,862,2701,10728,79782,4422,13917,22496,8884,2571260),(48,972,987,41500,13573,1036,66,4,1,0,4633,21130,21824,234968507,42066976,105607903,620888,26807082,181956,26714,16304,10409,32017001,29683023,9704149,31690322,701271,142,79,19262002,213852028,2205035,55914868,47531260,2260681,132,0,202,65,340,152,1536,4598,16369,878,2690,3032,2148,1938573),(50,3666,3754,166907,80703,8803,987,93,7,0,25119,85963,73955,1195814396,267986128,356858440,46704,108948618,955519,103250,60068,43220,134025581,121106259,248858762,16274874,2923219,503,392,1077709768,113825605,4738588,214604820,135600064,6592674,522,0,336,385,491,940,2105,8009,64176,3542,12645,18925,7886,6056901),(51,1590,1906,75871,26170,2169,194,17,2,0,9569,34890,35726,586599932,97308774,97666899,5433183,4570514,467876,30531,19236,11295,60101465,55064153,16208029,80391122,653337,291,209,43742469,541520881,1289750,59877117,36244592,1529520,282,0,394,241,394,353,1740,6155,28851,2349,5033,6110,4067,683193),(53,5139,5265,228790,115876,10859,1016,90,7,0,38802,115940,129972,1453187790,321242498,401308639,905469,31485483,1053474,65656,37320,28353,184007647,169271157,262246596,56230285,2681545,1088,1019,1212068736,235261506,4797227,239432635,153832490,7903845,1180,0,775,689,985,1371,4385,13292,99967,4104,17080,26882,11447,4214597),(54,4704,4699,211668,124042,12419,1026,71,7,0,41492,100654,105330,1255125371,331856542,325704363,229034,22764536,992655,80538,50168,30363,172170026,157883080,306898126,22272202,2812625,822,591,1070410781,179095639,5930736,202935902,114972123,7892168,948,0,430,460,698,1247,3104,9967,100895,4408,16393,28767,9012,12562474),(55,5017,5092,226080,148365,23535,3966,632,117,0,46485,116814,86500,1565305532,360320147,340594066,81672,24435541,1386192,97815,54709,43123,190520839,173181331,339903380,17308067,3200729,978,1724,1449309416,112087128,4927865,199997016,133759447,6968049,907,0,558,480,612,1131,2702,9455,134581,3989,21260,34776,9962,2210254),(56,1099,942,45108,23599,2444,180,5,1,0,7737,22623,19147,323140376,61611136,79846996,1648099,8032777,237578,35028,21913,13115,36877504,33963252,4648323,56155316,869973,137,129,11224854,308857713,3225879,40929355,37408160,1598409,176,0,194,84,228,173,1146,3284,17494,1005,3414,5565,2173,608489),(57,4904,4452,212056,106924,12151,1314,140,19,0,34822,97746,121778,1544430539,380132901,418266811,98442,73793620,1262801,81045,45098,35945,174699579,157850895,359801712,17852697,2432465,933,573,1439365694,99245512,5507958,245877565,162223131,10059581,901,0,632,833,511,1466,2273,8311,63833,4416,16580,25892,9853,8205473),(58,803,837,36183,16849,1971,209,19,1,0,6074,17330,17442,249527794,47164196,89519251,407792,13197512,214084,24278,13335,10943,29492439,27112554,7250814,39170463,741933,114,102,25173161,222864403,1489230,48481235,39095435,1941541,172,0,103,98,133,226,632,1947,14080,838,2820,3894,1758,550531),(59,1439,1444,63983,30950,2889,223,15,2,0,10521,31745,45189,409648158,81734018,115943736,984759,9246094,313891,43654,25631,18023,52962349,48836421,14510324,66197841,1006631,317,130,71341130,335214451,2955881,65202522,48187187,2488951,262,0,196,194,294,448,1420,4124,22688,1775,4627,7180,2946,1411264),(60,503,542,22421,7327,607,42,4,0,0,2293,11898,9056,137360744,25881633,36014971,24776,2502403,110637,12783,8009,4774,17065800,15680132,23213348,2461681,206063,93,42,103970768,32607820,781601,21484202,13911289,618810,74,0,79,43,126,95,518,1508,8816,500,1470,1678,1097,271608),(61,2363,2357,105818,50317,5565,652,71,10,0,18374,46195,63305,821510231,152064885,133191458,20400,8704297,725364,47466,28468,18988,88761931,78388769,145050886,5882410,1022524,539,411,760416170,58363378,1781652,86907694,44158035,2030851,379,0,392,416,459,697,2040,6712,42284,3042,8068,11761,4578,8863103),(62,5141,4176,209091,121021,15053,1742,185,28,0,42521,91007,89766,1550388020,311583203,364875112,6889379,30554342,1210556,141086,74450,66636,174034025,155416193,19995072,287594999,3738285,936,718,94834500,1446804221,7751048,207046102,150531553,6988604,1647,0,935,450,1500,967,7049,19294,98891,7414,17273,28191,10298,2720824),(63,2723,3206,131813,62714,7017,665,52,2,0,19274,70959,56655,948694380,216629286,195909231,42651,11774157,807613,52399,32950,19442,106562830,96981580,210408013,4922028,1275469,643,525,891571548,55228474,1968384,125149649,67709581,3083428,647,0,477,441,316,718,1339,5729,55592,2760,10150,14950,5899,1943631),(64,2822,3337,133404,64338,6124,448,24,3,0,20748,72719,61161,794000890,156983831,245457034,1698154,17286584,598456,106008,62432,43547,106266459,99166964,23232564,132331829,1449575,513,1881,206821754,581593720,5748599,136024639,104710869,4710653,1170,0,388,321,461,727,2274,7148,105280,2823,9836,15012,6275,2637591),(67,2062,1991,89227,41711,4897,571,61,9,0,13093,49467,29764,615175714,118317122,142522125,4668833,7505042,466773,56723,35419,21324,70046579,65197099,3009512,96331651,18918972,392,191,24006996,540917355,49879222,85210853,54941363,2237411,408,0,257,158,493,335,2258,7313,40756,3485,6936,9588,5014,1027779),(68,1477,1361,63968,35949,4614,613,73,6,0,11939,32018,32677,452509502,118634256,99409247,9306,5921721,381865,25300,14287,11013,53082849,47489553,114398381,3422330,866146,302,162,418141413,32790007,1612981,60263539,37228392,1894321,271,0,139,158,179,396,837,2876,24379,1066,5340,8396,2656,4598931),(69,1150,1277,53625,20609,1871,158,13,0,0,6209,29649,24115,332727242,67685539,84947839,11686,12689657,292979,23524,15109,8415,41491919,38017342,64332410,2781258,570567,231,250,305619682,26144986,961298,53458757,30118817,1368779,153,0,100,115,109,277,573,2230,20441,1124,3649,4644,2611,10028390),(72,1316,1150,53959,23684,2214,180,10,3,0,9265,23147,29370,351602886,62627581,87762613,1197540,5849514,276478,49988,31416,18572,43591735,40081230,34986167,26349447,1290532,178,117,153180636,193196697,5224036,50823467,34865532,2071778,203,0,160,134,299,343,1379,4190,20795,1175,3892,5472,2335,2370868),(74,2677,2841,121107,39058,3206,265,15,0,0,12731,60588,51010,839646476,180629434,160803277,41868,8920306,824322,26518,14818,11700,95318472,85811151,176216035,3608927,845912,531,541,792050186,46337654,1552903,104573236,53857791,2464025,263,0,539,277,666,560,2673,7543,36558,1935,7749,8666,6152,2030320),(75,5050,4702,215420,78125,7820,791,53,6,0,28104,103633,88883,1941964327,271837266,513090585,10113738,19610506,1425096,216285,137016,79312,174413312,159969565,131411226,136725405,3669260,531,472,628023064,1301674144,12396994,271598607,229703484,11639835,522,0,1026,332,1797,683,8255,25472,72903,4329,14981,17877,9109,6739167),(76,5150,5538,224632,100294,8399,695,61,7,0,36781,99504,107220,1338185245,310482786,370648178,8163647,188148921,1040207,77323,44683,32699,174873163,158319978,300343673,8315950,1628451,771,646,1215015131,119482381,4399158,230692169,134451401,5627106,1549,0,765,757,1172,1515,4858,14645,60159,4032,16224,23771,43391,1248271),(77,2051,2042,87238,30061,2589,174,7,1,0,11069,41546,33280,588363199,80498534,166220278,2442264,9711875,378173,126365,79577,46873,68082888,64484019,15074693,63074098,2337266,248,223,156388425,418100776,13888942,88849462,74103127,3382395,387,0,325,135,592,389,3118,8582,31838,1883,5800,6787,4071,2364011),(78,3152,2487,127165,84579,11045,1403,154,27,0,26855,62003,42040,798558153,211639745,225556371,3849525,15777627,490428,84038,48461,35607,102458896,93666476,157369415,51293058,2776444,641,355,467624356,323936192,6013231,130180987,90090133,5216954,618,0,216,191,513,550,2786,7834,56725,2860,11143,19759,5580,2617936),(79,1544,1752,72825,31643,2878,210,16,1,0,10779,35991,34340,477883957,96643818,138492344,2081991,24306282,378146,41808,24938,16882,57387477,52923900,90307559,5530724,803191,317,253,435846098,39724098,2296284,82508337,53523449,2581670,413,0,164,182,176,399,863,2898,27724,1352,5186,7405,3418,2448879),(80,3006,3436,139476,71708,7604,588,47,7,0,22818,77291,59469,792978435,172772161,241200524,7229805,14304084,597093,64789,38378,26411,110631476,103904195,41706666,128937271,2123175,526,428,171152873,617223467,4563327,146970303,88541964,5584702,1038,0,378,369,415,713,2163,6491,58080,2582,10821,16672,6631,1554568),(81,5399,5570,246341,139731,16348,2071,249,37,0,48737,108688,122676,2147483647,460048365,328267027,4262051,17936195,1762657,137062,77420,59637,208888692,190977483,312335475,142577271,4969468,657,563,1394773495,881635434,8664172,205564894,117245954,5365326,1389,0,1022,723,1223,1429,4678,16226,73982,4930,20317,32885,12154,2206403),(82,2153,2101,94171,44340,5418,594,70,7,0,14685,48215,38317,753497751,149442457,142609215,34829,24010724,640910,53781,29436,24345,77386218,69671593,144349148,3305140,1785801,257,199,700988244,49527950,2979100,83504732,56017708,3083258,389,0,424,257,480,569,2156,7147,34439,1653,7403,10499,4635,1444752),(83,1455,1439,62375,24395,2413,189,16,1,0,7883,32045,31869,419548878,85635510,146022807,1789543,57630710,337646,36523,20274,16249,49473093,45969487,39068046,45629593,860580,194,183,184604608,232511940,2106664,81263671,61029006,3619808,272,0,278,232,318,380,1482,4862,20813,1025,4442,5643,3046,5326185),(84,3136,3242,138650,69466,8558,1201,155,30,0,22978,72475,52348,754287425,164753939,248231030,149656,8341382,588666,77272,45938,31334,108226609,97838670,126263070,36889337,1640057,499,417,388026827,363298110,3205202,140621259,103434222,4278617,377,0,191,169,418,557,2363,6496,53635,3108,11163,15990,5855,6084457),(85,2072,1810,87358,47574,5942,714,74,12,0,16277,42185,38912,577041897,147380930,132714527,97598,9314291,455549,27326,15488,11828,70141176,63380644,141201071,5180187,952958,339,231,515969735,58883025,1753217,83645194,46570309,2504133,322,0,165,167,345,403,1702,4957,34035,2029,7098,10961,3729,1053126),(86,2012,2181,89129,31969,2026,107,4,0,0,11621,42165,36872,425376615,86939878,197487318,2059628,8797744,368475,29808,17838,11970,66642248,61612418,27001951,58434085,1521399,240,245,64052384,359064011,2659445,101194880,91204259,5229885,359,0,252,171,301,476,1632,5504,33476,1505,5594,7204,4135,1705961),(89,3828,4056,169754,59679,4996,315,15,1,0,20221,88929,114433,766929971,180740238,325731094,1217377,24395655,644460,40264,23504,16762,130576088,121267211,132246939,46578837,2005340,956,825,552599711,206565520,8142327,179620045,137603751,8774411,660,0,551,565,455,1220,2053,8779,76094,3656,11262,13320,13156,3921655),(90,4396,4405,193491,81863,8020,725,54,9,0,26303,101301,78879,1527606364,275374856,276684379,3018349,13256738,1365657,112627,63338,49308,158129729,145859281,192452525,81302650,1579285,876,633,912924107,611646356,3388695,176006112,96000327,4689858,623,0,2126,700,2025,950,6686,22110,71246,3693,14175,19330,8356,2617787),(91,3594,3253,154617,91889,10804,1273,146,17,0,28168,81687,62378,1166557382,243576693,262983340,8457306,18857816,952044,89351,50053,39330,129216015,116623510,1003566,240153217,2394218,646,367,4171201,1158515225,4073408,149129711,108864634,4809493,576,0,656,273,849,594,4076,12034,69968,3916,12625,21528,7091,6665834),(92,4830,4910,210738,98730,11390,1190,118,17,0,34992,102427,85177,1424678117,241881051,328470611,4135334,25133690,1140492,160150,90626,69504,168302995,154619454,1257022,238233669,2324826,829,689,4212537,1414913080,5647399,179074521,142706176,6761232,1033,0,513,446,875,1063,4349,13247,79002,3778,16331,22899,10065,2667487),(96,2666,2859,125475,58118,6062,684,69,13,0,18127,63758,58098,1068135536,222980312,182002562,942078,9868044,881517,64341,42297,22032,103437571,95119276,190455454,17480763,14999090,485,361,905549975,130115150,32651258,116520731,62877486,2658607,447,0,675,445,554,648,2429,8844,46511,3761,9409,13815,5613,8955907),(98,2702,2387,108901,44192,3598,284,15,3,0,16859,48018,90458,416440042,117972479,205580995,623615,16593960,333570,30848,17932,12916,85180068,78516324,93974180,22179230,1753774,373,255,282845850,129532079,3800437,123537928,76972241,4996859,405,0,176,308,363,914,1833,5284,40950,2064,7481,10172,5541,1874752),(99,5082,5717,240170,102335,8599,742,63,8,0,37420,105503,138290,1739469238,356135254,263808434,50971,15130552,1502871,54225,33052,21156,193974289,173183520,344421621,9885672,1824576,985,1052,1637341211,99232507,2858942,173598850,86232187,3951284,762,0,691,849,724,1660,2612,10182,88485,4446,16665,23998,11113,4525901),(101,2253,2736,109748,44599,3618,348,21,3,0,15167,53526,53200,797830572,158695675,136908780,26467,7194968,701015,35514,22626,12888,87738047,79506255,156326519,1765177,714896,493,361,769183434,27751031,1046445,88872549,45949222,2108093,506,0,379,385,216,566,901,4236,39786,2031,7442,10415,4988,2260775),(102,644,662,28783,9782,907,71,5,0,0,3402,13251,12832,209582298,33947858,60188740,487782,4511059,162486,29719,18459,11260,22879280,21005214,18152379,14989797,804940,77,62,109526913,97297367,2757264,31116382,27636021,1463704,80,0,89,53,113,132,664,2238,10061,619,1901,2229,1544,470223),(103,5050,4611,218193,111383,12196,1359,136,17,0,38231,98523,101875,1617703252,341448058,316058704,63315,52042246,1455931,89525,51773,37746,180204663,158802534,262225726,10897725,68498077,1014,851,1145145576,106611788,366397296,204082205,106513096,5582422,735,0,878,612,767,1263,3333,12211,97520,5315,16726,26134,10616,3200676),(104,1599,1684,71938,34199,3773,383,30,5,0,11662,35372,28968,611194478,97806781,109349657,3513270,5712064,480653,50701,30617,20084,59533069,54845812,6638379,90239634,1001131,351,182,40572180,569098046,1972584,64508879,43022524,1895108,346,0,458,222,480,326,2141,7030,32819,3156,5511,8010,3817,729950),(105,5507,4504,224908,149316,17963,2367,289,42,0,49000,106619,84649,1364037431,353500138,326939024,996815,26446804,1056018,92362,53644,38721,183583934,165563690,291079777,58123442,4343194,1028,629,1056418782,298680655,8802536,200904339,119660018,6451146,861,0,440,419,894,1098,4531,12592,93694,4329,19465,34673,9753,3849145),(106,1142,1178,50614,22834,2516,195,15,1,0,8235,24448,25966,292048625,61366903,120436443,739719,8603346,224475,27312,17175,10137,40198141,36883957,27333878,32933881,1132607,207,141,150835481,138109308,3327866,66568289,50941471,2949972,260,0,173,126,201,306,964,3378,19463,986,3837,5288,2659,3530542),(107,2369,2199,102708,58043,6531,629,63,8,0,19298,52687,40737,734456579,149239474,190716637,4340069,27527752,468680,118831,75186,43650,84186512,78021232,28802678,118205305,2275762,422,263,160395277,566811897,7497818,103528677,83271216,3953343,515,0,208,183,367,363,2052,5655,38431,2757,8044,13191,4723,1998737),(110,1880,2253,89800,38012,3720,354,25,2,0,13099,46075,40647,691478064,126204499,124055289,3817550,6049643,574118,38905,23105,15800,73300869,67808230,18588943,106822337,791036,389,265,59726337,630520832,1513332,75225269,46855076,1992969,551,0,608,374,553,463,2211,7643,36863,2394,6548,8789,4817,1433397),(111,2580,2723,117327,50504,4768,346,23,1,0,17678,55917,71657,727087779,160097314,211400150,171206,14032092,654264,44169,26299,17870,94767729,86791873,144666283,14037946,1412371,445,351,650103230,73111117,4046885,119882800,86447271,5177709,416,0,264,388,227,893,1004,4559,46024,1967,8300,11786,5580,6482837),(112,1431,1596,67363,30437,3283,403,40,3,0,9619,36263,27801,511759001,98504951,88709721,20299,4780216,449569,28081,17733,10355,54467005,49088725,96042946,1832576,697570,255,231,481957856,28954339,1117301,58032831,29330116,1388610,220,0,241,164,241,338,1029,3854,25298,1660,5086,7027,2959,848742),(113,2970,2706,128858,62877,6493,588,50,12,0,22431,57365,70900,812463362,185208910,269461844,90542,23181181,624481,85261,53917,31344,104122422,93200991,168021958,14974947,2216480,554,392,720117091,82548745,9677054,155462792,107822293,6194506,476,0,169,275,242,770,1257,4341,57201,2616,9512,14573,5661,3923034),(114,3501,2930,141823,85267,12368,1690,180,24,0,27278,75781,47680,1049953150,219083278,261376589,6549445,18199233,748957,109206,62122,47086,117274015,107271239,11314534,204394151,3177911,508,308,34505213,1009885841,5836816,153448123,102451905,5324601,693,0,716,210,1257,545,5434,15670,62181,2901,12628,20058,6882,1550046),(115,4511,5323,220258,84177,7620,740,62,5,0,28845,103331,106679,2033810367,350135892,270524568,61911,14708693,1658886,65643,41363,24309,179757341,160253741,341539689,6915120,1788851,940,869,1950036958,81932679,2545258,175233826,91399667,3992254,747,0,1141,683,874,1103,3681,13157,80053,5018,15091,19673,9940,6078752),(117,3328,3247,142524,49384,4125,303,23,3,0,17716,65287,95855,841888170,150618927,221628006,318331,11259070,769902,40334,23791,16543,113062322,102349787,133713827,15517709,1346592,848,776,732310642,106871412,2522327,145732034,72264778,3622821,500,0,436,524,512,1065,2538,8107,66826,3573,9230,11150,6468,5631354),(119,1024,963,44551,22509,2740,320,44,9,0,7277,22896,18898,395194865,70915645,69442652,3024023,3077052,271497,26892,15760,11132,38525942,34707512,1633741,68730986,581300,132,65,12377535,382007634,1020178,42663516,25687274,1128015,161,0,204,84,269,199,1152,4001,16681,1311,3549,5317,2314,753155),(120,5299,4907,225406,142481,17438,1941,199,31,0,48570,110435,108075,1626514351,347525856,522762802,8914352,125767809,1172792,224777,139285,85548,192197751,177189771,64325598,276668784,6571263,632,598,293068338,1314842555,18872341,264152938,246844500,11851841,1246,0,699,509,1266,1181,5921,16612,75886,3465,19237,32668,10867,4303921),(121,2092,2053,93102,46271,4985,474,32,5,0,16163,42333,35511,704588963,117587706,167512759,1738790,32160166,463563,121597,73828,47797,75229313,68087260,6104148,110391356,1184673,390,260,8396585,690276131,6391149,88971944,75538412,3017455,461,0,203,151,288,406,1734,4801,37385,2461,7009,10800,4295,2456989),(122,2803,2594,119566,65624,7788,744,67,11,0,20272,63062,48631,803179245,171275310,238647206,2947086,15221665,671905,60710,33826,26873,98335313,90159486,21215426,114996433,35052128,364,257,62544246,703117429,36962392,130674743,102238508,5702767,886,0,498,327,612,545,2884,8834,46967,2346,9600,15499,5734,2016397),(126,4224,4684,193662,91755,8961,800,83,6,0,33455,85716,100985,1485441035,306204219,280928514,9223037,15113118,1234688,79645,46476,33152,159933625,146473339,36243933,268703652,1423038,830,596,94944960,1388731227,2609747,170676583,105490938,4832098,957,0,1361,934,1275,1262,5209,17247,68074,5235,14664,21672,8247,1985107),(127,1566,1760,74761,32901,3246,268,17,1,0,10291,40045,35547,571603617,103553845,116400150,7560,8001488,509141,32246,19624,12622,60802366,54831958,99402879,3457645,715534,380,287,543388771,27125116,1104280,74661165,39718441,2018498,252,0,227,211,163,407,798,3218,31569,1637,5308,7517,3228,1730094),(131,3199,2788,135539,82204,11329,1645,217,30,0,27399,63276,52093,1076209236,229672752,189633617,66831,11639717,837173,93845,55195,38655,113466768,100952760,213980085,13387846,2205462,577,410,980755819,90089779,4773448,115724167,69947829,3855899,364,0,565,278,647,720,2881,9489,59520,2955,11989,19354,5661,1843076),(133,1523,1559,67191,34689,3750,390,34,3,0,10880,36002,25139,481710007,87706734,106270792,3747329,5390857,362767,41139,23397,17734,54682796,50026597,3491489,83228836,916653,293,150,26885688,452763787,1805142,65706259,38720791,1833265,374,0,267,161,367,260,1755,5489,25956,1876,5247,8109,3208,1643547),(134,2953,3151,137861,80679,8135,901,95,17,0,24604,70411,50775,1086197116,225450371,189382025,22520,12736491,947231,53364,32442,20922,115554405,103579432,216111107,7871385,1462517,636,537,1019293561,64468561,2159563,125246919,61100373,3011698,400,0,578,411,446,759,1709,6989,52712,3300,10709,19210,6052,3894257),(143,2446,2379,110822,49365,5366,571,51,5,0,15242,54548,54636,881769361,200271884,145950048,30408,9458430,747941,43832,25959,17873,90907288,80678871,185250367,5424475,9558671,814,634,812868462,51167675,17779311,96192121,47628168,2193972,221,0,372,370,320,636,1309,5087,46776,2801,8158,11759,4951,3235500),(150,952,1015,42307,13702,1042,52,5,1,0,4588,22094,20004,245879899,46157034,80756133,1250384,4036109,203103,18692,11044,7648,32218278,30074242,7807620,37752650,595712,127,107,31614608,213068068,1196126,45371729,33644843,1738322,117,0,103,89,157,203,787,2535,13176,920,2670,3022,1982,1376271),(154,825,815,36438,14994,1542,144,13,1,0,5914,13966,19060,226829835,46458787,82936638,8450,68040280,155444,38525,24896,13629,28652431,26392586,44307782,1569307,562948,129,89,211576719,12375919,2725041,44825733,36327796,1756054,100,0,39,72,62,204,243,908,12360,619,2613,3545,1734,1335799),(157,2159,2378,97845,33245,3109,290,22,2,0,10722,55231,42111,714310319,98687440,143206368,4142834,5908829,570374,62087,36757,25330,76376927,69873161,16161057,80896515,1595718,305,300,127786109,583689280,2664427,81286920,59242258,2622971,280,0,237,171,399,450,1963,6378,35690,2140,6581,7359,4335,1036207),(161,3506,4353,174060,71202,6511,537,52,1,0,23884,87858,84860,1238374530,259511412,233948134,63131,14027601,1146227,57719,35654,22067,140690575,127614915,221812336,4513961,33141325,976,769,1092210415,66448919,79902475,150107071,80265609,3635048,677,0,665,607,452,1038,1737,7712,74274,3816,12176,16526,8156,4577872),(201,621,675,27583,6187,334,12,0,0,0,2306,12587,22788,89680599,21621673,57246678,151787,4891778,79602,3974,2303,1671,20371066,18775710,16694560,4671205,244197,192,117,57627953,30307712,1701819,33046021,22680041,1484303,97,0,34,66,45,207,214,842,12263,482,1512,1283,2529,2475510),(222,4922,5325,220395,83282,7689,846,82,11,0,28713,110257,103760,1547057724,274806009,288933494,10310874,14440589,1247774,84521,52636,31873,174883434,159223786,22779947,249900352,1966145,610,478,106880637,1436334846,3878060,172655561,111719871,4507477,882,0,1112,558,1176,972,4854,17945,69877,4948,15601,19221,12780,2183840),(236,4213,4473,190443,79437,8128,767,75,12,0,27017,96209,80121,1581880085,240413179,284375611,8743748,15166914,1321510,130802,80323,50491,156090168,144044708,32119239,206334960,1989269,736,395,193023416,1385304271,4076043,170678911,109226002,4429053,1059,0,1028,498,1200,859,5203,17125,76795,5952,13742,18303,9850,1455994),(238,5656,5123,239538,154302,17324,1889,191,29,0,48136,119416,83372,1951923653,402593783,371599790,8833868,29268262,1585026,178994,98899,80188,203406708,188527463,14215723,384614282,3775706,895,839,50052975,1895934974,6087424,197572271,166698937,7430981,1182,0,1229,597,1146,1162,5439,16326,81125,3565,19895,36474,10637,3862748),(254,3164,2905,131277,57224,5004,407,33,4,0,19168,66984,57987,815485213,148280363,231683513,4576379,13125224,567468,110688,72202,38527,102927970,94321639,3746406,141833900,2738720,476,407,20692239,783058809,11721796,122702449,103831668,5139696,459,0,347,201,551,632,2726,8661,48582,2387,9259,13062,6083,2239118),(266,744,795,33469,12368,1124,91,9,0,0,4641,14719,14766,229272132,37921689,69862155,404130,27041267,174884,26735,16129,10606,26204267,24176271,13181698,23954567,784572,113,82,61863777,165411205,1996264,36540085,32028625,1292377,151,0,136,77,194,130,924,2837,11574,738,2287,2816,1790,1008714),(267,2925,3072,128636,39519,3089,247,20,4,0,14490,58586,107175,551058643,143945517,206754500,66720,167774095,428947,15254,9140,6114,98691862,88526616,135425150,7823125,758768,1069,948,475988420,73598744,1383595,132838385,70542868,3252666,395,0,343,599,432,1256,1593,5794,62459,3267,8178,9092,30883,2757832),(268,3734,3815,167487,83625,10674,1413,161,24,0,25821,92982,68751,1305087813,262471017,250567743,68484,15170242,1137426,79652,47773,31850,138602459,125426476,244711598,16198479,1475329,683,468,1185250884,117448157,2340831,157801830,88968523,3802882,674,0,1530,419,890,892,3492,15755,49476,5475,13740,19924,7387,3579603),(412,1739,2437,87148,20792,1166,43,1,0,0,6696,51272,63169,316880078,61607702,151745216,1024063,9035673,264980,21995,13933,8053,64454953,61976068,53027443,8199921,375413,600,407,217340752,98713936,784804,92076218,57153616,2611019,346,0,158,300,205,603,928,3467,37279,2170,4994,4114,4954,1813535),(421,1263,1491,59269,18884,1320,100,6,0,0,6951,27812,29443,342222868,69915499,104527075,669426,16899829,257707,38973,24076,14897,45012493,42504892,47716371,18700217,3464981,149,186,181040663,145783585,15240105,60538143,42108194,1873797,116,0,82,88,169,220,911,2608,22495,932,3695,4284,2953,798134),(429,652,821,31061,10317,964,92,8,1,0,3305,17945,13599,202681515,31341377,46468904,1258362,2034136,177418,16682,10354,6426,24305386,22771984,2313916,28681445,366561,101,59,11951690,190102892,903490,27393565,18394628,722431,150,0,118,64,171,118,772,2711,10277,901,2128,2296,1777,442806),(432,3240,4270,155873,32586,1876,110,7,0,0,10838,81198,95141,494567624,98746136,241103668,547387,71218684,415228,35261,20827,14434,110377053,101889878,82833895,14878868,1022197,653,1633,399092124,92601731,3019085,150053250,87296615,3896673,418,0,112,276,230,741,1169,3966,49071,2774,8504,6580,32398,3699126);
/*!40000 ALTER TABLE `z_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_total_items`
--

DROP TABLE IF EXISTS `z_total_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_total_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `championId` int(6) NOT NULL,
  `itemid` int(6) NOT NULL,
  `champitemid` varchar(12) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `champitemid` (`champitemid`),
  KEY `champid` (`championId`,`itemid`),
  KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=500191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_total_items`
--

LOCK TABLES `z_total_items` WRITE;
/*!40000 ALTER TABLE `z_total_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_total_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_total_items_log`
--

DROP TABLE IF EXISTS `z_total_items_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_total_items_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(11) NOT NULL,
  `cid` int(6) NOT NULL,
  `field` varchar(100) NOT NULL,
  `new` int(11) NOT NULL,
  `current` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` int(13) NOT NULL,
  `done` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `new` (`new`,`current`,`total`,`time`),
  KEY `done` (`done`),
  KEY `field` (`field`),
  KEY `cid` (`cid`),
  KEY `gameId` (`gameId`)
) ENGINE=InnoDB AUTO_INCREMENT=2362135 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_total_items_log`
--

LOCK TABLES `z_total_items_log` WRITE;
/*!40000 ALTER TABLE `z_total_items_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_total_items_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_total_log`
--

DROP TABLE IF EXISTS `z_total_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_total_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(11) NOT NULL,
  `cid` int(6) NOT NULL,
  `field` varchar(100) NOT NULL,
  `new` int(11) NOT NULL,
  `current` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` int(13) NOT NULL,
  `done` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `new` (`new`,`current`,`total`,`time`),
  KEY `done` (`done`),
  KEY `field` (`field`),
  KEY `cid` (`cid`),
  KEY `gameId` (`gameId`)
) ENGINE=InnoDB AUTO_INCREMENT=29307780 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_total_log`
--

LOCK TABLES `z_total_log` WRITE;
/*!40000 ALTER TABLE `z_total_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_total_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_total_spells`
--

DROP TABLE IF EXISTS `z_total_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_total_spells` (
  `id` int(11) NOT NULL,
  `champid` int(6) NOT NULL,
  `spellid` int(6) NOT NULL,
  `champspellid` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `champspellid` (`champspellid`),
  KEY `champid` (`champid`,`spellid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_total_spells`
--

LOCK TABLES `z_total_spells` WRITE;
/*!40000 ALTER TABLE `z_total_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `z_total_spells` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-17 17:14:05
