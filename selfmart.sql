-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 08:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selfmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add catagories', 7, 'add_catagories'),
(26, 'Can change catagories', 7, 'change_catagories'),
(27, 'Can delete catagories', 7, 'delete_catagories'),
(28, 'Can view catagories', 7, 'view_catagories'),
(29, 'Can add cart', 8, 'add_cart'),
(30, 'Can change cart', 8, 'change_cart'),
(31, 'Can delete cart', 8, 'delete_cart'),
(32, 'Can view cart', 8, 'view_cart'),
(33, 'Can add oreder place', 9, 'add_orederplace'),
(34, 'Can change oreder place', 9, 'change_orederplace'),
(35, 'Can delete oreder place', 9, 'delete_orederplace'),
(36, 'Can view oreder place', 9, 'view_orederplace'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add customer', 11, 'add_customer'),
(42, 'Can change customer', 11, 'change_customer'),
(43, 'Can delete customer', 11, 'delete_customer'),
(44, 'Can view customer', 11, 'view_customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$P3Qr5h21SrbaIsHyGVkPgH$0thscnlD6M85UjEqzMTTqI72TQic0FgWTeLQXRH+3lU=', '2021-11-01 06:20:26.328622', 0, 'erfan_121', '', '', 'erfanahammed590@gmail.com', 0, 1, '2021-10-31 22:02:18.744536'),
(2, 'pbkdf2_sha256$260000$PehHtYIe4ddCurZyQ7589q$n/bnsmfpV0Iql/HmTL+5afy2YsjRSjJLrdZyUteekyA=', '2021-11-14 03:04:47.142347', 1, 'selfmart', '', '', 'abc@gmail.com', 1, 1, '2021-11-11 19:32:38.488265');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-13 19:45:25.569437', '1', '1', 1, '[{\"added\": {}}]', 7, 2),
(2, '2021-11-13 19:45:52.254900', '2', '2', 1, '[{\"added\": {}}]', 7, 2),
(3, '2021-11-13 19:46:45.848178', '3', '3', 1, '[{\"added\": {}}]', 7, 2),
(4, '2021-11-13 19:47:08.881896', '4', '4', 1, '[{\"added\": {}}]', 7, 2),
(5, '2021-11-13 19:47:37.116283', '5', '5', 1, '[{\"added\": {}}]', 7, 2),
(6, '2021-11-13 19:47:51.505780', '6', '6', 1, '[{\"added\": {}}]', 7, 2),
(7, '2021-11-13 21:27:06.107843', '1', '1', 1, '[{\"added\": {}}]', 10, 2),
(8, '2021-11-14 03:05:43.028913', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 10, 2),
(9, '2021-11-14 13:05:24.773141', '2', '2', 1, '[{\"added\": {}}]', 10, 2),
(10, '2021-11-14 13:45:23.143208', '3', '3', 1, '[{\"added\": {}}]', 10, 2),
(11, '2021-11-14 13:46:30.640762', '4', '4', 1, '[{\"added\": {}}]', 10, 2),
(12, '2021-11-14 13:47:21.248656', '5', '5', 1, '[{\"added\": {}}]', 10, 2),
(13, '2021-11-14 13:48:16.966536', '6', '6', 1, '[{\"added\": {}}]', 10, 2),
(14, '2021-11-14 14:06:14.380782', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 2),
(15, '2021-11-14 14:06:32.238752', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 2),
(16, '2021-11-14 17:14:05.927446', '6', '6', 3, '', 10, 2),
(17, '2021-11-14 17:14:06.101651', '5', '5', 3, '', 10, 2),
(18, '2021-11-14 17:14:06.119799', '4', '4', 3, '', 10, 2),
(19, '2021-11-14 17:14:06.143724', '3', '3', 3, '', 10, 2),
(20, '2021-11-14 17:14:06.267425', '2', '2', 3, '', 10, 2),
(21, '2021-11-14 17:14:06.332850', '1', '1', 3, '', 10, 2),
(22, '2021-11-14 17:22:57.561499', '7', '7', 1, '[{\"added\": {}}]', 10, 2),
(23, '2021-11-14 17:24:49.285137', '8', '8', 1, '[{\"added\": {}}]', 10, 2),
(24, '2021-11-14 17:28:04.901787', '9', '9', 1, '[{\"added\": {}}]', 10, 2),
(25, '2021-11-14 17:29:42.622750', '10', '10', 1, '[{\"added\": {}}]', 10, 2),
(26, '2021-11-14 17:31:10.735403', '11', '11', 1, '[{\"added\": {}}]', 10, 2),
(27, '2021-11-14 17:33:05.070881', '12', '12', 1, '[{\"added\": {}}]', 10, 2),
(28, '2021-11-14 17:41:18.201878', '10', '10', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 2),
(29, '2021-11-14 17:41:36.034009', '10', '10', 2, '[{\"changed\": {\"fields\": [\"Catagory\"]}}]', 10, 2),
(30, '2021-11-14 17:49:20.588655', '13', '13', 1, '[{\"added\": {}}]', 10, 2),
(31, '2021-11-14 17:52:16.024300', '14', '14', 1, '[{\"added\": {}}]', 10, 2),
(32, '2021-11-14 17:58:07.457092', '15', '15', 1, '[{\"added\": {}}]', 10, 2),
(33, '2021-11-14 17:59:59.304203', '16', '16', 1, '[{\"added\": {}}]', 10, 2),
(34, '2021-11-14 18:01:53.639652', '17', '17', 1, '[{\"added\": {}}]', 10, 2),
(35, '2021-11-14 18:03:18.063654', '18', '18', 1, '[{\"added\": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'main', 'cart'),
(7, 'main', 'catagories'),
(11, 'main', 'customer'),
(9, 'main', 'orederplace'),
(10, 'main', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-30 21:27:57.404483'),
(2, 'auth', '0001_initial', '2021-10-30 21:28:11.218337'),
(3, 'admin', '0001_initial', '2021-10-30 21:28:14.634531'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-30 21:28:14.713168'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-30 21:28:14.755323'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-10-30 21:28:15.654131'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-10-30 21:28:17.708171'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-10-30 21:28:18.061999'),
(9, 'auth', '0004_alter_user_username_opts', '2021-10-30 21:28:18.190525'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-10-30 21:28:19.419189'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-10-30 21:28:19.700748'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-30 21:28:19.910822'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-10-30 21:28:20.283034'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-30 21:28:20.468225'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-10-30 21:28:20.796987'),
(16, 'auth', '0011_update_proxy_permissions', '2021-10-30 21:28:20.867040'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-30 21:28:21.001568'),
(18, 'sessions', '0001_initial', '2021-10-30 21:28:21.707834'),
(19, 'main', '0001_initial', '2021-11-13 18:23:21.233610'),
(20, 'main', '0002_alter_product_catagory', '2021-11-14 16:28:06.167530');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5xk4a47bdk270ym773dm1awxtlt75nou', '.eJxVjEEOgjAQRe_StWk6lMLUpXvO0Ew7g0VNSSisjHcXEha6_e_991aBtjWHrcoSJlZX1ajL7xYpPaUcgB9U7rNOc1mXKepD0SetephZXrfT_Qtkqnl_e9M742MaHXQWHEoXHbYe0XojkX2yewtcg4RgWiMEdrSAQOh7FmH1-QK9MDdN:1mlxtM:UTOOd5nqTqkzIdR99ohkednqvCb_hoTBFtKQf-ruv3E', '2021-11-27 18:36:44.337810'),
('fvnyl2w7o26ry43dpe18f9zmecp9rsyb', '.eJxVjEEOgjAQRe_StWk6lMLUpXvO0Ew7g0VNSSisjHcXEha6_e_991aBtjWHrcoSJlZX1ajL7xYpPaUcgB9U7rNOc1mXKepD0SetephZXrfT_Qtkqnl_e9M742MaHXQWHEoXHbYe0XojkX2yewtcg4RgWiMEdrSAQOh7FmH1-QK9MDdN:1mm5p1:_EHOYVWJtplV7uhqxuIY1mRRo983j4i6nSam0zsZn8E', '2021-11-28 03:04:47.223107');

-- --------------------------------------------------------

--
-- Table structure for table `main_cart`
--

CREATE TABLE `main_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_catagories`
--

CREATE TABLE `main_catagories` (
  `id` bigint(20) NOT NULL,
  `Items_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_catagories`
--

INSERT INTO `main_catagories` (`id`, `Items_name`) VALUES
(1, 'Breakfast Platter'),
(2, 'Lunches'),
(3, 'Sandwich and more'),
(4, 'Biriyani'),
(5, 'Fresh Dessert'),
(6, 'Beverage');

-- --------------------------------------------------------

--
-- Table structure for table `main_customer`
--

CREATE TABLE `main_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `Area` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipCode` int(11) NOT NULL,
  `divison` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_orederplace`
--

CREATE TABLE `main_orederplace` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_product`
--

CREATE TABLE `main_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `selling_price` double NOT NULL,
  `discount_price` double NOT NULL,
  `discription` longtext NOT NULL,
  `brand` varchar(100) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `catagory` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_product`
--

INSERT INTO `main_product` (`id`, `title`, `selling_price`, `discount_price`, `discription`, `brand`, `product_image`, `catagory`) VALUES
(7, 'Mashala Omelette', 350, 40, 'Packed with a delectable variety of delicacies, this thali is our top selling meal. Known by its name, butter chicken curry cooked in delish gravy is served along with whole wheat laccha paratha, jeera rice, rich dal makhani, pickle and boondi raita.', 'none', 'productImg/food10.png', 'BF'),
(8, 'Butter-Chicken Thali', 230, 50, 'Packed with a delectable variety of delicacies, this thali is our top selling meal. Known by its name, butter chicken curry cooked in delish gravy is served along with whole wheat laccha paratha, jeera rice, rich dal makhani, pickle and boondi raita.', 'none', 'productImg/food11.png', 'BF'),
(9, 'Buffalo Chicken Loaded Fries', 380, 100, 'Crispy french fries, gouda cheese, spicy buffalo chicken, tomato salsa and more cheese combined to make a perfect party appetizer. These Buffalo chicken fries would be one of your favorites when the game is on. So indulge and enjoy!', 'none', 'productImg/food1_JVfzk86.jpg', 'FD'),
(10, 'Chicken Sausage Loaded Fries', 280, 50, 'With crispy seasoned fries, sausage, onions and peppers, these loaded fries are a great way to get a tasty, fun meal on the table.', 'none', 'productImg/food2_brhZK6O.jpg', 'FD'),
(11, 'Chicken-Tikka Sandwich', 280, 100, 'Enjoy the best of fusion flavours in this flavoursome sandwich. Chicken pieces are flavoured with our in-house tikka masala and layered in a toasted brown bread spread with mint chutney, cucumber and tomato slices.', 'none', 'productImg/food15.png', 'SM'),
(12, 'Homestyle-Chicken Sandwich', 320, 220, 'This Chicken Sandwich is quite the testament. Grilled, pulled chicken, crunchy veggies and crushed black-pepper tossed with a creamy mayo sauce stuffed between layers and buttered brown bread. Serves 1.', 'none', 'productImg/food14.png', 'SM'),
(13, 'Mutter Paneer-Dum-Biriyani Combo', 350, 50, 'Flavoured with exotic spices and known for its aroma, this dish features mutter paneer made with our own in-house recipe, paneer and green peas tossed in creamy rich onion tomato gravy and served with a delicious Bhurani Raita at the side, this is vegetarian biriyani-bliss reinvented.', 'none', 'productImg/food8.jpg', 'L'),
(14, 'Chicken-Tikka Dum Biriyani Combo', 450, 30, 'Most-loved juicy chicken tikkas with freshly ground biriyani masala and premium basmati steamed shut in the age-old dum phukt style – a delicious fare of delectable flavours. Served with Bhurani Raita', 'none', 'productImg/food21.JPG', 'L'),
(15, 'Masala Pepper Chicken-Biriyani Combo', 320, 60, 'Tender pieces of chicken tossed in fiery hot indian spices and onion-tomato gravy, is dum-cooked and topped on the biriyani rice. Get your hands on to enjoy this biriyani. It\'s surely a hot-seller! Served with Bhurani Raita.', 'none', 'productImg/food21_qcmaQ74.JPG', 'BIR'),
(16, 'Murgh Makhani Dum Biriyani Combo', 450, 50, 'Chicken tikka cooked in a delicious makhani gravy and essential powdered Indian spices, fiery gravy led by onion, yogurt and spices, are DUM cooked with layers of basmati rice boiled with aromatic whole Indian spices and steamed for an explosion of flavours. Served with Bhurani Raita. If you are up to pampering yourself with every mouthful, here’s what you have to think of!', 'none', 'productImg/food8_8frZGZ8.jpg', 'BIR'),
(17, 'Fresh Cream Truffle Balls (Pack of 2)', 120, 0, 'Get popping with fresh cream layered with chocolate ganache and dreamy chocolatey flavours. Have fun this season as you begin your indulgence with the sinful truffle pops!', 'none', 'productImg/food22.JPG', 'BG'),
(18, 'Salted-Caramel Chocolate Tart', 120, 0, 'Salt and caramel – a combination that has for long puzzled French chefs and will continue to remain a rarity among culinary obsessions. Let’s introduce chocolate to this elite combination and pipe the trio into a flaky tart – can you imagine the flavours and textures at play here? Try it, already!', 'none', 'productImg/food24.jpg', 'BG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_cart`
--
ALTER TABLE `main_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_cart_product_id_06bc46f7_fk_main_product_id` (`product_id`),
  ADD KEY `main_cart_user_id_53cf8b47_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `main_catagories`
--
ALTER TABLE `main_catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_customer`
--
ALTER TABLE `main_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_customer_user_id_19b4dfa5_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `main_orederplace`
--
ALTER TABLE `main_orederplace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_orederplace_customer_id_02c6bb8d_fk_main_customer_id` (`customer_id`),
  ADD KEY `main_orederplace_product_id_375c967a_fk_main_product_id` (`product_id`),
  ADD KEY `main_orederplace_user_id_d84ecf56_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `main_product`
--
ALTER TABLE `main_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `main_cart`
--
ALTER TABLE `main_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_catagories`
--
ALTER TABLE `main_catagories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_customer`
--
ALTER TABLE `main_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_orederplace`
--
ALTER TABLE `main_orederplace`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_product`
--
ALTER TABLE `main_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_cart`
--
ALTER TABLE `main_cart`
  ADD CONSTRAINT `main_cart_product_id_06bc46f7_fk_main_product_id` FOREIGN KEY (`product_id`) REFERENCES `main_product` (`id`),
  ADD CONSTRAINT `main_cart_user_id_53cf8b47_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_customer`
--
ALTER TABLE `main_customer`
  ADD CONSTRAINT `main_customer_user_id_19b4dfa5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_orederplace`
--
ALTER TABLE `main_orederplace`
  ADD CONSTRAINT `main_orederplace_customer_id_02c6bb8d_fk_main_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `main_customer` (`id`),
  ADD CONSTRAINT `main_orederplace_product_id_375c967a_fk_main_product_id` FOREIGN KEY (`product_id`) REFERENCES `main_product` (`id`),
  ADD CONSTRAINT `main_orederplace_user_id_d84ecf56_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
