/* 9:41:11 AM Codeup DB Server */ SHOW VARIABLES;
/* 9:41:11 AM Codeup DB Server */ SET information_schema_stats_expiry=0;
/* 9:41:11 AM Codeup DB Server */ SELECT @@global.max_allowed_packet;
/* 9:41:12 AM Codeup DB Server */ SHOW VARIABLES LIKE 'skip_show_database';
/* 9:41:12 AM Codeup DB Server */ SHOW DATABASES;
/* 9:43:02 AM Codeup DB Server */ show databases:;
/* 9:43:02 AM Codeup DB Server */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ':' at line 1
/* 9:43:23 AM Codeup DB Server */ show databases;
/* 9:45:38 AM Codeup DB Server */ USE `chipotle`;
/* 9:45:39 AM Codeup DB Server chipotle */ SHOW VARIABLES LIKE 'character_set_database';
/* 9:45:39 AM Codeup DB Server chipotle */ SHOW FULL TABLES;
/* 9:45:39 AM Codeup DB Server chipotle */ SELECT * FROM information_schema.routines WHERE routine_schema = 'chipotle' ORDER BY routine_name;
/* 9:45:58 AM Codeup DB Server chipotle */ use chipotle;
/* 9:45:58 AM Codeup DB Server chipotle */ SHOW DATABASES;
/* 9:45:58 AM Codeup DB Server chipotle */ SELECT DATABASE();
/* 9:45:58 AM Codeup DB Server chipotle */ SHOW FULL TABLES;
/* 9:45:58 AM Codeup DB Server chipotle */ SELECT * FROM information_schema.routines WHERE routine_schema = 'chipotle' ORDER BY routine_name;
/* 9:46:17 AM Codeup DB Server chipotle */ SHOW TABLE STATUS LIKE 'orders';
/* 9:46:17 AM Codeup DB Server chipotle */ SHOW CREATE TABLE `chipotle`.`orders`;
/* 9:46:17 AM Codeup DB Server chipotle */ SELECT COUNT(1) FROM `orders`;
/* 9:46:24 AM Codeup DB Server chipotle */ SHOW INDEX FROM `orders`;
/* 9:46:24 AM Codeup DB Server chipotle */ SELECT * FROM `information_schema`.`character_sets` ORDER BY `character_set_name` ASC;
/* 9:46:24 AM Codeup DB Server chipotle */ SELECT * FROM `information_schema`.`collations` WHERE character_set_name = 'latin1' ORDER BY `collation_name` ASC;
/* 9:50:08 AM Codeup DB Server chipotle */ SELECT `id`, `order_id`, `quantity`, `item_name`, `choice_description`, `item_price` FROM `orders` LIMIT 0,1000;
/* 9:51:25 AM Codeup DB Server chipotle */ SHOW CREATE TABLE `chipotle`.`orders`;
/* 9:52:09 AM Codeup DB Server chipotle */ /*!50003 SHOW TRIGGERS WHERE `Table` = 'orders' */;
/* 9:52:13 AM Codeup DB Server chipotle */ SHOW TABLES IN information_schema LIKE 'ENGINES';
/* 9:52:13 AM Codeup DB Server chipotle */ SELECT Engine, Support FROM `information_schema`.`engines` WHERE SUPPORT IN ('DEFAULT', 'YES') AND Engine != 'PERFORMANCE_SCHEMA';
/* 9:54:09 AM Codeup DB Server chipotle */ show create table orders;
/* 10:06:21 AM Codeup DB Server chipotle */ select * from mysql.user;
/* 10:06:52 AM Codeup DB Server chipotle */ select user, host from mysql.user;
/* 10:07:11 AM Codeup DB Server chipotle */ select * from mysql.help_topic;
/* 10:07:44 AM Codeup DB Server chipotle */ select help_topic_id, help_category_id, url from mysql.help_topic;
/* 10:56:41 AM Codeup DB Server chipotle */ select mysql_introduction.sql;
/* 10:56:41 AM Codeup DB Server chipotle */ Unknown table 'mysql_introduction' in field list
/* 10:59:47 AM Codeup DB Server */ SHOW VARIABLES;
/* 10:59:47 AM Codeup DB Server */ SET information_schema_stats_expiry=0;
/* 10:59:47 AM Codeup DB Server */ SELECT @@global.max_allowed_packet;
/* 10:59:47 AM Codeup DB Server */ SHOW VARIABLES LIKE 'skip_show_database';
/* 10:59:47 AM Codeup DB Server */ SHOW DATABASES;
/* 11:00:37 AM Codeup DB Server */ mysql_introduction.sql;
/* 11:00:37 AM Codeup DB Server */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql_introduction.sql' at line 1
/* 11:17:07 AM Codeup DB Server */ mysql_introduction.sql  show databases;
/* 11:17:07 AM Codeup DB Server */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql_introduction.sql  show databases' at line 1
/* 11:17:22 AM Codeup DB Server */ USE `chipotle`;
/* 11:17:22 AM Codeup DB Server chipotle */ SHOW VARIABLES LIKE 'character_set_database';
/* 11:17:22 AM Codeup DB Server chipotle */ SHOW FULL TABLES;
/* 11:17:22 AM Codeup DB Server chipotle */ SELECT * FROM information_schema.routines WHERE routine_schema = 'chipotle' ORDER BY routine_name;
/* 11:17:24 AM Codeup DB Server chipotle */ SHOW TABLE STATUS LIKE 'orders';
/* 11:17:24 AM Codeup DB Server chipotle */ SHOW CREATE TABLE `chipotle`.`orders`;
/* 11:17:24 AM Codeup DB Server chipotle */ SELECT COUNT(1) FROM `orders`;
/* 11:17:45 AM Codeup DB Server chipotle */ select databse();
/* 11:17:45 AM Codeup DB Server chipotle */ execute command denied to user 'noether_2031'@'%' for routine 'chipotle.databse'
/* 11:18:43 AM Codeup DB Server chipotle */ show create databse chipotle;
/* 11:18:43 AM Codeup DB Server chipotle */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databse chipotle' at line 1
/* 11:19:22 AM Codeup DB Server chipotle */ select database chipotle;
/* 11:19:22 AM Codeup DB Server chipotle */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'chipotle' at line 1
/* 11:19:43 AM Codeup DB Server chipotle */ select database chipotle;
/* 11:19:43 AM Codeup DB Server chipotle */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'chipotle' at line 1
/* 11:20:22 AM Codeup DB Server chipotle */ use chipotle;
/* 11:20:22 AM Codeup DB Server chipotle */ SHOW DATABASES;
/* 11:20:22 AM Codeup DB Server chipotle */ SELECT DATABASE();
/* 11:20:22 AM Codeup DB Server chipotle */ SHOW FULL TABLES;
/* 11:20:22 AM Codeup DB Server chipotle */ SELECT * FROM information_schema.routines WHERE routine_schema = 'chipotle' ORDER BY routine_name;
/* 11:20:22 AM Codeup DB Server chipotle */ SHOW TABLE STATUS LIKE 'orders';
/* 11:20:22 AM Codeup DB Server chipotle */ SHOW CREATE TABLE `chipotle`.`orders`;
/* 11:20:23 AM Codeup DB Server chipotle */ SELECT COUNT(1) FROM `orders`;
/* 11:32:37 AM Codeup DB Server chipotle */ /*!50003 SHOW TRIGGERS WHERE `Table` = 'orders' */;
/* 11:32:48 AM Codeup DB Server chipotle */ SELECT `id`, `order_id`, `quantity`, `item_name`, `choice_description`, `item_price` FROM `orders` LIMIT 0,1000;
/* 11:33:12 AM Codeup DB Server chipotle */ list databases;
/* 11:33:12 AM Codeup DB Server chipotle */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'list databases' at line 1
/* 11:33:41 AM Codeup DB Server chipotle */ show databases;
/* 11:34:01 AM Codeup DB Server chipotle */ use chipotle;
/* 11:34:01 AM Codeup DB Server chipotle */ SHOW DATABASES;
/* 11:34:01 AM Codeup DB Server chipotle */ SELECT DATABASE();
/* 11:34:02 AM Codeup DB Server chipotle */ SHOW FULL TABLES;
/* 11:34:02 AM Codeup DB Server chipotle */ SELECT * FROM information_schema.routines WHERE routine_schema = 'chipotle' ORDER BY routine_name;
/* 11:34:02 AM Codeup DB Server chipotle */ SHOW TABLE STATUS LIKE 'orders';
/* 11:34:02 AM Codeup DB Server chipotle */ SHOW CREATE TABLE `chipotle`.`orders`;
/* 11:34:02 AM Codeup DB Server chipotle */ SELECT COUNT(1) FROM `orders`;
/* 11:34:44 AM Codeup DB Server chipotle */ select database();
/* 11:35:21 AM Codeup DB Server chipotle */ select database()  use pizza;
/* 11:35:21 AM Codeup DB Server chipotle */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'use pizza' at line 3
/* 11:36:11 AM Codeup DB Server chipotle */ use logs;
/* 11:36:11 AM Codeup DB Server chipotle */ SHOW DATABASES;
/* 11:36:11 AM Codeup DB Server chipotle */ SELECT DATABASE();
/* 11:36:11 AM Codeup DB Server logs */ SHOW FULL TABLES;
/* 11:36:11 AM Codeup DB Server logs */ SELECT * FROM information_schema.routines WHERE routine_schema = 'logs' ORDER BY routine_name;
/* 11:36:36 AM Codeup DB Server logs */ select database();
/* 11:58:55 AM Codeup DB Server logs */ USE `noether_2031`;
/* 11:58:56 AM Codeup DB Server noether_2031 */ SHOW VARIABLES LIKE 'character_set_database';
/* 11:58:56 AM Codeup DB Server noether_2031 */ SHOW FULL TABLES;
/* 11:58:56 AM Codeup DB Server noether_2031 */ SELECT * FROM information_schema.routines WHERE routine_schema = 'noether_2031' ORDER BY routine_name;
/* 11:59:38 AM Codeup DB Server noether_2031 */ select database()  use noether_2031;
/* 11:59:39 AM Codeup DB Server noether_2031 */ You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'use noether_2031' at line 3
/* 12:00:51 PM Codeup DB Server */ SHOW VARIABLES;
/* 12:00:52 PM Codeup DB Server */ SET information_schema_stats_expiry=0;
/* 12:00:52 PM Codeup DB Server */ SELECT @@global.max_allowed_packet;
/* 12:00:52 PM Codeup DB Server */ SHOW VARIABLES LIKE 'skip_show_database';
/* 12:00:52 PM Codeup DB Server */ SHOW DATABASES;
