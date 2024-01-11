
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
DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_user_id_foreign` (`user_id`),
  CONSTRAINT `boards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'Larkin-O\'Connell Board',1,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(2,'Green PLC Board',3,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(3,'Gleason and Sons Board',4,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(4,'Goodwin Ltd Board',5,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(5,'Stoltenberg-Champlin Board',6,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(6,'Kuvalis-Konopelski Board',7,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(7,'Dare-Mitchell Board',8,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(8,'McKenzie and Sons Board',9,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(9,'Bradtke, Hansen and Baumbach Board',10,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(10,'Rolfson-Becker Board',11,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(11,'Johnson, Parker and Yost Board',12,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(12,'Hermiston, Kunde and Pouros Board',13,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(13,'Gleason, Bahringer and Senger Board',14,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(14,'Gleichner, Mills and Hill Board',15,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(15,'Stokes Inc Board',16,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(16,'Dooley-Hyatt Board',17,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(17,'Farrell, Pouros and Mohr Board',18,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(18,'Klein, Feest and Rogahn Board',19,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(19,'Mills-Fadel Board',20,'2024-01-11 10:43:39','2024-01-11 10:43:39');
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL,
  `column_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_column_id_foreign` (`column_id`),
  CONSTRAINT `cards_column_id_foreign` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'minus similique dolorem','ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to keep herself from being run over; and the Gryphon in an undertone.',2000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(2,'mollitia saepe qui','I know. Silence all round, if you want to get to,\' said the Footman, and began picking them up again as she spoke. (The unfortunate little Bill had left off writing on his flappers, \'--Mystery.',3000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(3,'aut ex ipsa','NOT be an advantage,\' said Alice, a good many little girls eat eggs quite as much right,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King hastily said, and went down on.',4000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(4,'porro saepe et','Queen, turning purple. \'I won\'t!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter went on, very much pleased at having found out a new pair of boots every Christmas.\' And she tried to.',4000,3,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(5,'repellendus doloribus velit','The twelve jurors were writing down \'stupid things!\' on their slates, and then keep tight hold of it; so, after hunting all about for a minute or two, they began moving about again, and Alice rather.',2000,3,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(6,'dolores iure et','She was walking hand in hand, in couples: they were nowhere to be a Caucus-race.\' \'What IS the same thing a Lobster Quadrille The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself that.',1000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(7,'et quis reiciendis','Alice put down her flamingo, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a very humble tone, going down on one knee. \'I\'m a poor man,\' the Hatter instead!\'.',5000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(8,'quas praesentium voluptas','Gryphon. \'I mean, what makes them so often, you know.\' \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied in an encouraging tone. Alice looked round, eager to see you again, you.',6000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(9,'ducimus odit voluptas','Like a tea-tray in the trial one way up as the doubled-up soldiers were silent, and looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many out-of-the-way things.',7000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(10,'excepturi pariatur ut','And so she began nursing her child again, singing a sort of way to hear it say, as it was very deep, or she should meet the real Mary Ann, and be turned out of his tail. \'As if it began ordering.',8000,2,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(11,'soluta exercitationem repudiandae','SAID was, \'Why is a long time together.\' \'Which is just the case with MINE,\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Hatter. \'He won\'t stand beating. Now, if you don\'t know what.',3000,1,NULL,'2024-01-11 10:43:39','2024-01-11 10:43:58'),(12,'quaerat ipsum earum','Queen shouted at the house, and wondering what to say it out to sea as you can--\' \'Swim after them!\' screamed the Gryphon. \'How the creatures wouldn\'t be so stingy about it, you may nurse it a bit.',3000,3,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(13,'vitae dignissimos tenetur','I ever heard!\' \'Yes, I think that will be When they take us up and straightening itself out again, so she felt a violent shake at the jury-box, or they would call after her: the last words out loud.',1000,3,NULL,'2024-01-11 10:43:39','2024-01-11 10:44:05'),(14,'quo aut qui','Dormouse, who was talking. \'How CAN I have none, Why, I wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Duck. \'Found IT,\' the Mouse only.',1000,1,NULL,'2024-01-11 10:43:39','2024-01-11 10:43:58'),(15,'fugiat labore quibusdam','The Dormouse again took a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the thought that SOMEBODY ought to speak, and no more of it in with a growl, And concluded.',2000,1,NULL,'2024-01-11 10:43:39','2024-01-11 10:43:58');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `columns_board_id_foreign` (`board_id`),
  CONSTRAINT `columns_board_id_foreign` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `columns` WRITE;
/*!40000 ALTER TABLE `columns` DISABLE KEYS */;
INSERT INTO `columns` VALUES (1,'veniam aut numquam',1,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(2,'molestias aut quas',1,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(3,'velit nobis est',1,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(4,'est eos porro',5,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(5,'provident excepturi facilis',6,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(6,'omnis voluptates veniam',7,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(7,'eos dolore qui',8,'2024-01-11 10:43:38','2024-01-11 10:43:38'),(8,'nostrum dolorum quisquam',9,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(9,'laboriosam rerum repellat',10,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(10,'delectus odit magnam',11,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(11,'voluptatem qui incidunt',12,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(12,'alias sit rerum',13,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(13,'sed eos tempore',14,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(14,'voluptatem voluptatem qui',15,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(15,'voluptas ut assumenda',16,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(16,'sit ut accusantium',17,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(17,'tempora odit optio',18,'2024-01-11 10:43:39','2024-01-11 10:43:39'),(18,'eius fuga facilis',19,'2024-01-11 10:43:39','2024-01-11 10:43:39');
/*!40000 ALTER TABLE `columns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_25_125934_create_table_boards',1),(6,'2023_02_25_130033_create_table_columns',1),(7,'2023_02_25_130126_create_table_cards',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Salman','salmanmalik508@gmail.com','2024-01-11 10:43:38','$2y$10$RGPUJO9NzidoU7/yj38L1.gMyAu59hOjmEXmd9HhF/uc0A0Q/2NOC','WUpEiuoeOB','2024-01-11 10:43:38','2024-01-11 10:43:38'),(2,'Holly Mosciski IV','mellie87@example.net','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','d8Cl3fvt2t','2024-01-11 10:43:38','2024-01-11 10:43:38'),(3,'Cristobal Legros IV','ruben61@example.com','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5dWiK5bzCI','2024-01-11 10:43:38','2024-01-11 10:43:38'),(4,'Bonita Carter','jaydon.kling@example.org','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LPWLm1gNRr','2024-01-11 10:43:38','2024-01-11 10:43:38'),(5,'Mr. Jamel Hahn','ozemlak@example.com','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ioRnUXctW6','2024-01-11 10:43:38','2024-01-11 10:43:38'),(6,'Emelie Goodwin DDS','cwiza@example.org','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','APCKcSut7k','2024-01-11 10:43:38','2024-01-11 10:43:38'),(7,'Kristofer Senger','alessia86@example.net','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','D8gdJkKBVx','2024-01-11 10:43:38','2024-01-11 10:43:38'),(8,'Dr. Dimitri Marks','corwin.marion@example.net','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rLORjlqhAA','2024-01-11 10:43:38','2024-01-11 10:43:38'),(9,'Elias Fay','werner84@example.org','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xPxKohBcMV','2024-01-11 10:43:38','2024-01-11 10:43:38'),(10,'Ola Spencer','ebert.flo@example.net','2024-01-11 10:43:38','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eujXWejrjg','2024-01-11 10:43:38','2024-01-11 10:43:38'),(11,'America Heidenreich Jr.','hoppe.eva@example.net','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qzY2rPQnNn','2024-01-11 10:43:39','2024-01-11 10:43:39'),(12,'Mrs. Lupe Leannon','hane.summer@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AIbiEt6w8W','2024-01-11 10:43:39','2024-01-11 10:43:39'),(13,'Noble Bechtelar','ocarter@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gnI60l9ooW','2024-01-11 10:43:39','2024-01-11 10:43:39'),(14,'Wiley Paucek','maggie20@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','oTp1jakSoq','2024-01-11 10:43:39','2024-01-11 10:43:39'),(15,'Lorenza Hessel','vschuppe@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qkpfHxilvq','2024-01-11 10:43:39','2024-01-11 10:43:39'),(16,'Miss Lurline DuBuque','becker.yasmin@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','aYgAgT3HvE','2024-01-11 10:43:39','2024-01-11 10:43:39'),(17,'Dr. Geovanny Bernhard DDS','hank69@example.net','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zV6Ym6ONQH','2024-01-11 10:43:39','2024-01-11 10:43:39'),(18,'Griffin Flatley DVM','kellie.lemke@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','W8hsY6VzAZ','2024-01-11 10:43:39','2024-01-11 10:43:39'),(19,'Mollie Jakubowski','lynch.annette@example.net','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eoIQgGo79y','2024-01-11 10:43:39','2024-01-11 10:43:39'),(20,'Sylvan Murphy','ari.kertzmann@example.org','2024-01-11 10:43:39','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VvdFZrgZsh','2024-01-11 10:43:39','2024-01-11 10:43:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

