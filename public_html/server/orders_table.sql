CREATE TABLE IF NOT EXISTS `orders`
(
    `id`         int(10) unsigned    NOT NULL,
    `created_at` datetime            NOT NULL,
    `updated_at` datetime            NOT NULL,
    `qty`        tinyint(3) unsigned NOT NULL,
    `total`      decimal(6, 2)       NOT NULL DEFAULT '0.00',
    `status`     tinyint(4)          NOT NULL DEFAULT '0',
    `name`       varchar(255)        NOT NULL,
    `email`      varchar(255)        NOT NULL,
    `phone`      varchar(255)        NOT NULL,
    `address`    varchar(255)        NOT NULL,
    `note`       text
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product`
(
    `id`         int(10) unsigned NOT NULL,
    `order_id`   int(10) unsigned NOT NULL,
    `product_id` int(10) unsigned NOT NULL,
    `title`      varchar(255)     NOT NULL,
    `price`      decimal(6, 2)    NOT NULL DEFAULT '0.00',
    `qty`        tinyint(4)       NOT NULL,
    `total`      decimal(6, 2)    NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
    MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
    MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;