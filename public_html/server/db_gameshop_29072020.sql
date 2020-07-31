-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 30, 2020 at 08:27 AM
-- Server version: 5.7.28
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gameshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `keywords`) VALUES
(1, 0, 'Экшен', 'Экшен (action в переводе с англ. — «действие») — жанр компьютерных игр, в котором делается упор на эксплуатацию физических возможностей игрока, в том числе координации глаз и рук и скорости реакции. Жанр представлен во множестве разновидностей от файтинго', 'Экшен'),
(2, 0, 'Шутеры', 'Шутеры', 'Шутер'),
(5, 0, 'Атмосфера', 'Атмосфера', 'Атмосфера'),
(6, 0, 'Хоррор', 'Хоррор', 'Хоррор'),
(7, 0, 'Ролевые', 'Ролевые', 'Ролевые'),
(8, 0, 'Выживание', 'Выживание', 'Выживание'),
(9, 0, 'Стратегии', 'Стратегии', 'Стратегии'),
(10, 0, 'Симуляторы', 'Симуляторы', 'Симуляторы'),
(11, 0, 'Головоломка', 'Головоломка', 'Головоломка'),
(12, 0, 'Приключения', 'Приключения', 'Приключения'),
(13, 0, 'Фэнтези', 'Фэнтези', 'Фэнтези');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL,
  `total` decimal(6,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `qty`, `total`, `status`, `name`, `email`, `phone`, `address`, `note`) VALUES
(5, '2020-07-27 19:43:17', '2020-07-28 08:54:34', 2, '80.00', 1, 'Yurij', 'nabor_2008@mail.ru', '4444', 'Пушкина 22', 'фыва'),
(8, '2020-07-28 15:15:59', '2020-07-28 15:19:39', 4, '5946.00', 0, 'Иванов Иван', 'nabor_2008@mail.ru', '+78767766777', 'г. Москва', 'Требования к АО');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `qty` tinyint(4) NOT NULL,
  `total` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `title`, `price`, `qty`, `total`) VALUES
(4, 5, 1, 'Game 1', '44.00', 1, '44.00'),
(5, 5, 4, 'Game 4', '36.00', 1, '36.00'),
(9, 8, 2, 'Death Stranding ', '2699.00', 1, '2699.00'),
(10, 8, 1, 'Destroy All Humans! ', '1399.00', 1, '1399.00'),
(11, 8, 4, 'Titan Quest ', '649.00', 1, '649.00'),
(12, 8, 3, 'METAL GEAR SURVIVE', '1199.00', 1, '1199.00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `old_price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_offer` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `content`, `price`, `old_price`, `description`, `keywords`, `img`, `is_offer`) VALUES
(1, 1, 'Destroy All Humans! ', '<p><span style=\"font-size:14px\"><strong>Destroy All Humans!</strong> </span>&mdash; это эшен с видом от третьего лица в научно-фантастическом сеттинге. Вам предстоит играть за пришельцев из космоса и участвовать в противостоянии с людьми, используя различное футуристическое оружие и способности.</p>\r\n\r\n<p>Культовая классика возвращается! Терроризируйте землян 1950-х годов в роли злобного пришельца Крипто-137. Извлекайте их ДНК, чтобы свергнуть правительство США &ndash; как и положено в боевике про нашествие инопланетян. Аннигилируйте ничтожных хомосапиенсов супероружием и суперспособностями. Палите по городам с летающей тарелки! Давите, жгите, испепеляйте!</p>\r\n\r\n<h4><strong>Особенности игры</strong></h4>\r\n\r\n<p><strong>Уникальное оружие </strong>&mdash; у каждого уважающего себя инопланетянина должно быть что? Верно - анальный зонд! Вооружитесь им и отправляйтесь порабощать человечество. Маскировка &mdash; притворитесь человеком и разрушьте привычные устои изнутри. Транспорт mdash; крушите здания и воруйте коров за рулём своей летающей тарелке. Конечно, инопланетяне передвигаются именно на них!</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1399.00', '1399.00', 'Destroy All Humans! — это эшен с видом от третьего лица в научно-фантастическом сеттинге. Вам предстоит играть за пришельцев из космоса и участвовать в противостоянии с людьми, используя различное футуристическое оружие и способности.  Культовая классика ', 'Destroy All Humans!, Экшн', 'game_images/2020-07-28/5f20306595211_Destroy All Humans!.jpg', 1),
(2, 1, 'Death Stranding ', '<div class=\"block_box game_desc\">\r\n<p>Описание игры</p>\r\n\r\n<div class=\"bb_cont\">\r\n<p><strong>Death Stranding</strong> &mdash; это симулятор курьера, а также концептуальный экшен с примесью РПГ и интерактивного кино. Конкретного жанра у игры нет, она придётся по вкусу каждому, кто ценит искусство.</p>\r\n\r\n<p>Вам предстоит сыграть за Сэма Портера Бриджеса (Норман Ридус) - курьера, самую престижную и опасную профессию в опустошенной Америке, в мире, стоящем на пороге &quot;Шестого Вымирания&quot;. Ваша задача: объединить расколовшуюся на мелкие базы Америку, восстановить связь между немногочисленным населением. Вы будете прокладывать дороги, мосты и лестницы, чтобы доставить груз в целости и не попасть в зоны, где обитают монстры и мародёры.</p>\r\n</div>\r\n</div>\r\n\r\n<p>Особенности игры</p>\r\n\r\n<ul>\r\n	<li><strong>Фото-режим</strong> &mdash; новая функция компьютерного издания. Теперь вы сможете легко запечатлеть на память самые красивые локации, которых, поверьте, в игре предостаточно. Первые несколько часов вы будете включать чуть реже, чем постоянно.</li>\r\n	<li><strong>Улучшенная графика</strong> &mdash; по сравнению с консольными версиями, игра стала намного ярче, красочнее и детализированнее. Путешествуйте вместе с Сэмом и наслаждайтесь природой, нетронутою человеком.</li>\r\n	<li><strong>Сюжет</strong> &mdash; который никого не оставит равнодушным. Все детали окружения, персонажи и даже музыка созданы для того, чтобы донести идею, заложенную в игру её создателем, до самого чёрствого геймера.</li>\r\n</ul>\r\n', '2699.00', '2699.00', 'Death Stranding — это симулятор курьера, а также концептуальный экшен с примесью РПГ и интерактивного кино. Конкретного жанра у игры нет, она придётся по вкусу каждому, кто ценит искусство.', 'Death Stranding,  симулятор, экшн', 'game_images/2020-07-28/5f20328d1e9b1_Death Stranding.jpg', 0),
(3, 2, 'METAL GEAR SURVIVE', '<p>METAL GEAR SURVIVE продолжает традиции METAL GEAR SOLID V, объединяя фирменные скрытные перемещения с новыми геймплейными возможностями &ndash; исследованием и выживанием.</p>\r\n\r\n<p>METAL GEAR SURVIVE &ndash; это альтернативная версия событий METAL GEAR SOLID V, перенесенная в другую вселенную.</p>\r\n\r\n<p>Создайте собственного персонажа и преодолейте все трудности: разыскивайте ресурсы, создавайте оружие, стройте лагерь и исследуйте мир, оттачивая свои навыки выживания во враждебной среде. В режиме совместной игры объединяйтесь еще с тремя товарищами и совместными усилиями внедряйтесь в зоны или защищайте их от орд враждебных созданий. С умом размещайте укрепления и линии обороны, чтобы добиться преимущества. Работайте в команде и будьте находчивы &ndash; только так вы сможете добиться успеха.</p>\r\n', '1199.00', '1199.00', 'METAL GEAR SURVIVE – это альтернативная версия событий METAL GEAR SOLID V, перенесенная в другую вселенную.', 'METAL GEAR SURVIVE', 'game_images/2020-07-28/5f2034e8ae694_METAL GEAR SURVIVE.png', 0),
(4, 1, 'Titan Quest ', '<div class=\"block_box game_desc\">\r\n<p><strong>Описание игры </strong></p>\r\n\r\n<div class=\"bb_cont\">\r\n<p>Titan Quest &mdash; экшен-РПГ, разработанная студией Iron Lore Entertainment. Anniversary Edition посвящено 10-летию некогда популярной игры Titan Quest. Издание включает в себя не только оригинальную игру, но и дополнение Titan Quest: Immortal Throne.</p>\r\n\r\n<p>Действие игры разворачивается на территории древней Азии, Египта и Греции, а сюжет рассказывает о том, как древние Титаны вырвались на свободу и теперь угрожают мирозданию. Игроки берут на себя роль отважного героя, которому предстоит отправиться в опасное приключение, чтобы помочь людям и Богам спасти Землю.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"block_box game_desc\">\r\n<p><strong>Особенности игры </strong></p>\r\n\r\n<div class=\"bb_cont\">\r\n<ul>\r\n	<li><strong>Улучшенный кооператив</strong> &mdash; были добавлены новые возможности, вроде голосового чата.</li>\r\n	<li><strong>Улучшенный интерфейс и разрешение</strong> &mdash; в игре была добавлена поддержка масштабируемого интерфейса, изменяемой дальности обзора камеры и широкоформатной картинки.</li>\r\n	<li><strong>Поддержка модификаций</strong> &mdash; полностью интегрированная система Steam Workshop.</li>\r\n	<li><strong>Переработанный баланс</strong> &mdash; полностью измененный баланс умений и атакующих способностей, уникальных предметов и комплектов, а также значительно улучшенный искусственный интеллект противников.</li>\r\n	<li><strong>Исправления</strong> &mdash; при активной поддержке игроков, в игре были исправлены многие, если не все ошибки.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n', '649.00', '649.00', 'Titan Quest — экшен-РПГ, разработанная студией Iron Lore Entertainment. Anniversary Edition посвящено 10-летию некогда популярной игры Titan Quest. Издание включает в себя не только оригинальную игру, но и дополнение Titan Quest: Immortal Throne.', 'Titan Quest, купить Titan Quest', 'game_images/2020-07-28/5f2036fba0038_Titan Quest.jpg', 0),
(5, 2, 'DOOM ', '<div class=\"block_box game_desc\">\r\n<p><strong>ОПИСАНИЕ ИГРЫ </strong></p>\r\n\r\n<div class=\"bb_cont\">\r\n<p><strong>DOOM</strong> &mdash; шутер от первого лица от студии idSoftware. DOOM 2016 является перезапуском легендарной серии.</p>\r\n\r\n<p>Действие игры разворачивается на Марсе. Ученые исследовательского комплекса Объединенной аэрокосмической корпорации, изучая таинственные символы, открывают портал в Ад из которого тут же хлынули орды ужасных монстров и демонов. Игроки берут на себя роль одинокого пехотинца отряда DOOM, который становится единственной надеждой на спасение человечества. Купить DOOM дешево вы можете в нашем магазине.</p>\r\n</div>\r\n</div>\r\n\r\n<p><strong>ОСОБЕННОСТИ ИГРЫ </strong></p>\r\n\r\n<ul>\r\n	<li><strong>Зашкаливающий уровень насилия</strong> &mdash; игроки могут не только разносить врагов в клочья при помощи оружия, но и всячески добивать раненных противников самым жесточайшим образом.</li>\r\n	<li><strong>Обширный арсенал</strong> &mdash; дробовик, ракетная установка, многоствольный пулемет, плазмаган, бензопила &mdash; это далеко не все оружия, доступные игрокам.</li>\r\n	<li><strong>Динамичный игровой процесс</strong> &mdash; пытаясь сдержать натиск безжалостных монстров, игроки должны быть в постоянном движении, а не тратить время отсиживаясь в укрытиях, ожидая пока восстановится здоровье</li>\r\n	<li><strong>Сетевая игра</strong>&mdash; игроки смогут сразиться друг с другом на различных аренах, используя мощное оружие, движения по вертикальной плоскости и бонусов, превращающих игроков в одного из демонов.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '799.00', '799.00', 'DOOM — шутер от первого лица от студии idSoftware. DOOM 2016 является перезапуском легендарной серии.', 'DOOM, купить DOOM ', 'game_images/2020-07-28/5f2037b4a1653_Doom.jpg', 0),
(7, 2, 'Mafia 3 ', '<div class=\"block_box game_desc\">\r\n<p><strong>Описание игры </strong></p>\r\n\r\n<div class=\"bb_cont\">\r\n<p><strong>Mafia 3</strong> &mdash; это третья игра в серии приключенческих игр, известная благодаря погружению игрока в мир организованной преступности посредством богатого повествования и красивого мира с точно воссозданными машинами, музыкой и модой эпохи.</p>\r\n\r\n<p>Нью-Бордо, 1968 год. Во Вьетнаме Линкольн Клей понял одно: семья - это не те, с кем ты вырос, а те, за кого ты готов умереть. Но когда итальянская мафия наносит удар в спину черной преступной группировке, когда-то заменившей Линкольну семью, он создает новую семью на руинах старой и принимается мстить, жестоко и умело. Если собрать правильных людей и не бояться замарать руки, можно подняться на самый верх городского криминального подполья. Вас ждут яростные перестрелки, жестокие рукопашные схватки, головокружительные гонки и непростые решения.</p>\r\n</div>\r\n</div>\r\n\r\n<p><strong>Особенности игры </strong></p>\r\n\r\n<ul>\r\n	<li><strong>Воссозданный Новый Орлеан</strong> &mdash; огромный, разнообразный и мрачный открытый мир, где правит криминал и коррупция. Ощутите во всей полноте атмосферу одного из самых непростых времен в американской истории.</li>\r\n	<li><strong>Антигерой поневоле</strong> &mdash; живите жизнью Линкольна Клея, сироты и ветерана вьетнамской войны, чья единственная цель - отомстить убийцам своих &quot;&quot;настоящих братьев&quot;&quot;, черных гангстеров, павших от рук итальянской мафии.</li>\r\n	<li><strong>Свой путь</strong> &mdash; выберите свой стиль игры: от грубой силы и града пуль до слежки и скрытных убийств, используя военную подготовку Линкольна и собранные данные в кровавой войне с мафией.</li>\r\n</ul>\r\n', '1399.00', '1399.00', 'Mafia 3 — это третья игра в серии приключенческих игр, известная благодаря погружению игрока в мир организованной преступности посредством богатого повествования и красивого мира с точно воссозданными машинами, музыкой и модой эпохи.', 'Mafia 3', 'game_images/2020-07-28/5f203893eaea3_Mafia 3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$5G1tiVz3tlOK2x8wKG/LueBDsHRSW0oW51SJWigRqMS.xk7awDul2', 'tjwlHbw-Y0a9XQv2kDONetXfVfVajmh2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
