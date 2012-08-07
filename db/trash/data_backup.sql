-- MySQL dump 10.13  Distrib 5.5.25a, for osx10.7 (i386)
--
-- Host: localhost    Database: osid
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,'DigiNotar CA Compromise','2011-07-19',2,'The Dutch certificate provider DigiNotar has been compromised in order to issue hundreds of digital certificates for various well-known domains such as google.com, Microsoft.com, mossad.gov.il, skype.com, torproject.org and many more. All the fraudulent issued certificates were revoked. An interim report laying out details about the incident has been published. The attack shows similarities to the Comodo CA Compromise. According to the published incident investigation report the security measures at DigiNotar were weak. Soon after the incident, Vasco the owner of DigiNotar filed bankruptcy. This is probably the first time a company was not able to sustain the reputation damage that resulted from the security incident.','DigiNotar Internet Trust Services',47,'Customers of the certificate services',12,'',5,'',2,'',2,153,'2011-12-03 12:23:30','2012-07-12 19:23:44',1,NULL,NULL),(2,'RSA\'s SecurID Compromise','2011-07-21',2,'RSA, a well-known security product vendor and service provider suffered a serious security incident that showed weaknesses in the vendor’s security posture. The attacker was able to steal the seed data that was used to initialize the SecurID one-time password tokens. The exposed seed data rendered the widely deployed authentication solution, often used to secure remote access to enterprise networks useless. Although RSA emphasized that the attack was carried out by an advanced persistent threat (ATP), the incident report (published by RSA) revealed basic weaknesses like highly critical data being available over the network, and a firewall configuration that let the attacker use FTP to transfer stolen data into the Internet.','RSA Corporation',47,'RSA SecurID customers',14,'',6,'',3,'SecurID token seeds',7,228,'2011-12-03 19:54:33','2012-07-12 19:23:51',1,NULL,NULL);
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Iranian Gmail user suspects man-in-the-middle attack','An Iranian Gmail becomes curios about an SSL warning from the Crome browser that indicates an invalid server certificate.',2,1,'2011-08-28','2011-12-03 12:26:51','2011-12-03 12:26:51',NULL),(2,'Google publishes incident on Google Online Security Blog','Google reports that mainly users from Iran are affected when they access Google services. ',2,1,'2011-08-29','2011-12-03 19:07:39','2011-12-03 19:07:39',NULL),(3,'Microsoft publishes security advisory','Microsoft publishes security advisory and a correspondig knowledge base article.',1,1,'2011-08-29','2011-12-03 19:13:46','2011-12-03 19:14:32',NULL),(4,'GOVCERT.NL makes public announcement','GOVCERT.NL publishes a fact sheet about the event and a list of domains for which certificates were issued.',2,1,'2011-08-31','2011-12-03 19:15:17','2011-12-03 19:15:17',NULL),(5,'Detailed report about the incident from the affected Tor Project','The Tor Project got contacted by the Dutch government and provided detailed information about the incident.',2,1,'2011-09-04','2011-12-03 19:16:24','2011-12-03 19:16:24',NULL),(6,'Mozilla\"s announcement about fraudulent certificates','Mozilla\"s security blog and development center publish appropriate remediation measures.',2,1,'2011-09-06','2011-12-03 19:17:17','2011-12-03 19:17:17',NULL),(7,'Apple\"s security update','Apple publishes a security update to fix the fraudulent certificates.',2,1,'2011-09-09','2011-12-03 19:18:54','2011-12-03 19:18:54',NULL),(8,'OPTA prohibits issuing certificates','The Dutch telecom regulatory (OPTA) prohibits DigiNotar to further issue qualified digital certificates.',2,1,'2011-09-11','2011-12-03 19:19:37','2011-12-03 19:19:37',NULL),(9,'Interim-report on DigiNotar digital breach published','As a result of the Diginotar breach, Fox-IT conducted an investigation into the computer systems of DigiNotar. Among other aspects, Fox-IT investigated how perpetrators accessed the network and what rogue certificates were issued. DigiNotar publishes electronic certificates including SSL, qualified and ‘PKIOverheid’ certificates. DigiNotar hosts a number of computer systems to accomplish these tasks.',2,1,'2011-09-06','2011-12-03 19:20:32','2011-12-03 19:20:32',NULL),(10,'DigiNotar declares bankruptcy','DigiNotar filed a voluntary bankruptcy as a result of the massive security breach.',2,1,'2011-09-20','2011-12-03 19:28:48','2011-12-03 19:29:51',NULL),(11,'First Announcements','',2,2,'2011-03-17','2011-12-03 19:55:37','2011-12-03 19:55:37',NULL),(12,'RSA publishes an open letter to its customers','',2,2,'2011-03-21','2011-12-03 19:56:57','2011-12-05 20:07:59',NULL),(13,'RSA publishes details about attack','The attack sent a few e-mails to a small group of employees. The e-mails came along with a zero-day exploit infected Excel file. After a low privileged user clicked on this file, a remote administration tool was installed, with which the attacker could expand its attack to other systems and higher privileged accounts.  After the attacker reached the target systems, he password encrypted the data and used FTP to transfer it out of RSA’s infrastructure.',1,2,'2011-04-01','2011-12-05 19:37:24','2011-12-05 19:47:23',NULL),(14,'Adobe released security patch for zero-day exploit','Adobe released a patch for the critical vulnerability that was used to compromise RSA.',2,2,'2011-03-21','2011-12-05 20:07:01','2011-12-05 20:07:01',NULL),(15,'Analyst reports about the long-term effects of the compromise','',2,2,'2011-11-14','2011-12-05 20:10:22','2011-12-05 20:10:22',NULL),(16,'RSA starts replacing SecurID tokens','Art Coviello, the CEO of RSA states that the data stolen at RSA has been used to attack Lockheed Martin. He also explains that RSA offers SecurID customers to replace their tokens.',2,2,'2011-06-07','2011-12-05 20:19:49','2011-12-06 07:22:03',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,'Posting of issues on Gmail help forum',NULL,NULL,NULL,'2011-08-28',2,1,'https://www.google.com/support/forum/p/gmail/thread?tid=2da6158b094b225a&hl=en','2011-12-03 12:27:33','2011-12-03 12:27:33',NULL),(2,'File containing screenshot with error and corresponding certificate',NULL,NULL,NULL,'2011-12-03',2,1,'http://www.mediafire.com/?rrklb17slctityb','2011-12-03 12:27:56','2011-12-03 12:27:56',NULL),(3,'An update on attempted man-in-the-middle-attacks',NULL,NULL,NULL,NULL,1,2,'http://googleonlinesecurity.blogspot.com/2011/08/update-on-attempted-man-in-middle.html','2011-12-03 19:13:02','2011-12-03 19:13:02',NULL),(4,'Microsoft Security Advisory (2607712)',NULL,NULL,NULL,NULL,1,3,'http://www.microsoft.com/technet/security/advisory/2607712.mspx','2011-12-03 19:14:01','2011-12-03 19:14:01',NULL),(5,'Factsheet: Fraudulently issued security certificate discovered',NULL,NULL,NULL,NULL,2,4,'https://www.govcert.nl/english/service-provision/knowledge-and-publications/factsheets/factsheet-fraudulently-issued-security-certificate-discovered.html','2011-12-03 19:15:31','2011-12-03 19:15:31',NULL),(6,'Fraudulents Certificates ‐ List of Common Names',NULL,NULL,NULL,NULL,2,4,'https://www.govcert.nl/binaries/live/govcert/hst%3Acontent/english/service-provision/knowledge-and-publications/factsheets/factsheet-fraudulently-issued-security-certificate-discovered/factsheet-fraudulently-issued-security-certificate-discovered/govcert%','2011-12-03 19:15:45','2011-12-03 19:15:45',NULL),(7,'DigiNotar Damage Disclosure',NULL,NULL,NULL,NULL,2,5,'https://blog.torproject.org/blog/diginotar-damage-disclosure','2011-12-03 19:16:36','2011-12-03 19:16:36',NULL),(8,'Firefox security update announcement',NULL,NULL,NULL,NULL,2,6,'https://developer.mozilla.org/devnews/index.php/2011/09/06/firefox-6-0-2-and-3-6-22-security-updates-now-available/','2011-12-03 19:17:35','2011-12-03 19:17:35',NULL),(9,'Fraudulent *.google.com Certificate',NULL,NULL,NULL,NULL,2,6,'http://blog.mozilla.com/security/2011/08/29/fraudulent-google-com-certificate/','2011-12-03 19:17:49','2011-12-03 19:17:49',NULL),(10,'DigiNotar Removal Follow Up',NULL,NULL,NULL,NULL,2,6,'http://blog.mozilla.com/security/2011/09/02/diginotar-removal-follow-up/','2011-12-03 19:18:05','2011-12-03 19:18:05',NULL),(11,'About Security Update 2011-005',NULL,NULL,NULL,NULL,2,7,'https://support.apple.com/kb/HT4920','2011-12-03 19:19:01','2011-12-03 19:19:01',NULL),(12,'OPTA terminates registration DigiNotar',NULL,NULL,NULL,NULL,2,8,'http://www.opta.nl/nl/actueel/alle-publicaties/publicatie/?id=3468','2011-12-03 19:19:53','2011-12-03 19:19:53',NULL),(13,'Interim Report',NULL,NULL,NULL,NULL,2,9,'http://www.rijksoverheid.nl/documenten-en-publicaties/rapporten/2011/09/05/diginotar-public-report-version-1.html','2011-12-03 19:20:44','2011-12-03 19:20:44',NULL),(14,'VASCO Announces Bankruptcy Filing by DigiNotar B.V.',NULL,NULL,NULL,NULL,2,10,'http://www.vasco.com/company/press_room/news_archive/2011/news_vasco_announces_bankruptcy_filing_by_diginotar_bv.aspx','2011-12-03 19:30:02','2011-12-03 19:30:02',NULL),(15,'RSA Hack Yields SecurID Secrets',NULL,NULL,NULL,NULL,2,11,'https://threatpost.com/en_us/blogs/rsa-hack-yields-securid-secrets-031711','2011-12-03 19:55:48','2011-12-03 19:55:48',NULL),(16,'Open Letter to RSA Customers',NULL,NULL,NULL,NULL,2,12,'http://www.rsa.com/node.aspx?id=3872','2011-12-03 19:57:05','2011-12-03 19:57:05',NULL),(17,'Anatomy of an Attack',NULL,NULL,NULL,NULL,1,13,'http://blogs.rsa.com/rivner/anatomy-of-an-attack/','2011-12-05 19:37:36','2011-12-05 19:37:36',NULL),(18,'Security updates available for Adobe Reader and Acrobat',NULL,NULL,NULL,NULL,2,14,'http://www.adobe.com/support/security/bulletins/apsb11-06.html','2011-12-05 20:07:13','2011-12-05 20:07:13',NULL),(19,'Gauging The Long-Term Effects Of RSA\"s Breach',NULL,NULL,NULL,NULL,2,15,'http://www.darkreading.com/authentication/167901072/security/attacks-breaches/231903015/gauging-the-long-term-effects-of-rsa-s-breach.html','2011-12-05 20:10:33','2011-12-05 20:10:33',NULL),(21,'Open Letter to RSA SecurID Customers',NULL,NULL,NULL,NULL,2,16,'http://www.rsa.com/node.aspx?id=3891','2011-12-05 20:21:16','2011-12-05 20:21:16',NULL);
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-12 21:32:58