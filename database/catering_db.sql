-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2026 at 05:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Chaat Counter', '&lt;p&gt;Fresh, live-prepared Indian chaat counters offering authentic flavors and interactive serving experience.&lt;/p&gt;', 1, '2026-02-25 07:40:04'),
(2, 'South Indian', '<p>Traditional South Indian live stations serving dosa, idli, vada, uttapam, sambhar and chutneys.</p>', 1, '2026-02-25 07:40:04'),
(3, 'Chinese (Veg)', '<p>Indo-Chinese vegetarian menu including noodles, manchurian, spring rolls, and fried rice.</p>', 1, '2026-02-25 07:40:04'),
(4, 'Instant Food', '<p>Quick-serve food counters like pasta, Maggie, sandwiches, fries and burgers.</p>', 1, '2026-02-25 07:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `address`, `date_created`) VALUES
(1, 'himanshu', 'netam', 'Male', '09123456789', 'himanshu@gmail.com', '1254737c076cf867dc53d60a0364f38e', 'Sample Address', '2021-08-04 14:31:09'),
(2, 'pavan ', 'shahu', 'Male', '98459322604', 'pavan@gmail.com', '62cee51e57683afb139a784189c8cfc7', 'at durga chauk, deori ', '2026-02-25 13:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `type_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `type_name`, `description`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 'Package – 100 People', '<p>Full live Pani Puri counter setup for 100 guests.</p>', 1499, '2026-02-25 07:40:05', '2026-02-25 13:17:47'),
(2, 2, 'Package – 100 People', '<p>Live Sev Puri counter setup for 100 guests.</p>', 1499, '2026-02-25 07:40:05', '2026-02-25 13:18:00'),
(3, 3, 'Package – 100 People', '<p>Live Bhel Puri station for 100 guests.</p>', 2499, '2026-02-25 07:40:05', '2026-02-25 13:18:16'),
(5, 5, 'Package – 100 People', '<p>Live Dosa counter setup for 100 guests.</p>', 7499, '2026-02-25 07:40:05', '2026-02-25 13:18:58'),
(6, 6, 'Package – 100 People', '<p>Idli-Vada serving station for 100 guests.</p>', 2199, '2026-02-25 07:40:05', '2026-02-25 13:19:21'),
(7, 7, 'Package – 100 People', '<p>Live Uttapam counter for 100 guests.</p>', 2499, '2026-02-25 07:40:05', '2026-02-25 13:19:32'),
(9, 9, 'Package – 100 People', '<p>Chinese wok counter with noodles for 100 guests.</p>', 1999, '2026-02-25 07:40:05', '2026-02-25 13:19:44'),
(10, 10, 'Package – 100 People', '<p>Live Manchurian station for 100 guests.</p>', 2499, '2026-02-25 07:40:05', '2026-02-25 13:19:52'),
(12, 12, 'Package – 100 People', '<p>Fried rice counter setup for 100 guests.</p>', 4599, '2026-02-25 07:40:05', '2026-02-25 13:20:11'),
(13, 13, 'Package – 100 People', '<p>Live pasta counter setup for 100 guests.</p>', 2499, '2026-02-25 07:40:05', '2026-02-25 13:20:19'),
(14, 14, 'Package – 100 People', '<p>Live Maggie preparation counter for 100 guests.</p>', 2499, '2026-02-25 07:40:05', '2026-03-16 11:17:05'),
(15, 15, 'Package – 100 People', '<p>Grilled sandwich counter for 100 guests.</p>', 4999, '2026-02-25 07:40:05', '2026-03-16 11:17:15'),
(16, 16, 'Package – 100 People', '<p>Live fry station with fries & nuggets for 100 guests.</p>', 0, '2026-02-25 07:40:05', NULL),
(17, 17, 'Package – 100 People', '<p>Veg Burger live counter for 100 guests.</p>', 0, '2026-02-25 07:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `event` varchar(250) NOT NULL,
  `venue` text NOT NULL,
  `event_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `additional_remarks` text DEFAULT NULL,
  `additional_amount` float NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `event`, `venue`, `event_date`, `amount`, `additional_remarks`, `additional_amount`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'Birthday Celebration', 'Sample Event Venue', '2021-12-08 10:00:00', 6250, 'Servers, utensils, and other Fees.', 2500, 1, '2021-08-04 15:32:25', '2021-08-04 15:46:34'),
(2, 2, 'birthday event', 'at durga chauk deori', '2026-02-25 13:43:00', 1499, '', 0, 1, '2026-02-25 13:43:32', '2026-02-25 13:44:23'),
(3, 1, 'Birthday Party', 'at dinesh shahu, durga chauk deori', '2026-03-25 12:23:00', 1499, NULL, 0, 0, '2026-03-16 12:23:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 7, 1, 2500, 2500),
(2, 1, 4, 1, 1500, 1500),
(3, 1, 8, 50, 45, 2250),
(4, 2, 1, 1, 1499, 1499),
(5, 3, 1, 1, 1499, 1499);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `description`, `status`, `date_created`) VALUES
(1, 1, 1, 'Classic Pani Puri', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A premium live Pani Puri counter designed for large events. Each plate is freshly assembled with crispy puris filled with mashed spiced potatoes, special masala mix, and chilled flavored waters. Guests can enjoy unlimited servings prepared right in front of them&mdash;creating a fun, interactive and authentic street-food experience ideal for weddings, receptions, festivals, college events, and corporate gatherings.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(2, 1, 2, 'Deori-Style Sev Puri', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A flavorful chaat prepared with crisp flat puris topped with mashed potatoes, chopped onions, fresh sev, coriander, and a perfect blend of sweet, spicy, and tangy chutneys. Prepared live for every guest to maintain freshness and crunch. A popular choice for birthday parties, outdoor catering, and wedding snack counters, ensuring a delightful and authentic Mumbai street-food taste.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(3, 1, 3, 'Classic Bhel Puri', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A refreshing and tangy Bhel Puri counter made with fresh puffed rice, crunchy namkeen, chopped vegetables, coriander, lemon, and a perfect mix of tamarind and mint chutney. Prepared fresh for every serving to maintain perfect texture. Highly preferred for day-time events, engagements, mehendi functions, and festival gatherings.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(5, 2, 5, 'Masala Dosa', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A premium live dosa counter serving hot and crispy dosas freshly prepared on the tawa. Each dosa is stuffed with flavorful mashed potato masala and seasoned with authentic South Indian spices. Guests can enjoy dosas with coconut chutney, tomato chutney, and steaming hot sambhar. Ideal for weddings, engagement functions, community feasts, corporate breakfasts, and evening events where live food attracts the crowd.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(6, 2, 6, 'Idli Vada Combo', '&lt;p data-start=\\&quot;1582\\&quot; data-end=\\&quot;1923\\&quot; style=\\&quot;text-align: justify; \\&quot;&gt;&ldquo;A soft and fluffy South Indian idli platter paired with freshly fried crispy vadas, served with hot sambhar and a duo of coconut chutneys. Perfect for morning events, corporate breakfast meetings, temple gatherings, wedding brunches, and traditional Indian events that prefer light, healthy, and flavor-rich dishes.&rdquo;&lt;/p&gt;\r\n&lt;p data-start=\\&quot;1925\\&quot; data-end=\\&quot;1949\\&quot;&gt;&lt;/p&gt;', 1, '2026-02-25 07:40:05'),
(7, 2, 7, 'Mixed Veg Uttapam', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A delicious South Indian dish prepared on a hot tawa where soft, fluffy uttapams are topped with tomatoes, capsicum, onions, carrots, and fresh coriander. Each uttapam is cooked slowly to maintain crisp edges and a soft center. Served with coconut chutney and sambhar, this dish is extremely popular for evening functions, family gatherings, and community catering.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(9, 3, 9, 'Veg Hakka Noodles', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A popular Indo-Chinese delight prepared with perfectly stir-fried noodles tossed in garlic, capsicum, cabbage, carrots, spring onions, and signature seasoning. Each plate is cooked live on the wok to retain freshness, aroma, and authentic street-style taste. This counter is a huge attraction at receptions, corporate events, youth gatherings, birthday parties, and outdoor catering setups because guests love hot noodles served straight from the wok.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(10, 3, 10, 'Veg Manchurian', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A signature Indo-Chinese starter loved by all age groups. Crispy vegetable balls made with cabbage, carrots, capsicum, and fresh spices are deep fried and tossed in a rich blend of soy, ginger, garlic, and spring onions. Guests can choose between dry Manchurian (perfect starter) or gravy Manchurian (ideal with fried rice and noodles). This dish is one of the most demanded counters in wedding receptions and corporate buffets.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(12, 3, 12, 'Veg Fried Rice', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A classic Chinese rice dish prepared with long-grain rice, mixed vegetables, garlic, soy sauce, pepper, and spring onions. Each portion is wok-fried live to deliver deep aroma and authentic Chinese flavor. Perfectly pairs with Manchurian gravy, making it a must-have on Chinese counters in any catering event.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(13, 4, 13, 'White Sauce Pasta', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A smooth, creamy Italian-style pasta prepared with rich white sauce, butter, milk, herbs, and saut&eacute;ed vegetables. Every serving is made fresh at the live counter, allowing guests to enjoy hot and perfectly seasoned pasta with optional toppings like chili flakes, oregano, cheese, and mixed herbs. Extremely popular among youngsters and ideal for birthdays, engagement parties, evening weddings, and corporate catering setups.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(14, 4, 14, 'Masala Maggie', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A fun and interactive live Maggie counter where guests can enjoy hot, freshly prepared masala noodles cooked with vegetables, butter, and special seasoning. This counter attracts youth, kids, and noodle lovers due to its simplicity and irresistible aroma. Perfect for outdoor events, night weddings, college parties, and small family celebrations where live food adds excitement.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05'),
(15, 4, 15, 'Cheese Grilled Sandwich', '&lt;div style=\\&quot;text-align: justify;\\&quot;&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;&ldquo;A delicious grilled sandwich loaded with fresh vegetables, cheese slices, green chutney, butter, and seasoning. Each sandwich is toasted to perfection on the griller and served hot with ketchup or chutney. A high-demand item for kids&rsquo; parties, corporate snacks, and wedding evening counters due to its simple yet satisfying taste.&rdquo;&lt;/span&gt;&lt;/div&gt;', 1, '2026-02-25 07:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 1, 8250, '2021-08-04 14:59:53'),
(2, 1, 6250, '2021-08-04 15:32:25'),
(3, 2, 1499, '2026-02-25 13:43:32'),
(4, 3, 1499, '2026-03-16 12:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Pani Puri', '<p>Crispy puris filled with potato stuffing and chilled mint-tamarind flavored water.</p>', 1, '2026-02-25 07:40:05'),
(2, 1, 'Sev Puri', '<p>Flat puris topped with potatoes, onions, chutneys and crunchy sev.</p>', 1, '2026-02-25 07:40:05'),
(3, 1, 'Bhel Puri', '<p>A tangy mix of puffed rice, chutneys, vegetables and spices.</p>', 1, '2026-02-25 07:40:05'),
(5, 2, 'Dosa', '<p>Crispy South Indian dosa served hot with sambhar and chutney.</p>', 1, '2026-02-25 07:40:05'),
(6, 2, 'Idli & Vada', '<p>Soft idli and crispy vada served with chutney and sambhar.</p>', 1, '2026-02-25 07:40:05'),
(7, 2, 'Uttapam', '<p>Thick pancake-style uttapam topped with fresh vegetables.</p>', 1, '2026-02-25 07:40:05'),
(9, 3, 'Noodles', '<p>Vegetarian stir-fried noodles cooked with vegetables and sauces.</p>', 1, '2026-02-25 07:40:05'),
(10, 3, 'Manchurian', '<p>Crispy vegetable balls tossed in Indo-Chinese sauces (dry or gravy).</p>', 1, '2026-02-25 07:40:05'),
(12, 3, 'Fried Rice', '<p>Flavorful Indo-Chinese fried rice mixed with vegetables and spices.</p>', 1, '2026-02-25 07:40:05'),
(13, 4, 'Pasta', '<p>Creamy pasta cooked live with Italian sauces.</p>', 1, '2026-02-25 07:40:05'),
(14, 4, 'Maggie', '<p>Live-cooked masala Maggie with vegetables.</p>', 1, '2026-02-25 07:40:05'),
(15, 4, 'Sandwich', '<p>Grilled or toasted sandwiches with vegetable filling.</p>', 1, '2026-02-25 07:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Food Catering'),
(6, 'short_name', 'Food Catering'),
(11, 'logo', 'uploads/1628047500_catering.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1628047500_banner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
