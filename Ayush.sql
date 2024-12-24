-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: dict
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Antonyms`
--

DROP TABLE IF EXISTS `Antonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Antonyms` (
  `SNO_` int DEFAULT NULL,
  `SubSNO_` varchar(255) DEFAULT NULL,
  `Anto_id` varchar(255) NOT NULL,
  `Anto_word` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Anto_id`),
  KEY `SNO_` (`SNO_`),
  KEY `SubSNO_` (`SubSNO_`),
  CONSTRAINT `Antonyms_ibfk_1` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`),
  CONSTRAINT `Antonyms_ibfk_2` FOREIGN KEY (`SubSNO_`) REFERENCES `means` (`M_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Antonyms`
--

LOCK TABLES `Antonyms` WRITE;
/*!40000 ALTER TABLE `Antonyms` DISABLE KEYS */;
INSERT INTO `Antonyms` VALUES (1,'1a','1aa','inept'),(1,'1a','1ab','awkward'),(1,'1a','1ac','bumbling'),(1,'1a','1ad','incompetent'),(1,'1b','1ba','inept person'),(1,'1b','1bb','awkward person'),(1,'1b','1bc','bumbling person'),(1,'1b','1bd','incompetent person'),(2,'2a','2aa','artifice'),(2,'2a','2ab','guile'),(2,'2a','2ac','dishonesty'),(2,'2b','2ba','deceit'),(2,'2b','2bb','indirection'),(3,'3a','3aa','disrespect'),(3,'3a','3ab','contempt'),(3,'3a','3ac','coarseness'),(3,'3b','3ba','discourtesy'),(3,'3b','3bb','impertinence'),(3,'3b','3bc','insolency'),(4,'4a','4aa','marvellous'),(4,'4a','4ab','heavenly'),(4,'4a','4ac','wonderful'),(4,'4b','4ba','marvellous'),(4,'4b','4bb','heavenly'),(4,'4b','4bc','wonderful'),(5,'5a','5aa','impede'),(5,'5a','5ab','disrupt'),(5,'5a','5ac','disconcert'),(5,'5b','5ba','immoderate'),(5,'5b','5bb','unreasonable'),(5,'5b','5bc','implausibility'),(5,'5c','5ca','hamper'),(5,'5c','5cb','interfere'),(5,'5c','5cc','retard');
/*!40000 ALTER TABLE `Antonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POS`
--

DROP TABLE IF EXISTS `POS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `POS` (
  `SNO_` int DEFAULT NULL,
  `POS_index` varchar(255) NOT NULL,
  `PartOfSpeech` varchar(255) DEFAULT NULL,
  `Syllable` varchar(255) DEFAULT NULL,
  `Pronounciation` varchar(255) DEFAULT NULL,
  `Example` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`POS_index`),
  KEY `SNO_` (`SNO_`),
  CONSTRAINT `POS_ibfk_1` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`),
  CONSTRAINT `POS_ibfk_2` FOREIGN KEY (`POS_index`) REFERENCES `means` (`M_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POS`
--

LOCK TABLES `POS` WRITE;
/*!40000 ALTER TABLE `POS` DISABLE KEYS */;
INSERT INTO `POS` VALUES (1,'1a','adjective','ad-ept','uh-dept','an adept juggler.'),(1,'1b','noun','ad-ept','uh-dept,ad-ept','An adept chess player.'),(2,'2a','noun','can-dor','kan-der','The candor of the speech impressed the audience.'),(2,'2b','noun','can-dor','kan-der','to consider an issue with candor.'),(3,'3a','noun','def-er-ence','def-er-uhns','He does not smoke in deference to his mother.'),(3,'3b','noun','def-er-ence','def-er-uhns','in deference to his wishes.'),(4,'4a','adjective','e-gre-gious','ih-gree-juhs, -jee-uhs','an egregious mistake; an egregious liar.'),(4,'4b','adjective','e-gre-gious','ih-gree-juhs, -jee-uhs','Thee shall die thee egregious soul!'),(5,'5a','verb','fa-cil-i-tate','fuh-sil-i-teyt','Careful planning facilitates any kind of work.'),(5,'5b','verb','fa-cil-i-tate','fuh-sil-i-teyt','An instructor will facilitate the online discussions, providing students with the questions beforehand.'),(5,'5c','verb','fa-cil-i-tate','fuh-sil-i-teyt','His progress in chess was monitored by GM Gukesh.');
/*!40000 ALTER TABLE `POS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Synonyms`
--

DROP TABLE IF EXISTS `Synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Synonyms` (
  `SNO_` int DEFAULT NULL,
  `SubSNO_` varchar(255) DEFAULT NULL,
  `Syn_id` varchar(255) NOT NULL,
  `Syn_word` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Syn_id`),
  KEY `SNO_` (`SNO_`),
  KEY `SubSNO_` (`SubSNO_`),
  CONSTRAINT `Synonyms_ibfk_1` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`),
  CONSTRAINT `Synonyms_ibfk_2` FOREIGN KEY (`SubSNO_`) REFERENCES `means` (`M_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Synonyms`
--

LOCK TABLES `Synonyms` WRITE;
/*!40000 ALTER TABLE `Synonyms` DISABLE KEYS */;
INSERT INTO `Synonyms` VALUES (1,'1a','1aa','accomplished'),(1,'1a','1ab','adroit'),(1,'1a','1ac','capable'),(1,'1a','1ad','deft'),(1,'1a','1ae','proficient'),(1,'1a','1af','skilled'),(1,'1a','1ag','skillful'),(1,'1a','1ah','versed'),(1,'1b','1ba','accomplished person'),(1,'1b','1bb','adroit person'),(1,'1b','1bc','capable person'),(1,'1b','1bd','proficient person'),(1,'1b','1be','skilled person'),(1,'1b','1bf','versed'),(2,'2a','2aa','directness'),(2,'2a','2ab','outspokenness'),(2,'2a','2ac','frankness'),(2,'2a','2ad','honesty'),(2,'2a','2ae','probity'),(2,'2a','2af','simplicity'),(2,'2a','2ag','sincerety'),(2,'2a','2ah','truthfulness'),(2,'2b','2ba','impartiality'),(2,'2b','2bb','unequivocalness'),(2,'2b','2bc','veracity'),(2,'2b','2bd','guilelessness'),(3,'3a','3aa','docility'),(3,'3a','3ab','submission'),(3,'3a','3ac','condescension'),(3,'3a','3ad','capitulation'),(3,'3b','3ba','yielding'),(3,'3b','3bb','obeisance'),(3,'3b','3bc','complaisance'),(4,'4a','4aa','attrocious'),(4,'4a','4ab','deploration'),(4,'4a','4ac','extreme'),(4,'4a','4ad','flagrant'),(4,'4a','4ae','glaring'),(4,'4a','4af','grevious'),(4,'4a','4ag','heinous'),(4,'4a','4ah','intolerable'),(4,'4a','4ai','nefarious'),(4,'4a','4aj','scandalous'),(4,'4a','4ak','shocking'),(4,'4a','4al','arrant'),(4,'4a','4am','capital'),(4,'4a','4an','gross'),(4,'4a','4ao','infamous'),(4,'4a','4ap','insufferable'),(4,'4a','4aq','monsterous'),(4,'4a','4ar','notoreous'),(4,'4b','4ba','attrocious'),(4,'4b','4bb','deploration'),(4,'4b','4bc','extreme'),(4,'4b','4bd','flagrant'),(4,'4b','4be','glaring'),(4,'4b','4bf','grevious'),(4,'4b','4bg','heinous'),(4,'4b','4bh','intolerable'),(4,'4b','4bi','nefarious'),(4,'4b','4bj','scandalous'),(4,'4b','4bk','shocking'),(4,'4b','4bl','arrant'),(4,'4b','4bm','capital'),(4,'4b','4bn','gross'),(4,'4b','4bo','infamous'),(4,'4b','4bp','insufferable'),(4,'4b','4bq','monsterous'),(4,'4b','4br','notoreous'),(5,'5a','5aa','aid'),(5,'5a','5ab','ease'),(5,'5a','5ac','simplify'),(5,'5a','5ad','smooth'),(5,'5a','5ae','make easy'),(5,'5b','5ba','fairness'),(5,'5b','5bb','restraint'),(5,'5b','5bc','judiciousness'),(5,'5b','5bd','moderation'),(5,'5c','5ca','assist'),(5,'5c','5cb','help'),(5,'5c','5cc','aid'),(5,'5c','5cd','abetment'),(5,'5c','5ce','assistance'),(5,'5c','5cf','backing'),(5,'5c','5cg','benefit'),(5,'5c','5ch','boost'),(5,'5c','5ci','collaboration'),(5,'5c','5cj','service'),(5,'5c','5ck','reinforcement');
/*!40000 ALTER TABLE `Synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gujarati`
--

DROP TABLE IF EXISTS `gujarati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gujarati` (
  `SNO_` int DEFAULT NULL,
  `SubSNO_` varchar(255) DEFAULT NULL,
  `SubSubSNO_` varchar(255) NOT NULL,
  `Meaning` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`SubSubSNO_`),
  KEY `SubSNO_` (`SubSNO_`),
  KEY `SNO_` (`SNO_`),
  CONSTRAINT `gujarati_ibfk_1` FOREIGN KEY (`SubSNO_`) REFERENCES `means` (`M_id`),
  CONSTRAINT `gujarati_ibfk_2` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gujarati`
--

LOCK TABLES `gujarati` WRITE;
/*!40000 ALTER TABLE `gujarati` DISABLE KEYS */;
INSERT INTO `gujarati` VALUES (1,'1a','1aa','પારંગત'),(1,'1a','1ab','દક્ષ'),(1,'1a','1ac','નિપુણ'),(1,'1a','1ad','કાબેલ'),(1,'1a','1ae','પ્રવીણ'),(1,'1b','1ba','પારંગત વ્યક્તિ'),(1,'1b','1bb','દક્ષ વ્યક્તિ'),(1,'1b','1bc','નિપુણ વ્યક્તિ'),(1,'1b','1bd','કાબેલ વ્યક્તિ'),(1,'1b','1be','પ્રવીણ વ્યક્તિ'),(2,'2a','2aa','નિખાલસતા'),(2,'2a','2ab','નેકી'),(2,'2a','2ac','ખુલ્લું દિલ'),(2,'2a','2ad','સચ્ચાઈ'),(2,'2b','2ba','નિખાલસતા'),(2,'2b','2bb','નેકી'),(2,'2b','2bc','ખુલ્લું દિલ'),(2,'2b','2bd','સચ્ચાઈ'),(3,'3a','3aa','આદર'),(3,'3a','3ab','અવલંબન'),(3,'3a','3ac','આશ્રય'),(3,'3a','3ad','પુરાવો'),(3,'3b','3ba','પ્રમાણ.'),(3,'3b','3bb','અધિકરણ,'),(3,'3b','3bc','સા○વિ○ નો અર્થ.'),(4,'4a','4aa','પ્રચંડ'),(4,'4a','4ab','નોંધપાત્ર'),(4,'4a','4ac','અસામાન્ય'),(4,'4a','4ad','બહુ મોટું'),(4,'4b','4ba','પ્રચંડ'),(4,'4b','4bb','નોંધપાત્ર'),(4,'4b','4bc','અસામાન્ય'),(4,'4b','4bd','બહુ મોટું'),(5,'5a','5aa','સગવડ કરવીં'),(5,'5a','5ab','સરળ બનાવવુંં'),(5,'5a','5ac','સુગમ બનાવવુંુંં'),(5,'5a','5ad','સરળતા કરી આપવીુંુંં'),(5,'5a','5ae','સુગમતા કરી આપવીુંુંં'),(5,'5a','5af','સગવડ કરી આપવીુંુંં'),(5,'5b','5ba','મધ્યસ્થતાંુંં'),(5,'5b','5bb','સંયમનંુંં'),(5,'5b','5bc','યુક્તાચરણંુંં'),(5,'5b','5bd','સમધોરણ કરવું તેંુંં'),(5,'5b','5be','સમધારણ કરવું તેેંુંં'),(5,'5c','5ca','મદદેેંુંં'),(5,'5c','5cb','મદદ કરવીેંુંં');
/*!40000 ALTER TABLE `gujarati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hindi`
--

DROP TABLE IF EXISTS `hindi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hindi` (
  `SNO_` int DEFAULT NULL,
  `SubSNO_` varchar(255) DEFAULT NULL,
  `SubSubSNO_` varchar(255) NOT NULL,
  `Meaning` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`SubSubSNO_`),
  KEY `SubSNO_` (`SubSNO_`),
  KEY `SNO_` (`SNO_`),
  CONSTRAINT `hindi_ibfk_1` FOREIGN KEY (`SubSNO_`) REFERENCES `means` (`M_id`),
  CONSTRAINT `hindi_ibfk_2` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hindi`
--

LOCK TABLES `hindi` WRITE;
/*!40000 ALTER TABLE `hindi` DISABLE KEYS */;
INSERT INTO `hindi` VALUES (1,'1a','1aa','निपुण'),(1,'1a','1ab','पारंगत'),(1,'1a','1ac','दक्ष'),(1,'1a','1ad','सिद्धहस्त'),(1,'1a','1ae','पवीण'),(1,'1a','1af','पटु'),(1,'1b','1ba','निपुण व्यक्ति'),(1,'1b','1bb','पारंगत व्यक्ति'),(1,'1b','1bc','दक्ष व्यक्ति'),(1,'1b','1bd','सिद्धहस्त व्यक्ति'),(1,'1b','1be','पवीण व्यक्ति'),(1,'1b','1bf','पटु व्यक्ति'),(2,'2a','2aa','स्पष्टवादिता'),(2,'2a','2ab','खरापन'),(2,'2a','2ac','निष्कपटता'),(2,'2a','2ad','निर्मलता'),(2,'2b','2ba','स्पष्टवादिता'),(2,'2b','2bb','खरापन'),(2,'2b','2bc','निष्कपटता'),(2,'2b','2bd','निर्मलता'),(3,'3a','3aa','सम्मान'),(3,'3a','3ab','आदर'),(3,'3a','3ac','अनुरोध'),(3,'3a','3ad','स्वाभिमान'),(3,'3b','3ba','मर्यादा'),(3,'3b','3bb','परिधि'),(3,'3b','3bc','सीमा'),(3,'3b','3bd','गरिमा'),(3,'3b','3be','इज्जत'),(3,'3b','3bf','गौरव'),(3,'3b','3bg','आबरू'),(3,'3b','3bh','मानमर्यादा'),(4,'4a','4aa','प्रबल'),(4,'4a','4ab','ज़बरदस्त'),(4,'4a','4ac','भयंकर'),(4,'4a','4ad','भीषण'),(4,'4a','4ae','अत्यंत'),(4,'4b','4ba','प्रबल'),(4,'4b','4bb','ज़बरदस्त'),(4,'4b','4bc','भयंकर'),(4,'4b','4bd','भीषण'),(4,'4b','4be','अत्यंत'),(5,'5a','5aa','आसान करना'),(5,'5a','5ab','सुकर बनाना'),(5,'5a','5ac','सुविधाजनक बनाना'),(5,'5a','5ad','सुगम करना'),(5,'5a','5ae','सुगम बनाना'),(5,'5a','5af','आसान कर देना'),(5,'5b','5ba','परिनियमन'),(5,'5b','5bb','मिताचार'),(5,'5c','5ca','सहायता देना'),(5,'5c','5cb','हथ बंटाना'),(5,'5c','5cc','साथ होना');
/*!40000 ALTER TABLE `hindi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `means`
--

DROP TABLE IF EXISTS `means`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `means` (
  `SNO_` int DEFAULT NULL,
  `M_id` varchar(255) NOT NULL,
  `Meanings` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`M_id`),
  KEY `SNO_` (`SNO_`),
  CONSTRAINT `means_ibfk_1` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `means`
--

LOCK TABLES `means` WRITE;
/*!40000 ALTER TABLE `means` DISABLE KEYS */;
INSERT INTO `means` VALUES (1,'1a','very skilled; proficient; expert'),(1,'1b','a skilled or proficient person; expert.'),(2,'2a','the state or quality of being frank, open, and sincere in speech or expression;candidness'),(2,'2b','freedom from bias; fairness; impartiality '),(3,'3a','respectful submission or yielding to the judgment, opinion, will, etc., of another.'),(3,'3b','respectful or courteous regard.'),(4,'4a','extraordinary in some bad way; glaring; flagrant.'),(4,'4b','(Archaic) distinguished or eminent.'),(5,'5a','to make easier or less difficult; help forward (an action, a process, etc.)'),(5,'5b','to lead or moderate (a discussion, workshop, etc.), especially as a person trained to do so'),(5,'5c','to assist the progress of (a person).');
/*!40000 ALTER TABLE `means` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamil`
--

DROP TABLE IF EXISTS `tamil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tamil` (
  `SNO_` int DEFAULT NULL,
  `SubSNO_` varchar(255) DEFAULT NULL,
  `SubSubSNO_` varchar(255) NOT NULL,
  `Meaning` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`SubSubSNO_`),
  KEY `SubSNO_` (`SubSNO_`),
  KEY `SNO_` (`SNO_`),
  CONSTRAINT `tamil_ibfk_1` FOREIGN KEY (`SubSNO_`) REFERENCES `means` (`M_id`),
  CONSTRAINT `tamil_ibfk_2` FOREIGN KEY (`SNO_`) REFERENCES `words` (`SNO_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamil`
--

LOCK TABLES `tamil` WRITE;
/*!40000 ALTER TABLE `tamil` DISABLE KEYS */;
INSERT INTO `tamil` VALUES (1,'1a','1aa','திறமையானેેંુંં'),(1,'1a','1ab','நிபுணன்'),(1,'1a','1ac','நிபுணத்துவம் வாய்ந்த'),(1,'1b','1bb','திறமையான நபர்'),(1,'1b','1bc','நிபுணத்துவம் வாய்ந்த  நபர்'),(2,'2a','2aa','நேர்மை'),(2,'2a','2ab','கபடற்ற பேச்சு'),(2,'2b','2ba','நேர்மை'),(2,'2b','2bb','கபடற்ற பேச்சு'),(3,'3a','3aa','மரியாதை'),(3,'3a','3ab','பணிவு'),(3,'3b','3ba','மரியாதை'),(3,'3b','3bb','பணிவு'),(4,'4a','4aa','அருவருப்பான'),(4,'4a','4ab','அதிர்ச்சி உண்டாக்குகின்ற'),(4,'4b','4ba','அருவருப்பான'),(4,'4b','4bb','அதிர்ச்சி உண்டாக்குகின்ற'),(5,'5a','5aa','வசதி'),(5,'5a','5ab','இடர்பாடுகளை எளிதாக்கு'),(5,'5b','5ba','மிதமான'),(5,'5b','5bb','நிதானமான'),(5,'5b','5bc','அடக்கம்'),(5,'5c','5ca','உதவு்'),(5,'5c','5cb','உதவி்');
/*!40000 ALTER TABLE `tamil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `SNO_` int NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'adept'),(2,'candor'),(3,'deference'),(4,'egregious'),(5,'facilitate');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28 18:45:27
