DROP DATABASE IF EXISTS `portfolio_database`;
CREATE DATABASE `portfolio_database`;

DROP TABLE IF EXISTS `portfolio_database`.`projects`;
CREATE TABLE IF NOT EXISTS `portfolio_database`.`projects` (
    `id` int  UNSIGNED NOT NULL AUTO_INCREMENT,
    `project_title` VARCHAR(60) NOT NULL,
    `project_img` VARCHAR(255) DEFAULT NULL,
     `project_type` VARCHAR(60) NOT NULL,
    `project_description` VARCHAR(300) NOT NULL,
    `project_link` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
)  ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `portfolio_database`.`case_studies`;
CREATE TABLE IF NOT EXISTS `portfolio_database`.`case_studies` (
    `case_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
    `study_title` VARCHAR(60) NOT NULL,
    `project_intro` VARCHAR(300) NOT NULL,
    `overview` VARCHAR(300) NOT NULL,
    `challenge` VARCHAR(300) NOT NULL,
    `research` VARCHAR(300) NOT NULL,
    `process` VARCHAR(300) NOT NULL,
    `highlights` VARCHAR(300) NOT NULL,
    `results` VARCHAR(300) NOT NULL,
    `reflection` VARCHAR(300) NOT NULL,
    `project_id` int UNSIGNED NOT NULL,
    CONSTRAINT `project_case-study`
    FOREIGN KEY (`project_id`) REFERENCES projects(`id`),
    PRIMARY KEY (`case_id`)
) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `portfolio_database`.`page-linking`;
CREATE TABLE IF NOT EXISTS `portfolio_database`.`page-linking` (
    `case_id` int UNSIGNED NOT NULL,
    `project_id` int UNSIGNED NOT NULL,
    CONSTRAINT `linked_case_id`
    FOREIGN KEY (`case_id`) REFERENCES case_studies(`case_id`),
    CONSTRAINT `linked_project_id`
    FOREIGN KEY (`project_id`) REFERENCES projects(`id`)
) ENGINE=INNODB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `portfolio_database`.`projects`(`id`,`project_title`,`project_img`,`project_type`,`project_description`,`project_link`) VALUES
(1, 'Industry Night Site','images/industry-night.png','Webpage Redesign','A team based web-page redesign for the Fanshawe Interactive 2027 Website with the purpose of showing off our skills and advertising the IDP program. I worked on the project as the project manager and one of the front-end devs.', 'https://github.com/Jclarke-1/team4_student_showcase.git'),
(2, 'Bluetooth Speaker', 'images/bluetooth-speaker.png', 'Webpage and 3D Design', 'A webpage design featuring a 3D model of a bluetooth speaker of my own design using hotspots to show off the innerworkings of the product.','https://github.com/Jclarke-1/clarke_jake_bluetooth_speaker.git'),
(3, 'Quatro Rebrand','images/quatro-refresh.png','Webpage and 3D Design', 'A webpage design featuring a 3D model of a drink bottle of my own design and a complete brand refresh featuring three working pages','https://github.com/Jclarke-1/clarke-jake-FIP.git');

INSERT INTO `portfolio_database`.`case_studies`(`study_title`,`project_intro`,`overview`,`challenge`,`research`,`process`,`highlights`,`results`,`reflection`,`project_id`) VALUES
('Industry Night Site','Introduction to the project?','overview who was the client and what did we need to do', 'challenges when trying to meet the criteria', 'research into target audience/demographic', 'our process and any featured work in progress pictures', 'highlights of our technical or design skills', 'the finished result', 'on reflection what do we think we could have done better', 1),
('Bluetooth Speaker','Introduction to the project?','overview, who was the client and what did we need to do', 'challenges when trying to meet the criteria', 'research into target audience/demographic', 'our process and any featured work in progress pictures', 'highlights of our technical or design skills', 'the finished result', 'on reflection what do we think we could have done better', 2),
('Quatro Rebrand','Introduction to the project?','overview, who was the client and what did we need to do', 'challenges when trying to meet the criteria', 'research into target audience/demographic', 'our process and any featured work in progress pictures', 'highlights of our technical or design skills', 'the finished result', 'on reflection what do we think we could have done better',3);

INSERT INTO `portfolio_database`.`page-linking`(`case_id`, `project_id`) VALUES 
(1,1),
(2,2),
(3,3);