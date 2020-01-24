-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 10:32 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `updated_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us Information', '\r\n\r\n Fast 6 Car Rental System is a small but growing national car rental company. The organization (company) is located in Sandton .The Fast 6 Car Rental company has branches in some cities of North West. At each branch cars are available for rental. \r\n\r\n', '<p class=\"MsoListParagraph\" style=\"margin: 0cm; margin-bottom: .0001pt; mso-add-space: auto; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">This time is an era of World Wide Web (WWW) where the world is considered as a small<span style=\"mso-spacerun: yes;\">&nbsp;&nbsp; </span>village where by users need to interact with internet technology for survival and for being competitive.</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">This system will be developed in order to be used by Car Rental Company, specifically by Fast 6 Car Rental, in renting cars to customers.It is will be <strong style=\"mso-bidi-font-weight: normal;\">onlinesystems</strong>through which customers can <strong style=\"mso-bidi-font-weight: normal;\">view available cars</strong>, <strong style=\"mso-bidi-font-weight: normal;\">register</strong>, <strong style=\"mso-bidi-font-weight: normal;\">view profile</strong> and <strong style=\"mso-bidi-font-weight: normal;\">book car.</strong></span></p>\r\n<p class=\"MsoListParagraph\" style=\"margin: 0cm; margin-bottom: .0001pt; mso-add-space: auto; text-align: justify; line-height: 150%;\"><span style=\"font-size: 12.0pt; line-height: 150%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">Online car rental is a type of electronic commerce used for business-to-business and business-to &ndash;customer transactions. In this project, an attempt has been done to design a system which is used for car rental service. This document contains the software requirements for the Car Rental System (CRS). The main purpose of Car Rental System to be implemented is to manage information about Cars, Customers and the system users related to the company so as to increase the company business performance and speed of work.<span style=\"mso-spacerun: yes;\">&nbsp; </span>The purpose of this document is to state all system requirements clearly for usage in the development stages ahead.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_username`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'administrator', 'nkosin361@gmail.com', '$2y$10$nFOzIPxCsBzZEwBmncM8EuwdA0cPUzdxdKFbDEBWbY409C.LAX6we', 'kareena-store', 'nutty.jpg', '0820756920', 'South Africa', 'Web Developer', '   Am a Full stack developer   ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'BEST PRICES', 'Best Price Guarantee for Online Car Hire Bookings Introducing Fast 6 Best Price Guarantee on online car hire bookings and the end to your booking woes. '),
(3, 'Special Offers', 'Book a car for up to 7 days in the Western Cape and return it in Gauteng or North West Province from only R155* per day, including 2800km for the rental and no one way fee! '),
(6, 'Zero Liability Car Hire', 'Join Fast 6 Car Rental for free and enjoy priority service');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(11, 'Digital Software Bundle Relation 1', 17, 18),
(12, 'Digital Software Bundle Relation 2', 16, 18),
(13, 'Digital Software Bundle Relation 3', 15, 18),
(14, 'Digital Software Bundle Relation 4', 14, 18),
(21, 'Saad Ahmed | Adobe Photoshop CC 2018 | 12 Month Subscription (Download)', 17, 0),
(32, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 4, 11),
(33, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 5, 11),
(34, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 3, 11),
(35, 'Saad Ahmed | Solid Navy Denim Jackets Bundle', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `p_price`, `product_weight`, `product_type`) VALUES
(1, 11, '33666', 1, '200', '2.0', 'physical_product'),
(3, 6, '36666', 1, '96', '1.3', 'physical_product'),
(4, 34, '363663', 1, '2000', '2.3', 'physical_product'),
(5, 34, '36666', 1, '2200', '2.5', 'physical_product');

-- --------------------------------------------------------

--
-- Table structure for table `cart_meta`
--

CREATE TABLE `cart_meta` (
  `meta_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'zinta_preity.jpg'),
(3, 'Kids', 'no', 'image10.jpg'),
(4, 'Others', 'no', 'cat_image.jpg'),
(5, 'Men', 'no', 'image11.jpg'),
(6, 'Softwares', 'no', ''),
(7, 'Xps 15', 'yes', ''),
(8, 'HP Envy', 'yes', ''),
(9, 'Razer Blade', 'yes', ''),
(10, 'Apple', 'yes', ''),
(11, 'Wordpress', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'nkosin361@gmail.com', 'Contact To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(10) NOT NULL,
  `country_name` text NOT NULL,
  `country_code` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Aland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua And Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia And Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic Of', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D\'ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island And Mcdonald Islands', 'HM'),
(96, 'Holy See (vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle Of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People\'s Republic Of', 'KP'),
(117, 'Korea, Republic Of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People\'s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States Of', 'FM'),
(144, 'Moldova, Republic Of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts And Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre And Miquelon', 'PM'),
(187, 'Saint Vincent And The Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome And Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia And Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia And The South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard And Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province Of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic Of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad And Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks And Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis And Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW'),
(245, 'Myanmar (Burma)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `vendor_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, '0', 9, 'Remind T-shirt', '40', '333444', 5, 1),
(4, '6', 17, 'Adobe Photoshop CC 2018 Coupon', '80', 'coupon-code-124442 ', 8, 0),
(5, '6', 41, 'Dell Inspiron 15 7000 Coupon', '50', '15969855 ', 4, 0),
(6, '6', 34, 'Apple MacBook Pro 15-inch 2018 Coupon', '98', '5782572j9    ', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_username` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  `customer_role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_username`, `customer_contact`, `customer_image`, `customer_ip`, `customer_confirm_code`, `customer_role`) VALUES
(18, 'Nutty ', 'nkosin361@gmail.com', '$2y$10$MO4ZwVTI47.a73DZULray.0d55d1uINRH5qoiDl1oOYgdxNK0hxVu', 'Nutty', '0820756920', 'BMW-logo.png', '::1', '672138498', 'customer'),
(19, 'Nutty1', 'nkosin362@gmail.com', '$2y$10$A.jgbuB.NSq6RB9TY1yVE.l9zPU6B/5EJVkrAJxfpBb3juMcqzmBy', 'nkosin361@gmail.com', '0820756920', 'xxxtentacion-bw-press-photo-2018-billboard-1548.jpg', '::1', '2066849502', 'customer'),
(20, 'Nutty2', 'nkosin363@gmail.com', '$2y$10$UKKfbyFQxbVepuMkZBccJORXq66Gn1LmNIxiKLKPhFfy5jWvn3.Kq', 'Nathi', '0820756920', 'audi_r8_v10_2019_4k_2-3840x2160.jpg', '::1', '2058324913', 'customer'),
(21, 'tshepho', 'tshephomokadi2@gmail.com', '$2y$10$g.LuVVWTVR7v/VLr9nKfMeXR/3lDaQGfeE2CyUBIloV8d9UfJ81eG', 'Exterminator', '0794833548', 'Crop800x600 (25).jpg', '::1', '1107680211', ''),
(22, 'Ntsiky', 'khozanonsikelelo3@gmail.com', '$2y$10$pMGRXuezfh.gN94uINb5cuZmbsBJmfFkx8NbHyfekgyJPL67AYWaq', 'tshephomokadi2@gmail.com', '0790768723', 'Crop800x600 (15).jpg', '::1', '1895986824', ''),
(23, 'Xhean', 'godwinzhenjeni@gmail.com', '$2y$10$orzAdZLTNdkeh7ZuxsT65.mYXpCpT31OFtoJxADnhVuD2RJoScdIC', 'Xhean', '0623205568', 'Crop800x600.jpg', '::1', '1453272090', ''),
(24, 'tlou', 'tloutlouzee@gmail.com', '$2y$10$57StLhXM84ILHIOq4oTo0OuBWyB44pbTXnBfdaOF9Yeek7pKQCpWu', 'tlou', '0813174058', 'xxxtentacion-bw-press-photo-2018-billboard-1548.jpg', '::1', '112479681', ''),
(25, 'Stanley', 'stanleyseema43@gmail.com', '$2y$10$fy5fzS.aHAy.JhgqQyfvMerucXBi1vx8yumTBmqOIyWsYUJFR0cCW', 'Stanlee', '0678469175', 'Coupe.png', '::1', '491905065', ''),
(26, 'thapelo', 'tshephomkadi1@gmail.com', '$2y$10$9auUM7PgYAnE9TsR3P3cHurfmPnz/sB9o0EPd.3.uQ1FzTViZvjoi', 'T pain', '0635600537', 'Nissan-logo.png', '::1', '1550937722', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_addresses`
--

CREATE TABLE `customers_addresses` (
  `addresse_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_addresses`
--

INSERT INTO `customers_addresses` (`addresse_id`, `customer_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(3, 6, 'Saad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul, Nasir Gharbi Rabwah', 'Chenab Nagar Rabwah', 'Sindth', 'Lahore', '54600', 'Saad Shipping', 'Ahmed Shipping', '166', 'House#2/10,Halqa Iqbal,Darul Shipping', 'Nasir Gharbi Rabwah', 'Kpk', 'Pashwar', '54000'),
(4, 2, 'Saad', 'Ahmed', '166', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '54000', 'Saad Brock Shipping', 'Ahmed', '166', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '54000'),
(5, 7, 'Raheed', 'Khan', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Sindth', 'Karachi', '12763', 'Saad', 'Ahmed', '230', 'House #2/10 , Halqa Iqbal', 'Darul Nasir Gharbi Rabwah update', 'Punjab state', 'Lahore city', '54600'),
(6, 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 14, 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600', 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600'),
(11, 15, 'Saad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul, Nasir Gharbi Rabwah', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '59400', 'Mohammad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Chenab Nagar Rabwah', '54900'),
(12, 10, 'Saad', 'Ahmed', '229', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Sindth', 'Karachi', '54600', 'Mohammad', 'Ahmed', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Lahore', '59460'),
(13, 16, 'Saad', 'Ahmed', '166', 'Saeed Park Lahore, House #2/10, Mohalla Fatima Jinah', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54000', '', '', '', '', '', '', '', ''),
(14, 17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 18, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632'),
(16, 19, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', '', '', '', '', '', '', '', ''),
(17, 20, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', '', '', '', '', '', '', '', ''),
(18, 21, 'Tshepho', 'Mokadi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', '', '', '', '', '', '', '', ''),
(19, 22, 'Ntsiki', 'khoza', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', '', '', '', '', '', '', '', ''),
(20, 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 24, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 26, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 27, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers_history`
--

CREATE TABLE `customers_history` (
  `history_id` int(10) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers_history`
--

INSERT INTO `customers_history` (`history_id`, `ip_address`, `customer_id`, `product_id`) VALUES
(296, '::1', 2, 18),
(336, '::1', 18, 18),
(337, '::1', 18, 39),
(401, '::1', 18, 51),
(406, '::1', 21, 52),
(419, '::1', 22, 51),
(437, '::1', 0, 51),
(438, '::1', 0, 52),
(443, '::1', 0, 53);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `download_title` text NOT NULL,
  `download_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `vendor_id`, `product_id`, `variation_id`, `download_title`, `download_file`) VALUES
(2, '6', 17, 489, 'Download Photoshop CC 2018 For Windows 7,8,10', 'Photoshop CC 2018 Windows 7,8,10.txt'),
(4, '', 16, 481, 'Corel VideoStudio Ultimate X10 (Os: Windows , Edition: Ultimate)', 'Corel VideoStudio Ultimate X10.txt'),
(5, '', 18, 0, 'Digital Premium Softwares Dowload', 'Digital Premium Softwares Dowload.txt'),
(10, '6', 17, 488, 'Download Photoshop Cc 2018 For MacOs', 'Photoshop Cc 2018 MacOs.txt'),
(13, '', 16, 486, 'Corel VideoStudio Ultimate X10 ( Os: Mac-Os , Edition: Ultra )', 'Corel VideoStudio ( Os Mac-Os , Edition Ultra ).txt'),
(14, '6', 17, 491, 'Download Adobe Photoshop CC 2018 For Linux Os', 'Adobe Photoshop CC 2018 Download linux Os.txt'),
(15, '6', 15, 0, 'Download Avast Internet Security 2018 1 Year License', 'Avast Internet Security.txt');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `enable_vendor` text NOT NULL,
  `new_product_status` text NOT NULL,
  `edited_product_status` text NOT NULL,
  `order_status_change` text NOT NULL,
  `order_status_for_withdraw` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `meta_author`, `meta_description`, `meta_keywords`, `enable_vendor`, `new_product_status`, `edited_product_status`, `order_status_change`, `order_status_for_withdraw`) VALUES
(1, 'Fast 6 Car rental Group', 'Nutty Nkosi', 'The project is about the Car Rental System which will allow customers to be able to rent cars via our website. The Car Rental System that weâ€™ve created allows the user to fill in all the information needed such as Personal Details, when the customer will fetch the car, the type of car the customer wants to rent, when the customer will return the car and the type of payment the customer will want to use. ', 'fast 6, car rental, bookings', '', 'active', 'no', 'no', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `hide_admin_orders`
--

CREATE TABLE `hide_admin_orders` (
  `hide_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hide_admin_orders`
--

INSERT INTO `hide_admin_orders` (`hide_id`, `admin_id`, `order_id`) VALUES
(1, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 51, 'Audi', 'audi-logo.jpg'),
(2, 52, 'BMW', 'BMW-logo.png'),
(3, 53, 'Nissan', 'Nissan-logo.png'),
(4, 4, 'Icon-4', 'icon-4.jpg'),
(5, 3, 'dummy', 'icon image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Audi', 'yes', 'audi-logo.jpg'),
(3, 'BMW', 'no', 'BMW-logo.png'),
(4, 'Nissan', 'no', 'Nissan-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` text NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `order_note` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `payment_method`, `order_date`, `order_total`, `order_note`, `order_status`) VALUES
(1, 14, 1279072311, '', '44.0', 'pay offline', 'January 07, 2019 12:33', '7114.0', '', 'completed'),
(2, 18, 628410152, '', '0.0', 'pay offline', 'October 24, 2019 03:08', '2900.0', 'Nice System', 'pending'),
(3, 19, 1062432252, '', '0.0', 'stripe', 'November 05, 2019 03:24', '7000.0', '', 'processing'),
(4, 20, 931832777, '', '0.0', 'stripe', 'November 05, 2019 04:54', '2200.0', 'Testing 123', 'processing'),
(5, 18, 452534410, '', '0.0', 'pay offline', 'November 05, 2019 05:21', '70.0', '', 'pending'),
(6, 18, 227711958, '', '0.0', 'pay offline', 'November 06, 2019 01:37', '860.0', 'Testing 123', 'pending'),
(7, 21, 2003102856, '', '0.0', 'stripe', 'November 07, 2019 12:49', '5440.0', '', 'processing'),
(8, 22, 2027831595, '', '0.0', 'pay offline', 'November 07, 2019 02:01', '250.0', '', 'pending'),
(9, 21, 337829340, '', '0.0', 'paypal', 'November 07, 2019 10:46', '0.0', '', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `orders_addresses`
--

CREATE TABLE `orders_addresses` (
  `addresse_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `billing_first_name` text NOT NULL,
  `billing_last_name` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address_1` text NOT NULL,
  `billing_address_2` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_postcode` text NOT NULL,
  `is_shipping_address` text NOT NULL,
  `shipping_first_name` text NOT NULL,
  `shipping_last_name` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address_1` text NOT NULL,
  `shipping_address_2` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_postcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_addresses`
--

INSERT INTO `orders_addresses` (`addresse_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_country`, `billing_address_1`, `billing_address_2`, `billing_state`, `billing_city`, `billing_postcode`, `is_shipping_address`, `shipping_first_name`, `shipping_last_name`, `shipping_country`, `shipping_address_1`, `shipping_address_2`, `shipping_state`, `shipping_city`, `shipping_postcode`) VALUES
(1, 1, 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600', 'no', 'Mohammad', 'Ahmed', '166', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54600'),
(2, 2, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', ''),
(3, 3, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', ''),
(4, 4, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', ''),
(5, 5, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'none', '', '', '', '', '', '', '', ''),
(6, 6, 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'no', 'Nutty', 'Nkosi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632'),
(7, 7, 'Tshepho', 'Mokadi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', ''),
(8, 8, 'Ntsiki', 'khoza', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', ''),
(9, 9, 'Tshepho', 'Mokadi', '201', '4616 Birch Acres uMsimbith street', '4617 Birch Acres uMsimbith street', 'Gauteng', 'Kempton Park', '1632', 'yes', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `item_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`item_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(1, 1, 50, '70.0', 1),
(2, 1, 46, '1100.0', 1),
(3, 1, 40, '5900.0', 1),
(4, 2, 39, '2900.0', 1),
(5, 3, 46, '1100.0', 1),
(6, 3, 40, '5900.0', 1),
(7, 4, 46, '1100.0', 2),
(8, 5, 18, '70.0', 1),
(9, 6, 51, '860.0', 1),
(10, 7, 52, '5440.0', 1),
(11, 8, 51, '250.0', 1),
(12, 9, 53, '150.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items_meta`
--

CREATE TABLE `orders_items_meta` (
  `meta_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items_meta`
--

INSERT INTO `orders_items_meta` (`meta_id`, `order_id`, `item_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 1, 50, 'size', 'Medium'),
(2, 1, 1, 50, 'color', 'Blue'),
(3, 1, 1, 50, 'variation_id', '#586'),
(4, 1, 2, 46, 'processor', 'i5 7th-generation'),
(5, 1, 2, 46, 'memory', '8 GB'),
(6, 1, 2, 46, 'storage', '512 GB SSD'),
(7, 1, 2, 46, 'variation_id', '#494'),
(8, 1, 3, 40, 'cpu', 'i9'),
(9, 1, 3, 40, 'ram', '16gb'),
(10, 1, 3, 40, 'storage', '2TB SSD'),
(11, 1, 3, 40, 'variation_id', '#360'),
(12, 2, 4, 39, 'memory', '12GB DDR4'),
(13, 2, 4, 39, 'cpu', 'Core i7-7700HQ'),
(14, 2, 4, 39, 'variation_id', '#344'),
(15, 3, 5, 46, 'processor', 'i5 7th-generation'),
(16, 3, 5, 46, 'memory', '8 GB'),
(17, 3, 5, 46, 'storage', '512 GB SSD'),
(18, 3, 5, 46, 'variation_id', '#494'),
(19, 3, 6, 40, 'cpu', 'i9'),
(20, 3, 6, 40, 'ram', '16gb'),
(21, 3, 6, 40, 'storage', '2TB SSD'),
(22, 3, 6, 40, 'variation_id', '#360'),
(23, 4, 7, 46, 'processor', 'i5 7th-generation'),
(24, 4, 7, 46, 'memory', '8 GB'),
(25, 4, 7, 46, 'storage', '512 GB SSD'),
(26, 4, 7, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `orders_notes`
--

CREATE TABLE `orders_notes` (
  `note_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `sub_order_id` text NOT NULL,
  `item_id` int(10) NOT NULL,
  `note_content` text NOT NULL,
  `note_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_notes`
--

INSERT INTO `orders_notes` (`note_id`, `order_id`, `sub_order_id`, `item_id`, `note_content`, `note_date`) VALUES
(1, 1, '', 1, 'stock reduced from 3 to 2.', 'January 07, 2019 12:33'),
(2, 1, '', 2, 'stock reduced from 56 to 55.', 'January 07, 2019 12:33'),
(3, 1, '', 3, 'stock reduced from 100 to 99.', 'January 07, 2019 12:33'),
(4, 1, '3', 0, '', 'January 08, 2019 03:00'),
(5, 2, '', 4, 'stock reduced from 0 to -1.', 'October 24, 2019 03:08'),
(6, 3, '', 5, 'stock reduced from 55 to 54.', 'November 05, 2019 03:24'),
(7, 3, '', 6, 'stock reduced from 99 to 98.', 'November 05, 2019 03:24'),
(8, 4, '', 7, 'stock reduced from 54 to 52.', 'November 05, 2019 04:54'),
(9, 5, '', 8, 'stock reduced from 2 to 1.', 'November 05, 2019 05:21'),
(10, 6, '', 9, 'stock reduced from 0 to -1.', 'November 06, 2019 01:37'),
(11, 7, '', 10, 'stock reduced from 1 to 0.', 'November 07, 2019 12:49'),
(12, 8, '', 11, 'stock reduced from 0 to -1.', 'November 07, 2019 02:01'),
(13, 9, '', 12, 'stock reduced from 0 to -1.', 'November 07, 2019 10:46');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `minimum_withdraw_limit` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `enable_paypal` text NOT NULL,
  `paypal_email` text NOT NULL,
  `paypal_sandbox` text NOT NULL,
  `paypal_currency_code` text NOT NULL,
  `paypal_app_client_id` text NOT NULL,
  `paypal_app_client_secret` text NOT NULL,
  `enable_stripe` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `stripe_publishable_key` text NOT NULL,
  `stripe_currency_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `commission_percentage`, `minimum_withdraw_limit`, `days_before_withdraw`, `enable_paypal`, `paypal_email`, `paypal_sandbox`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_currency_code`) VALUES
(1, 10, 10, 2, 'yes', 'sad.ahmed22224@gmail.com', 'on', 'USD', 'AQzJGGDi4KZrbX318v6yXzSVQRLesCslKVzNKuGkA1UMAHwBArHr0onrVEZtSAtOi_LbunG2ymrmd45_', 'EFTT61XQPRNeUbai0KMcEwyvRBEqwBUv3z2mgPq-zXjgVmpbMfJNVHfLSY_CBXdIH3G3M5rzuPvme4N_', 'yes', 'sk_test_RtRMOCdX6IIK2f9Q94CilE5k', 'pk_test_NcOLIMZPgVJid1099xnjs1Ka', 'CAD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_seo_desc` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `product_type` text NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_views` int(10) NOT NULL,
  `product_vendor_status` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `vendor_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_seo_desc`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `product_type`, `product_weight`, `product_views`, `product_vendor_status`, `status`) VALUES
(51, 'admin_2', 7, 4, 2, '2019-11-07 12:26:30', 'Audi , Audi S4', 'Most Affordable Audi S4', 'product-audi-s4', 'Crop800x600 (11).jpg', 'Crop800x600 (18).jpg', 'Crop800x600 (15).jpg', 250, 0, '<p><span style=\"color: #555555; font-family: Lato, sans-serif; font-size: 16px;\">The S models\' formula for success continues: Commanding quattro performance, understated design, and the latest technology in terms of drivetrain, chassis, and infotainment. The centrepiece is the new 3.0 TFSI engine, which enables the S4 Sedan to sprint in 4.7 seconds from 0 to 100 km/h. It continues up to a maximum speed of 250 km/h. Inspiring performance, distinguished with the S characteristic of such quality: the Audi S4 Sedan.</span></p>', '<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">Air Conditioner</span></p>\r\n<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">AntiLock Braking System</span></p>\r\n<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">Power Steering</span></p>\r\n<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">Power Windows</span></p>\r\n<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">CD Player</span></p>\r\n<p><span style=\"color: #111111; font-family: Lato, sans-serif; font-size: 16px;\">Leather Seats</span></p>', 'https://www.youtube.com/watch?v=ADCUUm6WevQ', 'audi, s4', 'Audi', 'physical_product', '1750.0', 10, 'active', 'product'),
(52, 'admin_2', 4, 4, 3, '2019-11-07 12:25:54', 'BMW X5 M', 'BMW m5', 'vehicle-bmw-m5', 'Crop800x600 (33).jpg', 'Crop800x600 (34).jpg', 'Crop800x600 (35).jpg', 5440, 0, '<p style=\"border: 0px; outline: 0px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; margin: 0px 0px 14px; padding: 0px; line-height: 18px; color: #333333;\">The SUVs are powered by the familar 4.4-litre twin-turbocharged V8 engine producing 441kW and 750Nm in \'normal\' form and 460kW in \'Competition\' specification.&nbsp;</p>\r\n<p style=\"border: 0px; outline: 0px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; margin: 0px 0px 14px; padding: 0px; line-height: 18px; color: #333333;\">The high-revving engine sees outputs raised by 18kW and 37kW (Competition models) over its predecessors.&nbsp;</p>', '<ul class=\"i8Z77e\" style=\"margin: 0px; padding: 0px; border: 0px; color: #222222; font-family: arial, sans-serif; font-size: 16px;\">\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">performance. ACCELERATION 0&ndash;60 mph AUTOMATIC (sec) 4.0. 155.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">fuel consumption. AUTOMATIC COMBINED (mpg) 14 / 19. 22.4.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">wheels &amp; tires. TIRE TYPE. 21 x 10.0 front, 21 x 11.5 rear. 285/35 front, 325/30 rear.</li>\r\n</ul>', '<iframe width=\"711\" height=\"400\" src=\"https://www.youtube.com/embed/ow4CeB6PK1E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'bmw, m5', 'BMW', 'physical_product', '2386.0', 6, 'active', 'product'),
(53, 'admin_2', 4, 4, 4, '2019-11-08 08:12:24', 'Nissan QashQai', 'The Nissan Qashqai (/ËˆkÃ¦ÊƒkaÉª/; Japanese: æ—¥ç”£ãƒ»ã‚«ã‚·ãƒ¥ã‚«ã‚¤, romanized: Nissan Kashukai) is a compact crossover SUV produced by the Japanese car manufacturer ', 'vehicle-nissan-qasqai', '60QS590990-1.jpg', '60QS590990-2.jpg', '60QS590990-7.jpg', 150, 0, '<p><span style=\"color: #222222; font-family: sans-serif;\">The original Qashqai replaced the off-road capable&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Body-on-frame\" href=\"https://en.wikipedia.org/wiki/Body-on-frame\">body-on-frame</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;</span><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Nissan Mistral\" href=\"https://en.wikipedia.org/wiki/Nissan_Mistral\">Mistral/Terrano II</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;as Nissan\'s SUV offering, and its P32L automobile platform will be also used by other forthcoming Nissan crossover SUVs. Nissan named the Qashqai after the&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Qashqai people\" href=\"https://en.wikipedia.org/wiki/Qashqai_people\">Qashqai people</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;living in mountainous Central and Southwestern&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Iran\" href=\"https://en.wikipedia.org/wiki/Iran\">Iran</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;(</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Isfahan Province\" href=\"https://en.wikipedia.org/wiki/Isfahan_Province\">Isfahan</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;and&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Fars Province\" href=\"https://en.wikipedia.org/wiki/Fars_Province\">Fars</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;Provinces).</span><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: #222222; font-family: sans-serif;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Nissan_Qashqai#cite_note-1\">[1]</a></sup><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;Qashqai means \"A horse with a white forehead\" based on a translation by&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Vasily Bartold\" href=\"https://en.wikipedia.org/wiki/Vasily_Bartold\">Vasily Bartold</a></p>', '<ul class=\"i8Z77e\" style=\"margin: 0px; padding: 0px; border: 0px; color: #222222; font-family: arial, sans-serif; font-size: 16px;\">\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Airbags.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Seat belt reminders.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Anti-lock braking system (ABS)</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Electronic brake-force distribution (EBD)</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Brake Assist System (BAS)</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Hill Start Assist (HSA)</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Intelligent Around View Monitor.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; border: 0px; list-style-type: disc;\">Moving Object Detection.</li>\r\n</ul>', '<iframe width=\"711\" height=\"400\" src=\"https://www.youtube.com/embed/rIAyE_adOx8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'nissan, qashqai', 'Nissan', 'physical_product', '1365.0', 4, 'active', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `products_stock`
--

CREATE TABLE `products_stock` (
  `stock_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `stock_status` text NOT NULL,
  `enable_stock` text NOT NULL,
  `stock_quantity` text NOT NULL,
  `allow_backorders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_stock`
--

INSERT INTO `products_stock` (`stock_id`, `product_id`, `variation_id`, `stock_status`, `enable_stock`, `stock_quantity`, `allow_backorders`) VALUES
(16, 35, 226, 'instock', 'yes', '3', 'no'),
(17, 35, 225, 'instock', 'yes', '3', 'no'),
(18, 35, 224, 'instock', 'yes', '7', 'no'),
(19, 35, 223, 'instock', 'no', '0', 'no'),
(20, 35, 222, 'instock', 'no', '0', 'no'),
(21, 35, 221, 'instock', 'no', '0', 'no'),
(22, 35, 220, 'instock', 'no', '0', 'no'),
(23, 35, 219, 'instock', 'no', '0', 'no'),
(24, 35, 218, 'instock', 'no', '0', 'no'),
(25, 35, 217, 'instock', 'no', '0', 'no'),
(26, 35, 216, 'instock', 'no', '0', 'no'),
(27, 35, 215, 'instock', 'no', '0', 'no'),
(28, 35, 214, 'instock', 'no', '0', 'no'),
(29, 35, 213, 'instock', 'no', '0', 'no'),
(30, 35, 212, 'instock', 'no', '0', 'no'),
(31, 35, 211, 'instock', 'no', '0', 'no'),
(32, 35, 210, 'instock', 'no', '0', 'no'),
(33, 35, 209, 'instock', 'no', '0', 'no'),
(35, 18, 0, 'instock', 'yes', '1', 'no'),
(36, 11, 0, 'instock', 'yes', '17', 'no'),
(37, 39, 345, 'instock', 'yes', '6', 'no'),
(38, 39, 344, 'onbackorder', 'yes', '-1', 'yes'),
(39, 39, 343, 'outofstock', 'yes', '0', 'no'),
(40, 39, 342, 'outofstock', 'yes', '0', 'no'),
(207, 51, 607, 'instock', 'no', '0', 'no'),
(208, 51, 606, 'instock', 'no', '0', 'no'),
(209, 51, 605, 'instock', 'no', '0', 'no'),
(210, 51, 604, 'instock', 'no', '0', 'no'),
(211, 51, 603, 'instock', 'no', '0', 'no'),
(212, 51, 608, 'instock', 'no', '0', 'no'),
(213, 51, 0, 'instock', 'no', '0', 'no'),
(214, 51, 0, 'instock', 'no', '0', 'no'),
(215, 52, 0, 'outofstock', 'yes', '0', 'no'),
(216, 53, 0, 'instock', 'no', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `attribute_name` text NOT NULL,
  `attribute_values` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`attribute_id`, `product_id`, `attribute_name`, `attribute_values`) VALUES
(68, 49, 'Memory', '8 GB|16 GB|32 GB|64 GB'),
(69, 49, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(70, 49, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD '),
(75, 35, 'Size', 'Small|Medium|Large|X-Large|XX-Lagre|3X-Large'),
(76, 35, 'Color', 'Red|Blue|Aqua Blue'),
(80, 39, 'Memory', '16GB DDR4|12GB DDR4'),
(81, 39, 'Cpu', 'Core i7-7700HQ|Core i5-7700HQ'),
(90, 0, '', ''),
(110, 51, 'Memory', '4 GB|8 GB|12 GB|16 GB|32 GB'),
(112, 51, 'Processor', 'i3 7th-generation|i5 7th-generation|i7 7th-generation'),
(113, 51, 'Storage', '128 GB SSD|256 GB SSD|512GB SSD|1TB SSD|2TB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'SUV', 'yes', 'suv.jpg'),
(5, 'Sedan', 'no', 'Sedan.jpg'),
(6, 'Hatchback', 'no', 'Hatchback.jpg'),
(7, 'Coupe', 'no', 'Coupe.png'),
(8, 'Convertible', 'no', 'Convertible.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `variation_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(10) NOT NULL,
  `product_weight` decimal(10,1) NOT NULL,
  `product_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`variation_id`, `product_id`, `product_img1`, `product_price`, `product_psp_price`, `product_weight`, `product_type`) VALUES
(100, 49, '', 0, 0, '0.0', 'physical_product'),
(102, 49, '', 0, 0, '0.0', 'physical_product'),
(110, 49, '', 0, 0, '0.0', 'physical_product'),
(111, 49, '', 0, 0, '0.0', 'physical_product'),
(115, 49, '', 0, 0, '0.0', 'physical_product'),
(117, 49, '', 0, 0, '0.0', 'default_attributes_variation'),
(118, 49, 'acbakery.jpg', 1890, 1790, '3.4', 'physical_product'),
(207, 35, '', 0, 0, '0.0', 'default_attributes_variation'),
(209, 35, '', 50, 0, '0.0', 'physical_product'),
(210, 35, '', 60, 0, '0.0', 'physical_product'),
(211, 35, '', 70, 0, '0.0', 'physical_product'),
(212, 35, '', 80, 0, '0.0', 'digital_product'),
(213, 35, '', 90, 0, '0.0', 'physical_product'),
(214, 35, '', 100, 0, '0.0', 'physical_product'),
(215, 35, '', 50, 0, '0.0', 'digital_product'),
(216, 35, '', 60, 0, '0.0', 'physical_product'),
(217, 35, '', 70, 0, '0.0', 'physical_product'),
(218, 35, '', 80, 0, '0.0', 'physical_product'),
(219, 35, '', 90, 0, '0.0', 'physical_product'),
(220, 35, '', 100, 0, '0.0', 'physical_product'),
(221, 35, '', 50, 0, '0.0', 'physical_product'),
(222, 35, '', 60, 0, '2.3', 'physical_product'),
(223, 35, '', 70, 0, '0.0', 'physical_product'),
(224, 35, '', 80, 0, '2.3', 'physical_product'),
(225, 35, '', 90, 0, '0.0', 'physical_product'),
(226, 35, '', 100, 0, '0.0', 'physical_product'),
(341, 39, '', 0, 0, '0.0', 'default_attributes_variation'),
(342, 39, '', 3200, 0, '2.4', 'physical_product'),
(343, 39, '', 3000, 0, '0.0', 'physical_product'),
(344, 39, '', 2900, 0, '0.0', 'physical_product'),
(345, 39, '', 2720, 0, '0.0', 'physical_product'),
(588, 51, '', 0, 0, '0.0', 'default_attributes_variation'),
(603, 51, '', 0, 0, '0.0', 'physical_product'),
(604, 51, '', 0, 0, '0.0', 'physical_product'),
(605, 51, '', 0, 0, '0.0', 'physical_product'),
(606, 51, '', 0, 0, '0.0', 'physical_product'),
(607, 51, '', 0, 0, '0.0', 'digital_product'),
(608, 51, '', 0, 0, '0.0', 'physical_product'),
(609, 51, '', 0, 0, '0.0', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_title` text NOT NULL,
  `review_rating` int(10) NOT NULL,
  `review_content` text NOT NULL,
  `review_date` text NOT NULL,
  `review_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_title`, `review_rating`, `review_content`, `review_date`, `review_status`) VALUES
(1, 2, 36, 'Excellent laptop', 5, 'have found this product that does exactly that but it seemingly works only with simple works (snippet below).', 'November 28, 2017', 'active'),
(2, 3, 36, 'Seems to be a great machine but exercise caution', 4, 'I\'ve had it for around a month and everything is great. ', 'April 12, 2018', 'active'),
(3, 6, 36, 'Great laptop superb screen and nice build', 3, 'Like many other reviewers complaining about quality, I am adding my complaints. I had this laptop for almost 4 months now. Even though it has a GTX 1050, it BARELY runs a medium-graphics game like Path of Exile. It hangs and stutters with 20 tabs open in Chrome. I have windows 10 running with all recent updates and nvidia graphics updates, yet I cant run Path of Exile or other 2d games from Steam smoothly. Terrible performance, and its fans boosts to maximum noise levels at the slightest loads (e.g. 2 word processors open). Furthermore, the heat sinks are inefficient, it overheats REAL FAST just 5 minutes into any game or 20 minutes surfing the net. Terrible purchase, I regret going with Dell, never again.', 'April 15, 2018', 'active'),
(4, 7, 36, 'Great laptop at first sight, terrible quality assurance', 2, 'God for web surfing and thats it. wont handle games or high end graphics software. Id be weary using it for HD movies as well. Not worth the money', 'April 19, 2018', 'active'),
(5, 8, 36, 'I give up, Dell', 1, 'Awful! First laptop had color shift from right to left. Right side looked greenish and left side reddish. The replacement one had 2 dead pixels. If the computer didnt have those issues, it would have been amazing for the price. Meh keyboard too. Do not buy if you type a lot!', 'April 20, 2018', 'active'),
(6, 9, 36, 'Everything has been great so far', 5, 'I bought mine through amazon warehouse in like new condition. I\'ve had it for around a month and everything is great. The packaging that it came in was awful, but everything else was as described. It didn\'t have any scratches and it runs great. The graphics card is pretty good so I can play games that I couldn\'t before. I wouldn\'t pay the full price ($1500 at time of purchase) but I paid $1000 and it is definitely worth it.', 'April 21, 2018', 'active'),
(7, 10, 36, '5 Stars Best Windows Laptop You Can Buy!', 5, 'I started using this laptop few weeks back. Great experience altogether. I am extremely happy with Dell XPS 15. It\'s quite, amazing screen clarity, 1tb SSD, very responsive touch screen and finger print reader.', 'April 21, 2018', 'active'),
(8, 11, 36, 'Great experience altogether', 5, 'GREAT laptop. Although the left speaker came damaged.', 'April 22, 2018', 'active'),
(9, 12, 36, 'Five Stars', 5, 'This laptop has performed amazing for me. Would recommend to everyone. Just a tad bit pricy, but it is worth it for the quality.', 'April 23, 2018', 'active'),
(10, 13, 36, 'Well built, but failed', 3, 'So far so good. It\'s saddening that the rumors about the WiFi card are true. The WiFi is in and out, and this device struggles. I bought a replacement WiFi card but when trying to replace it the computer doesn\'t recognize the hardware even though I\'m sure I brought a compatible card and installed the proper drivers. When I tried to re insert the original WiFi card, the computer wasn\'t recognizing that either. I kept getting this error message when trying to re-install the driver that \"There is no compatible hardware.\" So right now I\'m without wife and the worst part about it is after taking off the bottom plate so many times, one of the screws became stripped so there\'s almost no way of opening it back up. I\'m trying everything in my power to not have to send it to dell because I\'d imagine that i\'d be without a PC for maybe a week and a half, maybe 2. and I really don\'t want to do that. Ill probably try geek squad. Anyhow I know there is nothing else at this price offering these specs but, it would be nice if everything was working great straight out of the box. No one should be cracking open a brand new PC.', 'April 24, 2018', 'active'),
(12, 15, 36, 'A smooth experience with an excellent machine', 4, 'I really thought this was going to be a performer but I\'m extremely disappointed. I\'m using it to run PS CC and it\'s slower than my 7 year old gateway desktop. I use a wacom tablet to retouch with and using the healing brush is a pain. When you hold down the alt key and tap the tablet to set the point from which you want to start working it doesn\'t set the point at least 75% of the time. And file management, maybe I don\'t know how to do it but it takes forever to open folders that contain large psd, or raw images. I bought this because my windows 7 desktop with its beautiful 22\' color calibrated display no longer connects to the internet. However, after a few minutes of working on this new machine I get frustrated and go back to the old desktop using this supposedly high performance machine only to transfer files to my smugmug account. This POS is going right back.', 'April 29, 2018', 'active'),
(13, 15, 36, 'Smart and Elegant', 5, 'Finally a Smart Sized Smart Laptop and very good performance', 'May 03, 2018', 'spam'),
(14, 15, 35, 'Satisfied', 5, 'Good Shirt Excellent Product', 'May 04, 2018', 'active'),
(15, 15, 8, 'Very bad quality', 4, 'I waste my $100 dollars on it. please don\'t buy it', 'May 04, 2018', 'active'),
(16, 15, 34, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(17, 7, 34, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(18, 9, 34, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(19, 11, 34, 'Very comfortable', 4, 'I am glad to see the shirt its very good stuff and excelent colours', 'May 04, 2018', 'trash'),
(30, 2, 46, 'Excellent laptop', 5, 'have found this product that does exactly that but it seemingly works only with simple works (snippet below).', 'November 28, 2017', 'active'),
(31, 3, 46, 'Seems to be a great machine but exercise caution', 4, 'I\'ve had it for around a month and everything is great. ', 'April 12, 2018', 'active'),
(32, 16, 46, 'Great laptop superb screen and nice build', 3, 'Like many other reviewers complaining about quality, I am adding my complaints. I had this laptop for almost 4 months now. Even though it has a GTX 1050, it BARELY runs a medium-graphics game like Path of Exile. It hangs and stutters with 20 tabs open in Chrome. I have windows 10 running with all recent updates and nvidia graphics updates, yet I cant run Path of Exile or other 2d games from Steam smoothly. Terrible performance, and its fans boosts to maximum noise levels at the slightest loads (e.g. 2 word processors open). Furthermore, the heat sinks are inefficient, it overheats REAL FAST just 5 minutes into any game or 20 minutes surfing the net. Terrible purchase, I regret going with Dell, never again.', 'April 15, 2018', 'active'),
(33, 7, 46, 'Great laptop at first sight, terrible quality assurance', 2, 'God for web surfing and thats it. wont handle games or high end graphics software. Id be weary using it for HD movies as well. Not worth the money', 'April 19, 2018', 'active'),
(34, 8, 46, 'I give up, Dell', 1, 'Awful! First laptop had color shift from right to left. Right side looked greenish and left side reddish. The replacement one had 2 dead pixels. If the computer didnt have those issues, it would have been amazing for the price. Meh keyboard too. Do not buy if you type a lot!', 'April 20, 2018', 'active'),
(35, 9, 46, 'Everything has been great so far', 5, 'I bought mine through amazon warehouse in like new condition. I\'ve had it for around a month and everything is great. The packaging that it came in was awful, but everything else was as described. It didn\'t have any scratches and it runs great. The graphics card is pretty good so I can play games that I couldn\'t before. I wouldn\'t pay the full price ($1500 at time of purchase) but I paid $1000 and it is definitely worth it.', 'April 21, 2018', 'active'),
(36, 10, 46, 'Best Windows Laptop You Can Buy!', 5, 'I started using this laptop few weeks back. Great experience altogether. I am extremely happy with Dell XPS 15. It\'s quite, amazing screen clarity, 1tb SSD, very responsive touch screen and finger print reader.', 'April 21, 2018', 'active'),
(37, 11, 46, 'Great experience altogether', 5, 'GREAT laptop. Although the left speaker came damaged.', 'April 22, 2018', 'active'),
(39, 13, 46, 'Well built, but failed', 3, 'So far so good. It\'s saddening that the rumors about the WiFi card are true. The WiFi is in and out, and this device struggles. I bought a replacement WiFi card but when trying to replace it the computer doesn\'t recognize the hardware even though I\'m sure I brought a compatible card and installed the proper drivers. When I tried to re insert the original WiFi card, the computer wasn\'t recognizing that either. I kept getting this error message when trying to re-install the driver that \"There is no compatible hardware.\" So right now I\'m without wife and the worst part about it is after taking off the bottom plate so many times, one of the screws became stripped so there\'s almost no way of opening it back up. I\'m trying everything in my power to not have to send it to dell because I\'d imagine that i\'d be without a PC for maybe a week and a half, maybe 2. and I really don\'t want to do that. Ill probably try geek squad. Anyhow I know there is nothing else at this price offering these specs but, it would be nice if everything was working great straight out of the box. No one should be cracking open a brand new PC.', 'April 24, 2018', 'active'),
(40, 15, 46, 'A smooth experience with an excellent machine', 4, 'I really thought this was going to be a performer but I\'m extremely disappointed. I\'m using it to run PS CC and it\'s slower than my 7 year old gateway desktop. I use a wacom tablet to retouch with and using the healing brush is a pain. When you hold down the alt key and tap the tablet to set the point from which you want to start working it doesn\'t set the point at least 75% of the time. And file management, maybe I don\'t know how to do it but it takes forever to open folders that contain large psd, or raw images. I bought this because my windows 7 desktop with its beautiful 22\' color calibrated display no longer connects to the internet. However, after a few minutes of working on this new machine I get frustrated and go back to the old desktop using this supposedly high performance machine only to transfer files to my smugmug account. This POS is going right back.', 'April 29, 2018', 'active'),
(42, 15, 30, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(43, 7, 30, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(44, 9, 30, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(45, 15, 41, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(46, 7, 41, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(47, 15, 40, 'awesome macbook pro i ever seen', 4, 'i love this macbook laptop', 'May 04, 2018', 'active'),
(48, 7, 40, 'It\'s a Macbook Pro Maxed out from 2018', 5, 'Many of the negative reviews here are from people that either don\'t understand computers or bought during the short time the specs posted by amazon as to what people were buying were wrong. Amazon has now fixed that and what you see is now accurate.', 'May 04, 2018', 'active'),
(49, 9, 40, 'Wrong description / Still a good macbook pro', 5, 'Like others have noted, the specs in the product listing aren\'t all correct. It\'s a 2016 model, 3.3 GHz i7, 16 GB 2133 MHz LPDDR3 RAM, 512 GB SSD (but only registers ~500 GB - Mac has a funny way of calculating capacity), and Intel Iris 550 graphics with 1.5 GB mem. I\'ve only had it for a few days. So far so good.\r\n\r\nI was debating between this and the ASUS Zenbook Deluxe 3 (latest model). The ASUS specs are better, except for the display resolution. But Mac does have a better reputation of lasting longer. Hopefully paying for premium saves me some headaches in the long run.', 'May 04, 2018', 'active'),
(55, 18, 51, 'Very Nice', 4, 'Perfect, I didn\'t expect that', 'November 05, 2019', 'active'),
(56, 21, 52, 'Very Nice', 5, 'Car Work perfecly', 'November 07, 2019', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_meta`
--

CREATE TABLE `reviews_meta` (
  `meta_id` int(10) NOT NULL,
  `review_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_meta`
--

INSERT INTO `reviews_meta` (`meta_id`, `review_id`, `meta_key`, `meta_value`) VALUES
(4, 1, 'cpu', 'Core i5 7gen'),
(5, 1, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(6, 2, 'cpu', 'Core i7 7gen'),
(7, 2, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(8, 3, 'cpu', 'Core i5 7gen'),
(9, 3, 'capacity', '8 GB RAM / 256 GB SSD'),
(10, 4, 'cpu', 'Core i5 7gen'),
(11, 4, 'capacity', '16GB Ram / 512 GB SSD / Full HD'),
(12, 5, 'cpu', 'Core i7 7gen'),
(13, 5, 'capacity', '16 GB RAM / 1 TB SSD 4K'),
(14, 13, 'Cpu', 'Core i7 7gen'),
(15, 13, 'Capacity', '16GB Ram / 512 GB SSD / Full HD'),
(16, 14, 'Size', 'XX-Lagre'),
(17, 14, 'Color', 'Red'),
(18, 16, 'Memory', '16 GB'),
(19, 16, 'Processor', 'i5 7th-generation'),
(20, 16, 'Storage', '512GB SSD'),
(21, 17, 'memory', '8 GB'),
(22, 17, 'processor', 'i7 7th-generation'),
(23, 17, 'storage', '1TB SSD'),
(33, 19, 'color', 'Black'),
(34, 19, 'size', '36'),
(43, 18, 'variation_id', '332'),
(44, 18, 'memory', '4 GB'),
(45, 18, 'processor', 'i3 7th-generation'),
(46, 18, 'storage', '128 GB SSD'),
(47, 21, 'Os', 'Mac-Os'),
(48, 21, 'Edition', 'Ultra'),
(49, 21, 'Variation_id', '#486'),
(50, 22, 'Os', 'Mac-Os'),
(51, 22, 'Edition', 'Ultra'),
(52, 22, 'Variation_id', '#486'),
(62, 26, 'Os', 'Mac-Os'),
(63, 26, 'Edition', 'Ultra'),
(64, 26, 'Variation_id', '#486'),
(65, 27, 'Os', 'Mac-Os'),
(66, 27, 'Edition', 'Ultra'),
(67, 27, 'Variation_id', '#486'),
(68, 28, 'Os', 'Mac-Os'),
(69, 28, 'Edition', 'Ultra'),
(70, 28, 'Variation_id', '#486');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(4, 'Gift Package ', 'service-1.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(5, 'Love Surprisre', 'service-2.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(6, 'Wedding Package', 'service-3.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `shipping_type` int(10) NOT NULL,
  `shipping_zone` int(10) NOT NULL,
  `shipping_country` int(10) NOT NULL,
  `shipping_weight` decimal(10,1) NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_type`, `shipping_zone`, `shipping_country`, `shipping_weight`, `shipping_cost`) VALUES
(1, 4, 9, 0, '1.0', '3.0'),
(3, 4, 9, 0, '1.5', '4.5'),
(4, 4, 9, 0, '2.0', '6.0'),
(5, 4, 9, 0, '2.5', '7.5'),
(6, 4, 9, 0, '3.0', '9.0'),
(7, 4, 9, 0, '3.5', '10.5'),
(8, 4, 9, 0, '4.0', '12.0'),
(9, 4, 9, 0, '4.5', '13.5'),
(14, 4, 9, 0, '6.0', '18.0'),
(15, 4, 9, 0, '6.5', '19.5'),
(16, 4, 9, 0, '7.0', '21.0'),
(17, 4, 9, 0, '7.5', '22.5'),
(18, 4, 9, 0, '8.0', '24.0'),
(19, 4, 9, 0, '8.5', '25.5'),
(20, 4, 9, 0, '9.0', '27.0'),
(21, 4, 9, 0, '9.5', '28.5'),
(22, 4, 9, 0, '10.0', '30.0'),
(23, 4, 9, 0, '5.0', '15.0'),
(24, 4, 9, 0, '5.5', '16.5'),
(25, 3, 8, 0, '1.0', '4.0'),
(26, 3, 8, 0, '1.5', '6.0'),
(27, 3, 8, 0, '2.0', '8.0'),
(28, 3, 8, 0, '2.5', '10.0'),
(29, 3, 8, 0, '3.0', '12.0'),
(30, 3, 8, 0, '3.5', '14.0'),
(31, 3, 8, 0, '4.0', '16.0'),
(32, 3, 8, 0, '4.5', '18.0'),
(33, 3, 8, 0, '6.0', '24.0'),
(34, 3, 8, 0, '6.5', '26.0'),
(35, 3, 8, 0, '7.0', '28.0'),
(36, 3, 8, 0, '7.5', '30.0'),
(37, 3, 8, 0, '8.0', '32.0'),
(38, 3, 8, 0, '8.5', '34.0'),
(39, 3, 8, 0, '9.0', '36.0'),
(40, 3, 8, 0, '9.5', '38.0'),
(41, 3, 8, 0, '10.0', '40.0'),
(42, 1, 5, 0, '1.0', '5.0'),
(43, 1, 5, 0, '1.5', '7.5'),
(44, 1, 5, 0, '2.0', '10.0'),
(45, 1, 5, 0, '2.5', '12.5'),
(46, 1, 5, 0, '3.0', '15.0'),
(47, 1, 5, 0, '3.5', '17.5'),
(49, 1, 5, 0, '4.5', '22.5'),
(50, 1, 5, 0, '5.0', '25.0'),
(51, 1, 5, 0, '5.5', '27.5'),
(52, 1, 5, 0, '6.0', '30.0'),
(53, 1, 5, 0, '6.5', '32.5'),
(54, 1, 5, 0, '7.0', '35.0'),
(55, 1, 5, 0, '7.5', '37.5'),
(56, 1, 5, 0, '8.0', '40.0'),
(57, 1, 5, 0, '8.5', '42.5'),
(58, 1, 5, 0, '9.0', '45.0'),
(59, 1, 5, 0, '9.5', '47.5'),
(60, 1, 5, 0, '10.0', '50.0'),
(61, 7, 0, 230, '1.0', '5.0'),
(62, 7, 0, 230, '1.5', '7.5'),
(64, 7, 0, 230, '2.5', '12.5'),
(65, 7, 0, 230, '3.0', '15.0'),
(66, 7, 0, 230, '3.5', '17.5'),
(67, 7, 0, 230, '4.5', '22.5'),
(68, 7, 0, 230, '5.0', '25.0'),
(69, 7, 0, 230, '5.5', '27.5'),
(70, 7, 0, 230, '6.0', '30.0'),
(71, 7, 0, 230, '6.5', '32.5'),
(72, 7, 0, 230, '7.0', '35.0'),
(73, 7, 0, 230, '7.5', '37.5'),
(74, 7, 0, 230, '8.0', '40.0'),
(75, 7, 0, 230, '8.5', '42.5'),
(76, 7, 0, 230, '9.0', '45.0'),
(77, 7, 0, 230, '9.5', '47.5'),
(78, 7, 0, 230, '10.0', '50.0'),
(79, 7, 0, 230, '2.0', '10.0'),
(80, 6, 0, 230, '1.0', '10.0'),
(81, 6, 0, 230, '1.5', '15.0'),
(82, 6, 0, 230, '2.0', '20.0'),
(83, 6, 0, 230, '2.5', '25.0'),
(84, 6, 0, 230, '3.0', '30.0'),
(85, 6, 0, 230, '3.5', '35.0'),
(86, 6, 0, 230, '4.5', '45.0'),
(87, 6, 0, 230, '5.0', '50.0'),
(88, 6, 0, 230, '5.5', '55.0'),
(89, 6, 0, 230, '6.0', '60.0'),
(90, 6, 0, 230, '6.5', '65.0'),
(91, 6, 0, 230, '7.0', '70.0'),
(92, 6, 0, 230, '7.5', '75.0'),
(93, 6, 0, 230, '8.0', '80.0'),
(94, 6, 0, 230, '8.5', '85.0'),
(95, 6, 0, 230, '9.0', '90.0'),
(96, 6, 0, 230, '9.5', '95.0'),
(97, 6, 0, 230, '10.0', '100.0'),
(98, 1, 5, 0, '4.0', '20.0'),
(99, 6, 0, 230, '4.0', '40.0'),
(100, 7, 0, 230, '4.0', '20.0'),
(101, 5, 10, 0, '1.0', '2.0'),
(102, 5, 10, 0, '1.5', '3.0'),
(103, 5, 10, 0, '2.0', '4.0'),
(104, 5, 10, 0, '2.5', '5.0'),
(105, 5, 10, 0, '3.0', '6.0'),
(106, 5, 10, 0, '3.5', '7.0'),
(108, 5, 10, 0, '4.0', '8.0'),
(109, 5, 10, 0, '4.5', '9.0'),
(110, 5, 10, 0, '5.0', '10.0'),
(111, 5, 10, 0, '5.5', '11.0'),
(112, 5, 10, 0, '6.0', '12.0'),
(113, 5, 10, 0, '6.5', '13.0'),
(114, 5, 10, 0, '7.0', '14.0'),
(115, 5, 10, 0, '7.5', '15.0'),
(116, 5, 10, 0, '8.0', '16.0'),
(117, 5, 10, 0, '8.5', '17.0'),
(118, 5, 10, 0, '9.0', '18.0'),
(119, 5, 10, 0, '9.5', '19.0'),
(120, 5, 10, 0, '10.0', '20.0'),
(121, 3, 8, 0, '5.0', '20.0'),
(122, 3, 8, 0, '5.5', '22.0'),
(125, 8, 5, 0, '1.0', '10.0'),
(126, 8, 5, 0, '2.0', '20.0'),
(127, 8, 5, 0, '3.0', '30.0'),
(128, 8, 5, 0, '4.0', '40.0'),
(129, 8, 5, 0, '5.0', '50.0'),
(130, 8, 5, 0, '6.0', '60.0'),
(132, 8, 5, 0, '7.0', '70.0'),
(133, 8, 5, 0, '8.0', '80.0'),
(134, 8, 5, 0, '9.0', '90.0'),
(135, 8, 5, 0, '10.0', '100.0'),
(136, 9, 8, 0, '1.0', '10.0'),
(137, 9, 8, 0, '2.0', '20.0'),
(138, 9, 8, 0, '3.0', '30.0'),
(139, 9, 8, 0, '4.0', '40.0'),
(140, 9, 8, 0, '5.0', '50.0'),
(141, 9, 8, 0, '6.0', '60.0'),
(142, 9, 8, 0, '7.0', '70.0'),
(143, 9, 8, 0, '8.0', '80.0'),
(144, 9, 8, 0, '9.0', '90.0'),
(145, 9, 8, 0, '10.0', '100.0'),
(146, 10, 9, 0, '1.0', '10.0'),
(147, 10, 9, 0, '2.0', '20.0'),
(148, 10, 9, 0, '3.0', '30.0'),
(149, 10, 9, 0, '4.0', '40.0'),
(150, 10, 9, 0, '5.0', '50.0'),
(151, 10, 9, 0, '6.0', '60.0'),
(152, 10, 9, 0, '7.0', '70.0'),
(153, 10, 9, 0, '8.0', '80.0'),
(154, 10, 9, 0, '9.0', '90.0'),
(155, 10, 9, 0, '10.0', '100.0'),
(156, 11, 10, 0, '1.0', '10.0'),
(157, 11, 10, 0, '2.0', '20.0'),
(158, 11, 10, 0, '3.0', '30.0'),
(159, 11, 10, 0, '4.0', '40.0'),
(160, 11, 10, 0, '5.0', '50.0'),
(161, 11, 10, 0, '6.0', '60.0'),
(162, 11, 10, 0, '7.0', '70.0'),
(163, 11, 10, 0, '8.0', '80.0'),
(164, 11, 10, 0, '9.0', '90.0'),
(165, 11, 10, 0, '10.0', '100.0'),
(166, 9, 8, 0, '11.0', '110.0'),
(167, 9, 8, 0, '12.0', '120.0'),
(168, 16, 0, 229, '1.0', '10.0'),
(169, 16, 0, 229, '2.0', '20.0'),
(170, 13, 8, 0, '1.0', '5.0'),
(171, 13, 8, 0, '2.0', '10.0'),
(172, 3, 8, 0, '11.0', '45.0'),
(173, 17, 13, 0, '1.0', '5.0'),
(174, 17, 13, 0, '2.0', '10.0'),
(176, 18, 0, 230, '1.0', '5.0');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_type`
--

CREATE TABLE `shipping_type` (
  `type_id` int(11) NOT NULL,
  `vendor_id` text NOT NULL,
  `type_name` text NOT NULL,
  `type_order` int(11) NOT NULL,
  `type_default` varchar(255) NOT NULL,
  `type_local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_type`
--

INSERT INTO `shipping_type` (`type_id`, `vendor_id`, `type_name`, `type_order`, `type_default`, `type_local`) VALUES
(1, 'admin_2', 'Next Day (orders placed before 7pm)', 1, 'no', 'yes'),
(3, '6', ' Speedy 1-2 days', 4, 'no', 'yes'),
(4, '2', 'Standard 3-5 days', 5, 'no', 'yes'),
(5, '14', 'Economy 5-7 days', 6, 'no', 'yes'),
(6, '0', 'Express International', 3, 'yes', 'no'),
(7, '0', 'Standard International', 2, 'no', 'no'),
(8, 'admin_2', '(Karena) Sample Shipping Type', 7, 'no', 'yes'),
(9, '6', 'Standard 3-5 days', 3, 'yes', 'yes'),
(10, '2', '(Brock) Sample Shipping Type', 8, 'no', 'yes'),
(11, '14', '(Tahir Ahmed) Shipping Type', 10, 'no', 'yes'),
(12, '14', 'Tahir Ahmed Shipping Type', 9, 'yes', 'yes'),
(15, '6', 'Express International', 1, 'no', 'no'),
(16, '6', 'Standard International', 4, 'yes', 'no'),
(17, '6', 'Economy 5-7 days', 2, 'yes', 'yes'),
(18, '6', 'DHL Express International', 5, 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide Number 1', 'image-banner.jpg', 'http://localhost/updated_ecom_store/shop.php'),
(2, 'Slide Number 2', 'image-banner-2.jpg', 'http://localhost/updated_ecom_store/shop.php'),
(3, 'Slide Number 3', 'image-banner3.jpg', 'http://localhost/updated_ecom_store/shop.php'),
(7, 'Slide Number 4', 'image-banner4.jpg', 'http://localhost/updated_ecom_store/shop.php');

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE `store_settings` (
  `settings_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `store_cover_image` text NOT NULL,
  `store_profile_image` text NOT NULL,
  `store_name` text NOT NULL,
  `store_country` text NOT NULL,
  `store_address_1` text NOT NULL,
  `store_address_2` text NOT NULL,
  `store_state` text NOT NULL,
  `store_city` text NOT NULL,
  `store_postcode` text NOT NULL,
  `paypal_email` text NOT NULL,
  `phone_no` text NOT NULL,
  `store_email` text NOT NULL,
  `seo_title` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`settings_id`, `vendor_id`, `store_cover_image`, `store_profile_image`, `store_name`, `store_country`, `store_address_1`, `store_address_2`, `store_state`, `store_city`, `store_postcode`, `paypal_email`, `phone_no`, `store_email`, `seo_title`, `meta_author`, `meta_description`, `meta_keywords`) VALUES
(1, '6', 'cover-image.jpg', 'profile-image.jpg', 'Awesome Tech Store', '166', 'House#2/10,Halqa Iqbal,Darul', 'Nasir Gharbi Rabwah', 'Punjab', 'Chenab Nagar Rabwah', '35460', 'rasheed23@yahoo.com', '3334566931', 'yes', 'Awesome Tech Store', 'Saad Ahmed', 'Tech Products Store', 'apple,dell,hp'),
(2, 'admin_2', 'admin-cover-image.jpg', 'Kareena.jpg', 'Karena Kapoor Store', '229', 'Saeed Park Lahore', 'House #2/10, Mohalla Fatima Jinah', 'Punjab', 'Lahore', '54000', 'rasheed23@yahoo.com', '3331561951', 'no', '', '', '', ''),
(3, 'admin_10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `variations_meta`
--

CREATE TABLE `variations_meta` (
  `meta_id` int(10) NOT NULL,
  `variation_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variations_meta`
--

INSERT INTO `variations_meta` (`meta_id`, `variation_id`, `meta_key`, `meta_value`) VALUES
(69, 101, 'memory', '8 GB'),
(70, 101, 'processor', 'i5 7th-generation'),
(71, 101, 'storage', '1TB SSD'),
(72, 100, 'memory', '8 GB'),
(73, 100, 'processor', 'i3 7th-generation'),
(74, 100, 'storage', '256 GB SSD'),
(75, 102, 'memory', '8 GB'),
(76, 102, 'processor', 'i3 7th-generation'),
(77, 102, 'storage', '128 GB SSD'),
(93, 110, 'memory', '8 GB'),
(94, 110, 'processor', 'i5 7th-generation'),
(95, 110, 'storage', '256 GB SSD'),
(96, 111, 'memory', '8 GB'),
(97, 111, 'processor', 'i7 7th-generation'),
(98, 111, 'storage', '1TB SSD'),
(102, 115, 'memory', '16 GB'),
(103, 115, 'processor', 'i7 7th-generation'),
(104, 115, 'storage', '1TB SSD'),
(105, 116, 'memory', '8 GB'),
(106, 116, 'processor', 'i7 7th-generation'),
(107, 116, 'storage', '512GB SSD'),
(108, 117, 'memory', '8 GB'),
(109, 117, 'processor', 'i5 7th-generation'),
(110, 117, 'storage', '256 GB SSD'),
(111, 118, 'memory', '8 GB'),
(112, 118, 'processor', 'i7 7th-generation'),
(113, 118, 'storage', '256 GB SSD'),
(363, 207, 'size', 'X-Large'),
(364, 207, 'color', 'Aqua Blue'),
(365, 209, 'size', 'Small'),
(366, 209, 'color', 'Red'),
(367, 210, 'size', 'Medium'),
(368, 210, 'color', 'Red'),
(369, 211, 'size', 'Large'),
(370, 211, 'color', 'Red'),
(371, 212, 'size', 'X-Large'),
(372, 212, 'color', 'Red'),
(373, 213, 'size', 'XX-Lagre'),
(374, 213, 'color', 'Red'),
(375, 214, 'size', '3X-Large'),
(376, 214, 'color', 'Red'),
(377, 215, 'size', 'Small'),
(378, 215, 'color', 'Blue'),
(379, 216, 'size', 'Medium'),
(380, 216, 'color', 'Blue'),
(381, 217, 'size', 'Large'),
(382, 217, 'color', 'Blue'),
(383, 218, 'size', 'X-Large'),
(384, 218, 'color', 'Blue'),
(385, 219, 'size', 'XX-Lagre'),
(386, 219, 'color', 'Blue'),
(387, 220, 'size', '3X-Large'),
(388, 220, 'color', 'Blue'),
(389, 221, 'size', 'Small'),
(390, 221, 'color', 'Aqua Blue'),
(391, 222, 'size', 'Medium'),
(392, 222, 'color', 'Aqua Blue'),
(393, 223, 'size', 'Large'),
(394, 223, 'color', 'Aqua Blue'),
(395, 224, 'size', 'X-Large'),
(396, 224, 'color', 'Aqua Blue'),
(397, 225, 'size', 'XX-Lagre'),
(398, 225, 'color', 'Aqua Blue'),
(399, 226, 'size', '3X-Large'),
(400, 226, 'color', 'Aqua Blue'),
(679, 341, 'cpu', 'Core i5-7700HQ'),
(680, 341, 'memory', '16GB DDR4'),
(681, 342, 'cpu', 'Core i7-7700HQ'),
(682, 342, 'memory', '16GB DDR4'),
(683, 343, 'cpu', 'Core i5-7700HQ'),
(684, 343, 'memory', '16GB DDR4'),
(685, 344, 'cpu', 'Core i7-7700HQ'),
(686, 344, 'memory', '12GB DDR4'),
(687, 345, 'cpu', 'Core i5-7700HQ'),
(688, 345, 'memory', '12GB DDR4'),
(1258, 588, 'memory', '4 GB'),
(1259, 588, 'processor', 'i3 7th-generation'),
(1268, 607, 'memory', '4 GB'),
(1269, 607, 'processor', 'i3 7th-generation'),
(1270, 606, 'memory', '4 GB'),
(1271, 606, 'processor', 'i3 7th-generation'),
(1272, 605, 'memory', '8 GB'),
(1273, 605, 'processor', 'i5 7th-generation'),
(1274, 604, 'memory', '8 GB'),
(1275, 604, 'processor', 'i7 7th-generation'),
(1276, 603, 'memory', '8 GB'),
(1277, 603, 'processor', 'i7 7th-generation'),
(1278, 588, 'storage', '128 GB SSD'),
(1279, 607, 'storage', '256 GB SSD'),
(1280, 606, 'storage', '512GB SSD'),
(1281, 605, 'storage', '512GB SSD'),
(1282, 604, 'storage', '512GB SSD'),
(1283, 603, 'storage', '1TB SSD'),
(1284, 608, 'memory', '4 GB'),
(1285, 608, 'processor', 'i3 7th-generation'),
(1286, 608, 'storage', '128 GB SSD');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `account_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `current_balance` decimal(10,1) NOT NULL,
  `pending_clearance` decimal(10,1) NOT NULL,
  `withdrawals` decimal(10,1) NOT NULL,
  `month_earnings` decimal(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_accounts`
--

INSERT INTO `vendor_accounts` (`account_id`, `vendor_id`, `current_balance`, `pending_clearance`, `withdrawals`, `month_earnings`) VALUES
(1, 6, '5878.2', '0.0', '118.0', '5996.2');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_commissions`
--

CREATE TABLE `vendor_commissions` (
  `commission_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `commission_paid_date` text NOT NULL,
  `commission_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_commissions`
--

INSERT INTO `vendor_commissions` (`commission_id`, `vendor_id`, `order_id`, `commission_paid_date`, `commission_status`) VALUES
(7, 6, 31, 'June 20, 2018 05:13:27', 'cleared'),
(8, 6, 30, 'June 22, 2018 09:07:12', 'cleared'),
(10, 6, 19, 'June 23, 2018 01:47:18', 'cleared'),
(11, 6, 41, 'June 25, 2018 05:21:10', 'cleared'),
(12, 14, 3, 'January 09, 2019 08:02:24', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `shipping_type` text NOT NULL,
  `shipping_cost` decimal(10,1) NOT NULL,
  `order_total` decimal(10,1) NOT NULL,
  `net_amount` decimal(10,1) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `order_id`, `vendor_id`, `invoice_no`, `shipping_type`, `shipping_cost`, `order_total`, `net_amount`, `order_status`) VALUES
(1, 1, '6', 1700767450, ' Speedy 1-2 days', '4.0', '74.0', '63.0', 'pending'),
(2, 1, 'admin_2', 502364325, '(Karena) Sample Shipping Type', '30.0', '1130.0', '990.0', 'pending'),
(3, 1, '14', 2054927691, '(Tahir Ahmed) Shipping Type', '10.0', '5910.0', '5310.0', 'completed'),
(4, 2, 'admin_2', 1258470924, '', '0.0', '2900.0', '2610.0', 'pending'),
(5, 3, 'admin_2', 514720535, '', '0.0', '1100.0', '990.0', 'processing'),
(6, 3, '14', 742521786, '', '0.0', '5900.0', '5310.0', 'processing'),
(7, 4, 'admin_2', 1243019347, '', '0.0', '2200.0', '1980.0', 'processing'),
(8, 5, '12', 2041639610, '', '0.0', '70.0', '63.0', 'pending'),
(9, 6, 'admin_2', 1609213570, '', '0.0', '860.0', '774.0', 'pending'),
(10, 7, 'admin_2', 767854481, '', '0.0', '5440.0', '4896.0', 'processing'),
(11, 8, 'admin_2', 625144683, '', '0.0', '250.0', '225.0', 'pending'),
(12, 9, 'admin_2', 1191411663, '', '0.0', '150.0', '135.0', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdraws`
--

CREATE TABLE `vendor_withdraws` (
  `withdraw_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `method` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_withdraws`
--

INSERT INTO `vendor_withdraws` (`withdraw_id`, `vendor_id`, `amount`, `method`, `date`, `status`) VALUES
(1, '6', '10.3', 'paypal', 'June 15, 2018 9:11 am', 'pending'),
(2, '6', '70.0', 'stripe', 'June 18, 2018 09:51', 'cancelled'),
(3, '6', '100.0', 'bank-transfer', 'June 18, 2018 09:51', 'cancelled'),
(4, '6', '100.0', 'bank-transfer', 'June 18, 2018 09:51', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(20, 10, 36),
(21, 10, 36),
(23, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_meta`
--

CREATE TABLE `wishlist_meta` (
  `meta_id` int(10) NOT NULL,
  `wishlist_id` int(255) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `wishlist_meta`
--

INSERT INTO `wishlist_meta` (`meta_id`, `wishlist_id`, `customer_id`, `product_id`, `meta_key`, `meta_value`) VALUES
(61, 20, 10, 36, 'cpu', 'Core i5 7gen'),
(62, 20, 10, 36, 'capacity', '8 GB RAM / 256 GB SSD'),
(63, 20, 10, 36, 'variation_id', '#335'),
(64, 21, 10, 36, 'cpu', 'Core i7 7gen'),
(65, 21, 10, 36, 'capacity', '8 GB RAM / 256 GB SSD'),
(66, 21, 10, 36, 'variation_id', '#336'),
(71, 23, 2, 46, 'processor', 'i5 7th-generation'),
(72, 23, 2, 46, 'memory', '8 GB'),
(73, 23, 2, 46, 'storage', '512 GB SSD'),
(74, 23, 2, 46, 'variation_id', '#494');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(10) NOT NULL,
  `vendor_id` text NOT NULL,
  `zone_name` text NOT NULL,
  `zone_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `vendor_id`, `zone_name`, `zone_order`) VALUES
(11, 'admin_2', 'Saady Test Zone', 4);

-- --------------------------------------------------------

--
-- Table structure for table `zones_locations`
--

CREATE TABLE `zones_locations` (
  `location_id` int(10) NOT NULL,
  `zone_id` int(10) NOT NULL,
  `location_code` text NOT NULL,
  `location_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `zones_locations`
--

INSERT INTO `zones_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(84, 11, '1', 'country'),
(85, 11, '101', 'country'),
(86, 11, '153', 'country'),
(87, 11, '166', 'country'),
(88, 11, '637686', 'postcode'),
(89, 11, '257522', 'postcode'),
(90, 11, '59258', 'postcode'),
(91, 11, '9155825', 'postcode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_meta`
--
ALTER TABLE `cart_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `customers_history`
--
ALTER TABLE `customers_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  ADD PRIMARY KEY (`hide_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  ADD PRIMARY KEY (`addresse_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `orders_notes`
--
ALTER TABLE `orders_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`variation_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_type`
--
ALTER TABLE `shipping_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `store_settings`
--
ALTER TABLE `store_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `variations_meta`
--
ALTER TABLE `variations_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  ADD PRIMARY KEY (`commission_id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zones_locations`
--
ALTER TABLE `zones_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_meta`
--
ALTER TABLE `cart_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customers_addresses`
--
ALTER TABLE `customers_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customers_history`
--
ALTER TABLE `customers_history`
  MODIFY `history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hide_admin_orders`
--
ALTER TABLE `hide_admin_orders`
  MODIFY `hide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_addresses`
--
ALTER TABLE `orders_addresses`
  MODIFY `addresse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_items_meta`
--
ALTER TABLE `orders_items_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders_notes`
--
ALTER TABLE `orders_notes`
  MODIFY `note_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `products_stock`
--
ALTER TABLE `products_stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `variation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reviews_meta`
--
ALTER TABLE `reviews_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `shipping_type`
--
ALTER TABLE `shipping_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `settings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `variations_meta`
--
ALTER TABLE `variations_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1287;

--
-- AUTO_INCREMENT for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `account_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor_commissions`
--
ALTER TABLE `vendor_commissions`
  MODIFY `commission_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  MODIFY `withdraw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlist_meta`
--
ALTER TABLE `wishlist_meta`
  MODIFY `meta_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `zones_locations`
--
ALTER TABLE `zones_locations`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
