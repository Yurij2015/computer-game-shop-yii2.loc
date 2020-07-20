CREATE TABLE IF NOT EXISTS `category`
(
    `id`          int(10) unsigned NOT NULL PRIMARY KEY,
    `parent_id`   int(10) unsigned NOT NULL DEFAULT '0',
    `title`       varchar(255)     NOT NULL,
    `description` varchar(255)              DEFAULT NULL,
    `keywords`    varchar(255)              DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;