CREATE TABLE IF NOT EXISTS `user_offduty_items` (
    `identifier` VARCHAR(60) NOT NULL,
    `job` VARCHAR(60) NOT NULL,
    `vault` INT NOT NULL,
    `items` LONGTEXT,
    PRIMARY KEY (`identifier`, `job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
