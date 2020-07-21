CREATE TABLE IF NOT EXISTS `product`
(
    `id`          int(10) unsigned NOT NULL AUTO_INCREMENT primary key,
    `category_id` int(10) unsigned NOT NULL,
    `title`       varchar(255)     NOT NULL,
    `content`     text             NOT NULL,
    `price`       decimal(6, 2)    NOT NULL DEFAULT '0.00',
    `old_price`   decimal(6, 2)    NOT NULL DEFAULT '0.00',
    `description` varchar(255)              DEFAULT NULL,
    `keywords`    varchar(255)              DEFAULT NULL,
    `img`         varchar(255)     NOT NULL DEFAULT 'no-image.png',
    `is_offer`    tinyint(4)       NOT NULL DEFAULT '0'
)