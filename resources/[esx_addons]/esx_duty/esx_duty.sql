CREATE TABLE IF NOT EXISTS `offduty_storage` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(60) NOT NULL,
    `job` VARCHAR(60) NOT NULL,
    `item` VARCHAR(100) NOT NULL,
    `count` INT NOT NULL,
    `metadata` LONGTEXT,
    `vault` VARCHAR(60) NOT NULL,
    `grade` INT NOT NULL,
    `stored_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;