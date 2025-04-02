CREATE DATABASE  IF NOT EXISTS `final_project_implementation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_project_implementation`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: final_project_implementation
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `html_content` text NOT NULL,
  `publication_date` date DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'The Future of Technology','<p>This article discusses the upcoming trends in technology including AI and IoT.</p>','2024-01-01'),(2,'Marketing Strategies in 2024','<p>Explore the most effective marketing strategies that companies are adopting this year.</p>','2024-01-15'),(3,'Global Economic Outlook','<p>A detailed look at the global economy and predictions for the coming years.</p>','2024-02-10'),(4,'The Evolution of Healthcare','<p>How healthcare is changing with advancements in technology.</p>','2024-03-05'),(5,'Sustainable Practices in Businesses','<p>Examining how companies are turning to sustainable practices to improve their operations and brand image.</p>','2024-04-20'),(6,'The Impact of Social Media','<p>Analysis of social media impacts on personal life and business environments.</p>','2024-05-15'),(7,'Artificial Intelligence in Daily Life','<p>Exploring how AI is becoming more integrated into everyday life and what that means for the future.</p>','2024-06-10'),(8,'Startup Success Stories','<p>Stories of startup companies that have made significant impacts recently.</p>','2024-07-05'),(9,'Advancements in Robotics','<p>Recent advancements in robotics and how they are changing the industry.</p>','2024-08-01'),(10,'Education Trends in the 21st Century','<p>Look at how education systems around the world are evolving to meet modern needs.</p>','2024-09-15'),(11,'Financial Planning for Millennials','<p>Important financial advice for millennials on saving, investing, and planning for the future.</p>','2024-10-10'),(12,'Exploring the Universe: Space Missions','<p>An overview of recent and upcoming space missions exploring the universe.</p>','2024-11-05'),(13,'The Art of Digital Marketing','<p>Deep dive into the tactics and strategies behind successful digital marketing campaigns.</p>','2024-12-01'),(14,'The Future of Electric Vehicles','<p>What the increase in electric vehicle production means for the auto industry and global emissions.</p>','2025-01-20'),(15,'The Role of AI in Education','<p>Investigating how artificial intelligence is being integrated into educational tools and platforms.</p>','2025-02-15');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_industry`
--

DROP TABLE IF EXISTS `article_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_industry` (
  `article_id` int NOT NULL,
  `industry_id` int NOT NULL,
  PRIMARY KEY (`article_id`,`industry_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `article_industry_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `article_industry_ibfk_2` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_industry`
--

LOCK TABLES `article_industry` WRITE;
/*!40000 ALTER TABLE `article_industry` DISABLE KEYS */;
INSERT INTO `article_industry` VALUES (1,1),(7,1),(4,2),(5,3),(11,3),(13,3),(10,4),(8,6),(2,8),(6,17),(12,18),(3,19),(9,20);
/*!40000 ALTER TABLE `article_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `user_id` int NOT NULL,
  `event_id` int NOT NULL,
  `attendance_composite` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`attendance_composite`),
  KEY `user_id` (`user_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_items` (`user_id`),
  CONSTRAINT `attendances_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event_items` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(5,1,21),(10,1,22),(15,1,23),(3,5,24),(7,6,25),(8,8,26),(12,7,27),(1,12,28),(2,15,29),(14,3,30),(19,5,31);
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorship`
--

DROP TABLE IF EXISTS `authorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorship` (
  `authorship_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`authorship_id`),
  KEY `article_id` (`article_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `authorship_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `authorship_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_items` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorship`
--

LOCK TABLES `authorship` WRITE;
/*!40000 ALTER TABLE `authorship` DISABLE KEYS */;
INSERT INTO `authorship` VALUES (1,1,1),(2,2,5),(3,3,3),(4,4,4),(5,5,2),(6,6,9),(7,7,6),(8,8,7),(9,9,8),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,1,3),(17,2,9),(18,3,1),(19,4,2),(20,5,8),(21,6,7),(22,7,4),(23,8,10),(24,9,5),(25,10,6);
/*!40000 ALTER TABLE `authorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career` (
  `career_id` int NOT NULL AUTO_INCREMENT,
  `career_title` varchar(255) DEFAULT NULL,
  `industry_id` int NOT NULL,
  `avg_salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`career_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `career_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES (1,'Software Engineering',1,95000.00),(2,'Medical Research',2,80000.00),(3,'Investment Banking',3,70000.00),(4,'Academic Administration',4,55000.00),(5,'Process Engineering',5,60000.00),(6,'Retail Management',6,45000.00),(7,'Commercial Real Estate Broker',7,70000.00),(8,'Journalism',8,52000.00),(9,'Hotel Management',9,50000.00),(10,'Renewable Energy Engineer',10,80000.00),(11,'Corporate Lawyer',11,95000.00),(12,'Logistics Coordinator',12,55000.00),(13,'Program Director',13,50000.00),(14,'Graphic Designer',14,45000.00),(15,'Business Consultant',15,80000.00),(16,'Agricultural Scientist',16,40000.00),(17,'Environmental Consultant',17,60000.00),(18,'Biotechnologist',18,70000.00),(19,'Public Policy Analyst',19,60000.00),(20,'Network Engineer',20,70000.00);
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_opportunities`
--

DROP TABLE IF EXISTS `career_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_opportunities` (
  `opp_id` int NOT NULL AUTO_INCREMENT,
  `career_id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `internship_id` int DEFAULT NULL,
  PRIMARY KEY (`opp_id`),
  KEY `career_id` (`career_id`),
  KEY `job_id` (`job_id`),
  KEY `internship_id` (`internship_id`),
  CONSTRAINT `career_opportunities_ibfk_1` FOREIGN KEY (`career_id`) REFERENCES `career` (`career_id`),
  CONSTRAINT `career_opportunities_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job_post` (`job_post_id`),
  CONSTRAINT `career_opportunities_ibfk_3` FOREIGN KEY (`internship_id`) REFERENCES `internship` (`internship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_opportunities`
--

LOCK TABLES `career_opportunities` WRITE;
/*!40000 ALTER TABLE `career_opportunities` DISABLE KEYS */;
INSERT INTO `career_opportunities` VALUES (1,1,'Job',1,NULL),(2,2,'Job',2,NULL),(3,3,'Job',3,NULL),(4,4,'Job',4,NULL),(5,5,'Job',5,NULL),(6,6,'Job',6,NULL),(7,7,'Job',7,NULL),(8,8,'Job',8,NULL),(9,9,'Job',9,NULL),(10,10,'Job',10,NULL),(11,11,'Job',11,NULL),(12,12,'Job',12,NULL),(13,13,'Job',13,NULL),(14,14,'Job',14,NULL),(15,15,'Job',15,NULL),(16,16,'Job',16,NULL),(17,17,'Job',17,NULL),(18,1,'Internship',NULL,1),(19,2,'Internship',NULL,2),(20,3,'Internship',NULL,3),(21,4,'Internship',NULL,4),(22,5,'Internship',NULL,5),(23,6,'Internship',NULL,6),(24,7,'Internship',NULL,7),(25,8,'Internship',NULL,8),(26,9,'Internship',NULL,9),(27,10,'Internship',NULL,10),(28,11,'Internship',NULL,11),(29,12,'Internship',NULL,12),(30,13,'Internship',NULL,13),(31,14,'Internship',NULL,14),(32,15,'Internship',NULL,15),(33,16,'Internship',NULL,16),(34,17,'Internship',NULL,17),(35,18,'Internship',NULL,18),(36,19,'Internship',NULL,19),(37,20,'Internship',NULL,20);
/*!40000 ALTER TABLE `career_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_events`
--

DROP TABLE IF EXISTS `education_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_events` (
  `event_id` int NOT NULL,
  `program_id` int NOT NULL,
  PRIMARY KEY (`event_id`,`program_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `education_events_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_items` (`event_id`),
  CONSTRAINT `education_events_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `education_programs` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_events`
--

LOCK TABLES `education_events` WRITE;
/*!40000 ALTER TABLE `education_events` DISABLE KEYS */;
INSERT INTO `education_events` VALUES (3,1),(11,1),(14,1),(19,1),(6,2),(7,2),(15,2),(13,3),(20,3),(5,4),(2,6),(10,6),(1,7),(9,7),(12,7),(17,7),(18,8),(8,9),(4,10),(16,10);
/*!40000 ALTER TABLE `education_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_programs`
--

DROP TABLE IF EXISTS `education_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_programs` (
  `program_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `descr` text,
  `fee` decimal(10,2) DEFAULT NULL,
  `application_deadline` date DEFAULT NULL,
  PRIMARY KEY (`program_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `education_programs_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `institutions` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_programs`
--

LOCK TABLES `education_programs` WRITE;
/*!40000 ALTER TABLE `education_programs` DISABLE KEYS */;
INSERT INTO `education_programs` VALUES (1,1,'Study of the environment and solutions for sustainability and conservation.',28000.00,'2024-08-30'),(2,2,'Advanced study of human behavior, cognition, and emotional processes.',32000.00,'2024-07-15'),(3,3,'Program focusing on the design and manufacturing of mechanical systems and devices.',27000.00,'2024-06-20'),(4,4,'Training in journalistic writing, reporting, and communication strategies for mass media platforms.',26000.00,'2024-08-10'),(5,5,'Introduction to public health principles, epidemiology, and healthcare policies.',12000.00,'2024-09-05'),(6,6,'Specialized training in cybersecurity fundamentals and practices.',6000.00,'2024-07-25'),(7,7,'Exploration of creative writing techniques and styles through workshops and exercises.',1500.00,'2024-06-30'),(8,8,'Training in hotel and restaurant management, event planning, and customer service.',24000.00,'2024-07-20'),(9,9,'Advanced studies in civil engineering principles, structural design, and infrastructure development.',35000.00,'2024-08-15'),(10,10,'Introduction to digital photography techniques, editing software, and composition.',2500.00,'2024-06-25'),(11,11,'Training in HR management, recruitment strategies, and employee relations practices.',7000.00,'2024-07-05'),(12,12,'Introduction to interior design principles, space planning, and material selection.',1800.00,'2024-07-10'),(13,13,'Study of biological processes, genetics, and applications in medicine, agriculture, and industry.',30000.00,'2024-08-01'),(14,14,'Advanced studies in supply chain logistics, operations management, and global sourcing strategies.',32000.00,'2024-09-10'),(15,15,'Intensive English language training for non-native speakers, focusing on speaking, listening, reading, and writing skills.',2000.00,'2024-07-15'),(16,16,'Guidance and mentorship for aspiring entrepreneurs to develop business ideas and launch startups.',10000.00,'2024-07-30'),(17,17,'Hands-on training in music production software, recording techniques, and sound engineering principles.',1700.00,'2024-06-20'),(18,18,'Study of economic theories, market dynamics, and policy analysis.',28000.00,'2024-08-05'),(19,19,'Advanced studies in health information technology, data analytics, and electronic health records management.',30000.00,'2024-09-20'),(20,20,'Introduction to fashion design concepts, garment construction, and textile selection.',2000.00,'2024-07-25'),(21,21,'Training in renewable energy technologies, sustainable practices, and energy efficiency strategies.',5000.00,'2024-08-10'),(22,22,'Fundamentals of project management methodologies, tools, and techniques for successful project execution.',3000.00,'2024-07-15'),(23,23,'Intensive training in artificial intelligence algorithms, machine learning models, and deep learning frameworks.',25000.00,'2024-09-05'),(24,24,'Hands-on culinary training in cooking techniques, kitchen management, and menu planning.',20000.00,'2024-08-15'),(25,25,'Immersive language learning experience abroad, including intensive language classes and cultural activities.',8000.00,'2024-08-30'),(26,26,'Training in public relations strategies, media relations, and crisis communication.',6000.00,'2024-07-10'),(27,27,'Introduction to game design principles, game engines, and programming for video game development.',1800.00,'2024-07-20'),(28,28,'Advanced studies in healthcare management, policy analysis, and healthcare finance.',32000.00,'2024-09-25'),(29,29,'Intensive training in web development technologies, including HTML, CSS, JavaScript, and frameworks like React and Node.js.',12000.00,'2024-08-01');
/*!40000 ALTER TABLE `education_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_items`
--

DROP TABLE IF EXISTS `event_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_items` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date_of` date NOT NULL,
  `number_tickets` int DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_items`
--

LOCK TABLES `event_items` WRITE;
/*!40000 ALTER TABLE `event_items` DISABLE KEYS */;
INSERT INTO `event_items` VALUES (1,'Tech Conference 2024','2024-05-15',500,100.00),(2,'Marketing Summit','2024-06-20',299,75.00),(3,'Startup Workshop','2024-07-10',200,50.00),(4,'Networking Mixer','2024-08-05',100,25.00),(5,'Data Analytics Seminar','2024-09-15',400,80.00),(6,'Industry Panel Discussion','2024-10-20',250,60.00),(7,'Leadership Retreat','2024-11-10',150,100.00),(8,'Career Fair','2024-12-05',600,0.00),(9,'Tech Meetup','2025-01-15',200,20.00),(10,'Digital Marketing Workshop','2025-02-20',150,30.00),(11,'Product Launch Event','2025-03-10',300,50.00),(12,'Innovation Summit','2025-04-05',250,75.00),(13,'Entrepreneurship Conference','2025-05-20',400,90.00),(14,'AI and Robotics Expo','2025-06-15',350,70.00),(15,'Finance Forum','2025-07-10',200,60.00),(16,'Creative Arts Symposium','2025-08-25',150,40.00),(17,'Networking Event 1','2025-09-15',250,30.00),(18,'Education Fair','2025-10-20',500,0.00),(19,'Tech Seminar','2025-11-10',150,20.00),(20,'Startup Networking Event','2025-12-05',300,50.00),(21,'Summer Festival','2024-07-15',500,25.00),(22,'Tech Summit','2024-09-20',300,50.00),(23,'Art Exhibition','2024-10-10',200,10.00);
/*!40000 ALTER TABLE `event_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry` (
  `industry_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `average_pay` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Technology','Covers companies involved in the development and production of technology products and services.',85000.00),(2,'Healthcare','Includes healthcare providers, biotechnology firms, and pharmaceutical companies.',75000.00),(3,'Finance','Encompasses a range of businesses, including banks, investment companies, and insurance firms.',65000.00),(4,'Education','Covers schools, colleges, universities, and training centers.',50000.00),(5,'Manufacturing','Involves the production of goods in factories across various sectors, including automobiles, electronics, and clothing.',55000.00),(6,'Retail','Includes all businesses that directly sell products or services to consumers, from large chains to small shops.',40000.00),(7,'Real Estate','Deals with the buying, selling, and development of land and properties.',60000.00),(8,'Media','Covers broadcast, digital, print, and social media companies that provide information or entertainment.',48000.00),(9,'Hospitality','Includes hotels, restaurants, and other businesses that provide lodging and food services to travelers and locals alike.',45000.00),(10,'Energy','Focuses on the production and supply of energy, including oil, gas, and renewable energy sources.',70000.00),(11,'Legal','Encompasses law firms and legal services providers that advise clients on legal matters.',90000.00),(12,'Transportation','Includes companies that provide transportation of goods and people, such as airlines, railroads, and shipping companies.',50000.00),(13,'Nonprofit','Organizations that operate to fulfill a mission rather than to generate profit. They often focus on social causes, education, or health.',45000.00),(14,'Arts and Design','Includes all forms of artistic and design endeavors, from visual arts to fashion design.',40000.00),(15,'Consulting','Provides expert advice in areas such as business, education, and IT to help organizations improve performance.',75000.00),(16,'Agriculture','Involves the cultivation of plants and rearing of animals to produce food, fiber, medicinal plants, and other products.',35000.00),(17,'Environmental','Focuses on businesses and organizations that work to protect the environment or deal with ecological issues.',58000.00),(18,'Science and Research','Involves the study and investigation in scientific fields to increase knowledge and develop new applications.',65000.00),(19,'Government','Includes all government-run institutions that govern, manage public sectors, and implement policies.',55000.00),(20,'Telecommunications','Deals with the transmission of information across various types of media, including telephones, satellite communications, and the internet.',65000.00);
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_programs`
--

DROP TABLE IF EXISTS `industry_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry_programs` (
  `industry_id` int NOT NULL,
  `program_id` int NOT NULL,
  PRIMARY KEY (`industry_id`,`program_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `industry_programs_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`),
  CONSTRAINT `industry_programs_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `education_programs` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_programs`
--

LOCK TABLES `industry_programs` WRITE;
/*!40000 ALTER TABLE `industry_programs` DISABLE KEYS */;
INSERT INTO `industry_programs` VALUES (3,1),(10,1),(8,2),(1,3),(6,4),(1,5),(9,5),(2,6),(5,7),(6,8),(7,9),(4,10),(4,11);
/*!40000 ALTER TABLE `industry_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutions` (
  `org_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutions`
--

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
INSERT INTO `institutions` VALUES (1,'University of Science and Technology',3000),(2,'National Institute of Technology',6000),(3,'City College of Arts',3000),(4,'State University',9000),(5,'Community College of Engineering',1000),(6,'Technical Institute of Technology',2000),(7,'Regional College of Business',5000),(8,'International University',8000),(9,'Private College of Medicine',7000),(10,'Public College of Law',4000),(11,'Global Institute of Management',3000),(12,'Liberal Arts College',6000),(13,'Northwestern Institute of Technology',4500),(14,'Western University of Engineering',5500),(15,'Eastern College of Sciences',3500),(16,'Southern Institute of Business',7500),(17,'Central Academy of Arts',4000),(18,'Pacific Coast University',8500),(19,'Atlantic State College',6500),(20,'Midwest Technical Institute',3000),(21,'Rocky Mountain College',5000),(22,'Great Plains Institute of Agriculture',7000),(23,'Northeastern University',6000),(24,'Southwestern College of Medicine',8500),(25,'Mid-Atlantic Technical Institute',4000),(26,'Far West Institute of Business',7500),(27,'Deep South College of Arts',3500),(28,'Rocky Mountain Institute of Technology',5500),(29,'Northern Plains University',4500),(30,'Coastal State College',6500),(31,'Heartland Technical Academy',3000),(32,'New England University',6000),(33,'South Central College of Sciences',8500),(34,'Midwest University of Business',4000),(35,'Pacific Coast Technical Institute',7500),(36,'Gulf Coast College',3500),(37,'Mountain West University',5500);
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship` (
  `internship_id` int NOT NULL AUTO_INCREMENT,
  `industry_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `date_posted` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`internship_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `internship_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `Industry` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship`
--

LOCK TABLES `internship` WRITE;
/*!40000 ALTER TABLE `internship` DISABLE KEYS */;
INSERT INTO `internship` VALUES (1,1,'Junior Software Developer','Assist in developing and maintaining software applications using cutting-edge technologies.','2024-04-01','2024-05-01',25.00),(2,2,'Healthcare Research Intern','Support clinical trials and research projects within a healthcare setting.','2024-04-05','2024-05-05',22.00),(3,3,'Finance Intern','Help analyze financial statements and market trends to support investment decisions.','2024-04-10','2024-05-10',20.00),(4,4,'Educational Assistant','Assist in the development of curriculum materials and educational programs.','2024-04-15','2024-05-15',18.00),(5,5,'Manufacturing Intern','Work on the manufacturing floor, learning about process control and quality management.','2024-04-20','2024-05-20',20.00),(6,6,'Retail Management Trainee','Learn the ins and outs of managing a high-paced retail environment.','2024-04-25','2024-05-25',15.00),(7,7,'Real Estate Intern','Assist with property management and learn about the real estate market dynamics.','2024-05-01','2024-06-01',18.00),(8,8,'Media Production Intern','Participate in the production and editing of content across various media platforms.','2024-05-05','2024-06-05',18.00),(9,9,'Hospitality Intern','Gain experience in hotel management and customer service in the hospitality industry.','2024-05-10','2024-06-10',16.00),(10,10,'Energy Engineering Intern','Assist in the design and implementation of energy systems focusing on sustainability.','2024-05-15','2024-06-15',25.00),(11,11,'Legal Intern','Support legal staff by researching regulations and drafting documents.','2024-05-20','2024-06-20',22.00),(12,12,'Transportation Coordinator Intern','Learn about logistics and coordination of transportation services.','2024-05-25','2024-06-25',20.00),(13,13,'Nonprofit Management Intern','Help manage programs and learn about operations within a nonprofit organization.','2024-05-30','2024-06-30',18.00),(14,14,'Art and Design Intern','Contribute to creative projects in a studio environment, enhancing skills in art and design.','2024-06-01','2024-07-01',17.00),(15,15,'Consulting Intern','Work on real consulting projects, providing analyses and recommendations to clients.','2024-06-05','2024-07-05',25.00),(16,16,'Agricultural Research Intern','Participate in agricultural studies and experiments to improve crop production.','2024-06-10','2024-07-10',15.00),(17,17,'Environmental Research Intern','Assist in environmental impact assessments and sustainability projects.','2024-06-15','2024-07-15',20.00),(18,18,'Science Research Intern','Support ongoing research projects in a lab setting, focusing on biotechnology and chemical analysis.','2024-06-20','2024-07-20',22.00),(19,19,'Government Policy Intern','Engage in policy analysis and support administrative tasks in a governmental agency.','2024-06-25','2024-07-25',18.00),(20,20,'Telecommunications Intern','Work with advanced telecommunications systems and contribute to network management projects.','2024-06-30','2024-07-30',20.00);
/*!40000 ALTER TABLE `internship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post` (
  `job_post_id` int NOT NULL AUTO_INCREMENT,
  `industry_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `date_posted` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `estimated_salary` decimal(10,2) DEFAULT NULL,
  `skills_required` text,
  PRIMARY KEY (`job_post_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `job_post_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `Industry` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post`
--

LOCK TABLES `job_post` WRITE;
/*!40000 ALTER TABLE `job_post` DISABLE KEYS */;
INSERT INTO `job_post` VALUES (1,1,'Software Developer','Develop and maintain web applications using a variety of technologies.','2024-04-01','2024-06-01',95000.00,'Strong in Java, JavaScript, SQL'),(2,2,'Clinical Research Coordinator','Manage research projects, including coordination of trials and data collection.','2024-04-05','2024-07-05',70000.00,'Experience in clinical settings, attention to detail'),(3,3,'Financial Analyst','Analyze financial data to assist in corporate finance and investment decisions.','2024-04-10','2024-07-10',85000.00,'Proficiency in Excel, financial modeling, and data analysis'),(4,4,'Curriculum Developer','Design and update educational materials and programs for institutions.','2024-04-15','2024-07-15',60000.00,'Strong writing skills, experience in education'),(5,5,'Quality Assurance Manager','Oversee the production process to ensure end products meet quality standards.','2024-04-20','2024-07-20',65000.00,'Experience in manufacturing, knowledge of ISO standards'),(6,6,'Store Manager','Manage day-to-day operations of a retail location, including staff and inventory.','2024-04-25','2024-07-25',55000.00,'Leadership skills, experience in retail management'),(7,7,'Real Estate Agent','Assist clients in buying, selling, and renting properties.','2024-05-01','2024-08-01',60000.00,'Strong sales skills, knowledge of the real estate market'),(8,8,'Content Producer','Create engaging content for various media platforms.','2024-05-05','2024-08-05',50000.00,'Creative writing, experience with digital media'),(9,9,'Restaurant Manager','Operate a restaurant, ensuring customer satisfaction and managing staff.','2024-05-10','2024-08-10',48000.00,'Hospitality management, customer service skills'),(10,10,'Energy Systems Engineer','Design and implement systems for energy production and distribution.','2024-05-15','2024-08-15',80000.00,'Engineering degree, experience with renewable technologies'),(11,11,'Paralegal','Support lawyers by maintaining documents, conducting research, and drafting reports.','2024-05-20','2024-08-20',45000.00,'Detail-oriented, strong research skills'),(12,12,'Fleet Coordinator','Manage a fleet of vehicles for logistics and transportation needs.','2024-05-25','2024-08-25',50000.00,'Organizational skills, experience in logistics'),(13,13,'Fundraising Specialist','Develop strategies to raise funds for nonprofit organizations.','2024-05-30','2024-08-30',52000.00,'Strong interpersonal skills, experience in fundraising'),(14,14,'Art Director','Lead the visual style of projects in advertising and media.','2024-06-01','2024-09-01',75000.00,'Creative vision, experience in art direction'),(15,15,'Management Consultant','Advise businesses on how to improve efficiency and operations.','2024-06-05','2024-09-05',90000.00,'Problem-solving skills, MBA preferred'),(16,16,'Agricultural Engineer','Design equipment and systems for agricultural operations.','2024-06-10','2024-09-10',70000.00,'Engineering degree, knowledge of agricultural practices'),(17,17,'Environmental Scientist','Conduct research and provide insights into environmental protection.','2024-06-15','2024-09-15',65000.00,'Experience in environmental science, data collection');
/*!40000 ALTER TABLE `job_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `least_expensive_events_view`
--

DROP TABLE IF EXISTS `least_expensive_events_view`;
/*!50001 DROP VIEW IF EXISTS `least_expensive_events_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `least_expensive_events_view` AS SELECT 
 1 AS `event_id`,
 1 AS `event_title`,
 1 AS `event_date`,
 1 AS `event_tickets_available`,
 1 AS `event_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `membership_tracker`
--

DROP TABLE IF EXISTS `membership_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_tracker` (
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `join_date` date DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `membership_tracker_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_items` (`user_id`),
  CONSTRAINT `membership_tracker_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `networking_groups` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_tracker`
--

LOCK TABLES `membership_tracker` WRITE;
/*!40000 ALTER TABLE `membership_tracker` DISABLE KEYS */;
INSERT INTO `membership_tracker` VALUES (1,1,'2023-01-01',NULL),(2,2,'2023-02-15','2024-01-01'),(3,3,'2023-03-20',NULL),(4,4,'2023-04-25',NULL),(5,5,'2023-05-30','2024-03-15'),(6,6,'2023-06-10',NULL),(7,7,'2023-07-15',NULL),(8,8,'2023-08-01','2024-02-01'),(9,9,'2023-09-17',NULL),(10,10,'2023-10-05',NULL),(11,11,'2023-11-20',NULL),(12,12,'2023-12-15',NULL),(13,13,'2024-01-01',NULL),(14,14,'2024-01-20',NULL),(15,15,'2024-02-10',NULL),(16,16,'2024-03-01',NULL),(17,17,'2024-03-25',NULL),(18,18,'2024-04-10',NULL),(19,19,'2024-04-25',NULL),(20,20,'2024-05-10',NULL);
/*!40000 ALTER TABLE `membership_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networking_events`
--

DROP TABLE IF EXISTS `networking_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networking_events` (
  `event_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`event_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `networking_events_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event_items` (`event_id`),
  CONSTRAINT `networking_events_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `networking_groups` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networking_events`
--

LOCK TABLES `networking_events` WRITE;
/*!40000 ALTER TABLE `networking_events` DISABLE KEYS */;
INSERT INTO `networking_events` VALUES (1,1),(2,2),(4,3),(5,4),(6,5),(7,6),(9,7),(11,8),(13,9),(15,10),(16,11),(17,12),(18,13),(19,14),(20,15),(3,16),(8,17),(10,18),(12,19),(14,20);
/*!40000 ALTER TABLE `networking_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networking_groups`
--

DROP TABLE IF EXISTS `networking_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networking_groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networking_groups`
--

LOCK TABLES `networking_groups` WRITE;
/*!40000 ALTER TABLE `networking_groups` DISABLE KEYS */;
INSERT INTO `networking_groups` VALUES (1,'Tech Connect','Technology'),(2,'Business Builders','Business'),(3,'Creative Minds','Arts and Media'),(4,'Healthcare Network','Healthcare'),(5,'Finance Forum','Finance'),(6,'Startup Society','Entrepreneurship'),(7,'Engineering Alliance','Engineering'),(8,'Legal League','Law'),(9,'Marketing Masters','Marketing'),(10,'Education Exchange','Education'),(11,'Hospitality Hub','Hospitality'),(12,'Science Circle','Science'),(13,'Design District','Design'),(14,'Nonprofit Network','Nonprofit'),(15,'Consulting Club','Consulting'),(16,'Real Estate Roundtable','Real Estate'),(17,'HR Hangout','Human Resources'),(18,'Environmental Network','Environment'),(19,'Gaming Guild','Gaming'),(20,'Sports Squad','Sports');
/*!40000 ALTER TABLE `networking_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','All privileges across the platform.'),(2,'Standard User','Can view and submit content, limited settings.'),(3,'Guest','Can view content, no submission or settings access.'),(4,'Editor','Can view, edit, and approve submitted content.'),(5,'Super User','Extended privileges including user management and role assignments.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_items`
--

DROP TABLE IF EXISTS `user_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_items` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_items`
--

LOCK TABLES `user_items` WRITE;
/*!40000 ALTER TABLE `user_items` DISABLE KEYS */;
INSERT INTO `user_items` VALUES (1,'johndoe1','johndoe1@example.com','password123','John','Doe'),(2,'janedoe2','janedoe2@example.com','password123','Jane','Doe'),(3,'alicejones3','alicejones3@example.com','password123','Alice','Jones'),(4,'bobsmith4','bobsmith4@example.com','password123','Bob','Smith'),(5,'chrisgreen5','chrisgreen5@example.com','password123','Chris','Green'),(6,'davidlee6','davidlee6@example.com','password123','David','Lee'),(7,'emilywhite7','emilywhite7@example.com','password123','Emily','White'),(8,'frankblack8','frankblack8@example.com','password123','Frank','Black'),(9,'gracebrown9','gracebrown9@example.com','password123','Grace','Brown'),(10,'harrywilson10','harrywilson10@example.com','password123','Harry','Wilson'),(11,'isabellathomas11','isabellathomas11@example.com','password123','Isabella','Thomas'),(12,'jacobmoore12','jacobmoore12@example.com','password123','Jacob','Moore'),(13,'kyletaylor13','kyletaylor13@example.com','password123','Kyle','Taylor'),(14,'lauramartin14','lauramartin14@example.com','password123','Laura','Martin'),(15,'michaeljackson15','michaeljackson15@example.com','password123','Michael','Jackson'),(16,'nancyallen16','nancyallen16@example.com','password123','Nancy','Allen'),(17,'oscarsanders17','oscarsanders17@example.com','password123','Oscar','Sanders'),(18,'pamelawalker18','pamelawalker18@example.com','password123','Pamela','Walker'),(19,'quentinyoung19','quentinyoung19@example.com','password123','Quentin','Young'),(20,'rachelking20','rachelking20@example.com','password123','Rachel','King'),(21,'rfitzs30','rfitzs30@pratt.edu','secret_password_here','Riain','Fitzsimons');
/*!40000 ALTER TABLE `user_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_items` (`user_id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(20,1),(2,2),(6,2),(7,2),(10,2),(12,2),(14,2),(16,2),(18,2),(19,2),(3,3),(8,3),(11,3),(17,3),(4,4),(9,4),(13,4),(5,5),(15,5);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `least_expensive_events_view`
--

/*!50001 DROP VIEW IF EXISTS `least_expensive_events_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `least_expensive_events_view` AS select `event_items`.`event_id` AS `event_id`,`event_items`.`title` AS `event_title`,`event_items`.`date_of` AS `event_date`,`event_items`.`number_tickets` AS `event_tickets_available`,`event_items`.`cost` AS `event_cost` from `event_items` order by `event_items`.`cost` limit 4 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06  6:25:17
