-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 05 2022 г., 16:28
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cineview`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(50) NOT NULL,
  `about` longtext NOT NULL,
  `tagline` longtext NOT NULL,
  `choose_plan` longtext NOT NULL,
  `account` longtext NOT NULL,
  `enjoy` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `about`, `tagline`, `choose_plan`, `account`, `enjoy`) VALUES
(1, '<p>An American entertainment company, a provider of movies and TV series based on streaming media.</p>\r\n\r\n<p>One of the distinctive features of Thero is that new series are released not one episode once a week (like, say, HBO products), but immediately a whole season on one day simultaneously around the world in different languages.</p>', 'Best Place For Movies', 'All the benefits are in one subscription. The choice of the plan is up to you', 'Create an account and enjoy your time with us', 'Every day brings new stories to our collection of TV series and movies');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `code` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`code`, `type`, `comment`) VALUES
('001', 'warning', 'Email address is used'),
('002', 'warning', 'Username is used'),
('003', 'success', 'Account created successfully'),
('004', 'danger', 'Invalid login details'),
('005', 'danger', 'Your account is blocked'),
('006', 'danger', 'You are not logged in'),
('007', 'danger', 'Invalid session key'),
('008', 'danger', 'You dont have privileges to perform this action'),
('009', 'danger', 'Multiple records founded'),
('010', 'success', 'Created successfully'),
('011', 'success', 'Deleted successfully'),
('012', 'success', 'Updated successfully'),
('013', 'warning', 'Sorry, only JPG, JPEG & PNG files are allowed'),
('014', 'danger', 'Sorry, there was an error uploading your file'),
('015', 'success', 'Link created successfully'),
('016', 'danger', 'Authentication failed : Invalid old password'),
('017', 'warning', 'Sorry, only JPG, JPEG & PNG files are allowed'),
('018', 'success', 'Sorry, only JPG, JPEG, ICO & PNG files are allowed'),
('019', 'success', 'Review deleted'),
('020', 'success', 'Comment deleted'),
('021', 'success', 'Account status changed'),
('022', 'success', 'User profile deleted successfully'),
('023', 'success', 'Item status changed'),
('024', 'success', 'Item deleted successfully'),
('025', 'success', 'Account was not found'),
('026', 'success', 'Instructions were sent to your email'),
('027', 'danger', 'Unknown error occured, please try again'),
('028', 'danger', 'Invalid token supplied'),
('029', 'success', 'Password reset completed'),
('030', 'success', 'Plan created successfully');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` int(255) NOT NULL DEFAULT 0,
  `dislikes` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `item`, `user`, `date_time`, `comment`, `likes`, `dislikes`) VALUES
(2, '824435624225', '73560212', '2021-11-20 07:29:41', 'The method of growing the most talented of talents, on the verge of all possibilities, through hard pressure and cruelty is clearly shown.', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `id` int(50) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `limit_c` varchar(255) NOT NULL,
  `usage_c` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`id`, `code`, `discount`, `limit_c`, `usage_c`) VALUES
(3, '001', '50', '100', 4),
(2, '5050', '20', '55', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_episodes`
--

CREATE TABLE `tbl_episodes` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `streaming` varchar(255) NOT NULL,
  `episode_no` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_episodes`
--

INSERT INTO `tbl_episodes` (`id`, `item`, `link`, `size`, `streaming`, `episode_no`) VALUES
(34, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E01.720p.WEB-DL.mkv', 720, '1', 1),
(33, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e01.480p.web-dl.mkv', 480, '1', 1),
(38, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E02.1080p.WEB-DL.mkv', 1080, '1', 2),
(39, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e03.480p.web-dl.mkv', 480, '1', 3),
(40, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E03.720p.WEB-DL.mkv', 720, '1', 3),
(41, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E03.1080p.WEB-DL.mkv', 1080, '1', 3),
(42, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e04.480p.web-dl.mkv', 480, '1', 4),
(43, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E04.720p.WEB-DL.mkv', 720, '1', 4),
(44, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E04.1080p.WEB-DL.mkv', 1080, '1', 4),
(45, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e05.480p.web-dl.mkv', 480, '1', 5),
(46, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E05.720p.WEB-DL.mkv', 720, '1', 5),
(47, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E05.1080p.WEB-DL.mkv', 1080, '1', 5),
(48, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e06.480p.web-dl.mkv', 480, '1', 6),
(51, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e06.720p.web-dl.x265.mkv', 720, '1', 6),
(50, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E06.1080p.WEB-DL.mkv', 1080, '1', 6),
(52, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e07.480p.web-dl.mkv', 480, '1', 7),
(53, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E07.720p.WEB-DL.mkv', 720, '1', 7),
(54, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E07.1080p.WEB-DL.mkv', 1080, '1', 7),
(55, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/the.witcher.s01e08.480p.web-dl.mkv', 480, '1', 8),
(56, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E08.720p.WEB-DL.mkv', 720, '1', 8),
(57, '363780636936', 'http://dl2.svdl.ir/Serial/KH/The%20Witcher/S01/The.Witcher.S01E08.1080p.WEB-DL.mkv', 1080, '1', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_episode_subs`
--

CREATE TABLE `tbl_episode_subs` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `episode` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_favourites`
--

CREATE TABLE `tbl_favourites` (
  `id` int(50) NOT NULL,
  `user` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_favourites`
--

INSERT INTO `tbl_favourites` (`id`, `user`, `item`) VALUES
(3, '73560212', '824435624225'),
(7, '94494212', '973879310217'),
(6, '93235673', '824435624225');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_genres`
--

CREATE TABLE `tbl_genres` (
  `id` int(50) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_genres`
--

INSERT INTO `tbl_genres` (`id`, `genre`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Music'),
(4, 'Musical'),
(7, 'Drama'),
(6, 'Romance'),
(8, 'Crime'),
(9, 'Adventure '),
(10, 'Fantasy'),
(11, 'Mystery'),
(12, 'Horror'),
(13, 'Ski-Fi');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_items`
--

CREATE TABLE `tbl_items` (
  `c_id` int(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `year` varchar(255) NOT NULL,
  `run_time` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `upload_type` varchar(255) NOT NULL,
  `genres` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `trailer_link` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `rates` int(255) NOT NULL DEFAULT 0,
  `views` int(255) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Visible'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_items`
--

INSERT INTO `tbl_items` (`c_id`, `title`, `item_id`, `description`, `year`, `run_time`, `plan`, `age`, `upload_type`, `genres`, `thumbnail`, `trailer_link`, `upload_date`, `cover`, `rates`, `views`, `status`) VALUES
(2, 'The Dark Knight', '993841707672', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', '2008', '2h 32m', 'Paid', '14+', 'Movie', 'Action,Crime,Drama', 'thumb993841707672561.jpg', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'Nov 20, 2021 03:58:03', 'cover993841707672205.jpg', 9, 1, 'Visible'),
(3, 'The Lord Of The Rings: The Return Of The King', '784828048015', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', '2003', '4h 3m', 'Paid', '12+', 'Movie', 'Action,Adventure ,Drama', 'thumb784828048015420.jpg', 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', 'Nov 20, 2021 04:27:44', 'cover784828048015122.jpg', 0, 1, 'Visible'),
(14, 'Free Guy', '060697796592', 'A bank teller discovers that he\'s actually an NPC inside a brutal, open world video game. ', '2021', '1h 55m', 'Free', '16+', 'Movie', 'Action,Adventure ,Comedy', 'thumb060697796592103.jpg', 'https://www.youtube.com/watch?v=X2m-08cOAbc', 'Dec 12, 2021 10:06:08', 'cover060697796592712.jpg', 0, 1, 'Visible'),
(13, 'Avengers: Infinity War', '702915168105', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', '2018', '2h 29m', 'Free', '16+', 'Movie', 'Action,Adventure ,Ski-Fi', 'thumb702915168105145.jpg', 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 'Dec 12, 2021 09:41:34', 'cover702915168105573.jpg', 0, 1, 'Visible'),
(5, 'Inception', '737266811638', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', '2010', '2h 28m', 'Paid', '12+', 'Movie', 'Action,Adventure ', 'thumb737266811638962.jpg', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'Nov 20, 2021 04:41:55', 'cover737266811638525.jpeg', 0, 1, 'Visible'),
(6, 'The Witcher', '363780636936', 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.', '2019', '1h', 'Free', '18+ ', 'Show', 'Action,Adventure ,Fantasy', 'thumb363780636936801.jpg', 'https://www.youtube.com/watch?v=ndl1W4ltcmg', 'Nov 20, 2021 04:46:51', 'cover363780636936017.jpg', 1, 2, 'Visible'),
(11, ' Whiplash ', '824435624225', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', '2014 ', '1h 46m', 'Free', '16+', 'Movie', 'Drama,Music', 'thumb824435624225707.jpg', 'https://www.youtube.com/watch?v=7d_jQycdQGo', 'Nov 20, 2021 06:12:57', 'cover824435624225351.jpg', 8, 1, 'Visible'),
(15, '2012', '973879310217', 'A frustrated writer struggles to keep his family alive when a series of global catastrophes threatens to annihilate mankind. ', '2009', '2h 38m', 'Paid', '14+', 'Movie', 'Action,Adventure ,Ski-Fi', 'thumb973879310217022.jpg', 'https://www.youtube.com/watch?v=ce0N3TEcFw', 'Dec 12, 2021 12:35:03', 'cover973879310217264.jpg', 0, 1, 'Visible');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_paypal`
--

CREATE TABLE `tbl_paypal` (
  `id` int(50) NOT NULL,
  `API_USER` varchar(255) NOT NULL,
  `API_PASS` varchar(255) NOT NULL,
  `API_SIG` varchar(255) NOT NULL,
  `API_USER_SB` varchar(255) NOT NULL,
  `API_PASS_SB` varchar(255) NOT NULL,
  `API_SIG_SB` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `switch` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_paypal`
--

INSERT INTO `tbl_paypal` (`id`, `API_USER`, `API_PASS`, `API_SIG`, `API_USER_SB`, `API_PASS_SB`, `API_SIG_SB`, `status`, `switch`) VALUES
(1, 'cineview_support_api1.gmail.com', ' GRD8RK85UPZLGAKA', 'AOHboTRh7WyWByCcaTQ2YECu7C2WAS2jaSZ5SUFQJHsd2hDfx2WAEXTS', 'sb-34e4x9021094_api1.business.example.com', 'ATNHVWZRWC2XHP86', 'ASq15zwbkN0RJcERWnO31YgfQnNZA-3gtc4Qd58FSdvJU7D8DiC7KpVk', '0', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_plans`
--

CREATE TABLE `tbl_plans` (
  `id` int(50) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `valid` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `valid_type` varchar(255) NOT NULL,
  `max_size` varchar(255) NOT NULL DEFAULT '480'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_plans`
--

INSERT INTO `tbl_plans` (`id`, `plan`, `valid`, `cost`, `valid_type`, `max_size`) VALUES
(1000, 'BASIC', '1', '11', 'Months', '480'),
(1001, 'STANDARD', '1', '15', 'Months', '720'),
(1002, 'PREMIUM', '1', '18', 'Months', '1080');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_privacy`
--

CREATE TABLE `tbl_privacy` (
  `id` int(50) NOT NULL,
  `privacy` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_privacy`
--

INSERT INTO `tbl_privacy` (`id`, `privacy`) VALUES
(1, '<p>To make a purchase, you may need to provide a valid payment method (e.g., credit card or PayPal account). Your payment information will be collected and processed by our authorized payment vendors. We do not directly collect or store credit or debit card numbers ourselves in the ordinary course of processing transactions. If we allow purchase through a third-party platform (i.e. in-app purchase), the payment method stored with the third-party platform will be charged.\r\n\r\nIf you wish to sell items or earn money from advertising through our services, you must provide an account to receive funds and tax information, which may include your name, address, and taxpayer identification number.</p>\r\n\r\n<p>You may submit information through a capture form set up by a video owner or webinar host. This information will be received by both Vimeo and the video owner and is subject to both Vimeo\'s Privacy Policy as well as the video owner\'s privacy policy. Except where Vimeo is the video owner, Vimeo will not use any information you submit through such forms for direct marketing purposes.</p>\r\n\r\n<p>You may submit information through a capture form set up by a video owner or webinar host. This information will be received by both Vimeo and the video owner and is subject to both Vimeo\'s Privacy Policy as well as the video owner\'s privacy policy. Except where Vimeo is the video owner, Vimeo will not use any information you submit through such forms for direct marketing purposes.</p>\r\n\r\n<p>You may submit information through a capture form set up by a video owner or webinar host. This information will be received by both Vimeo and the video owner and is subject to both Vimeo\'s Privacy Policy as well as the video owner\'s privacy policy. Except where Vimeo is the video owner, Vimeo will not use any information you submit through such forms for direct marketing purposes.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>\r\n\r\n<p>We provide online video hosting, sharing and related services through our owned-and-operated websites</p>\r\n\r\n<p>Some third parties may collect data about you when you use our services. This may include data you submit (such as payment information) or automatically-collected information (in the case of third-party analytics providers and advertising partners).\r\n\r\nWe may obtain data from third parties about you. We may combine that data with information that we have collected. For example, some advertisers or advertising platforms may allow us to determine what other online services you might use so that we may place relevant ads on those services.</p>\r\n\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet:\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged;\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages;\r\nVarious versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like);\r\nMany desktop publishing packages and web page editors now use Lorem Ipsum as their default model text;\r\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_reset_tokens`
--

CREATE TABLE `tbl_reset_tokens` (
  `id` int(50) NOT NULL,
  `account` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_reset_tokens`
--

INSERT INTO `tbl_reset_tokens` (`id`, `account`, `token`, `email`) VALUES
(1, '94494212', 'b49abb2ca32bb65adfaeec26170e6bba', 'matveevasonya23@icloud.com'),
(4, '34818131', 'e4bded0ba0e61702361d27aa9283fa21', 'simba1703mufasa@gmail.com'),
(3, '63049377', 'c89e907297fd2b0a4863f82b8535eb06', 'freemail@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `rates` int(255) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`id`, `item`, `user`, `reason`, `date_time`, `rates`, `comment`) VALUES
(1, '993841707672', '94494212', 'Test Reviews', '2021-11-20 04:07:53', 10, 'test'),
(2, '824435624225', '73560212', 'Out Of The Mud In Jazz', '2021-11-20 07:29:11', 8, 'This film is not about music, I will say right away. This is the story of a proud and unbalanced teenager who wants to break out into people because he and his ego can\'t live together with a gray dad and watch TV with him while eating popcorn. This is an example of the path of a young musician who loves himself in music, not music in himself. This is what happens to all young musicians at first, and it\'s normal when \"beginners and future stars\" cultivate their musical (or any other) greatness to the size of the continent of Eurasia.'),
(3, '993841707672', '73560212', 'Best', '2021-11-20 07:31:30', 8, 'The best Batman of all time. The quintessence of \"Batmenology\" by Christopher Nolan. One of the highest-grossing films in the history of cinema. One of the most highly regarded films of numerous portals/websites/publications. The first \"Oscar-winning\" comic character (Joker / Heath Ledger). And the list goes on.\r\nBatman VS Joker. A vigilant guardian of Gotham against the ever-grinning \"dummy\". Their confrontation will become legendary. And Batman will finally understand who he has to become to defeat someone like the Joker. Well?... And you? Have you guessed? Yes, the answer is correct: the dark knight...\r\n\r\nYou can throw stones at me, but about Heath Ledger and his Joker, I just can\'t help but put in a word! After all, he is, in fact, the central character of the picture both for reflection and for discussion.'),
(6, '363780636936', '23654210', 'HUYNYA', '2021-12-18 02:02:16', 1, 'WITCHER GOVNO');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `user` varchar(50) NOT NULL,
  `sessi_id` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`user`, `sessi_id`, `ip_address`) VALUES
('23654210', '9928c8e8d731a927b80098ca5ad15bb2', '::1');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_single_links`
--

CREATE TABLE `tbl_single_links` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `streaming` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_single_links`
--

INSERT INTO `tbl_single_links` (`id`, `item`, `link`, `size`, `streaming`) VALUES
(1, '824435624225', 'https://lh3.googleusercontent.com/ZRiaEe0-k04MS0IHfphTpTBVUskxZ8InBpOeBoZ5Xu7hUKSzPnteawdulGOLWitJ4doTtFMmbjb_yhknguKYlsUyhW52tbsLZMXcBykqddxx40JmJlhcU6E4kI2-O6eWr0fgFMODFpk=dv', 480, '1'),
(6, '993841707672', 'https://dl3.sgegrv8ergs4sd555dsfa6bv8ajfg545.xyz/film/1399/07/The.Dark.Knight.2008/The.Dark.Knight.2008.1080p.BrRip.x264.SoftSub.YIFY.AvaMovie.mkv', 1080, '1'),
(7, '993841707672', 'https://dl3.sgegrv8ergs4sd555dsfa6bv8ajfg545.xyz/film/1399/07/The.Dark.Knight.2008/The.Dark.Knight.2008.720p.BrRip.x264.SoftSub.YIFY.AvaMovie.mkv', 720, '1'),
(8, '993841707672', 'https://dl3.sgegrv8ergs4sd555dsfa6bv8ajfg545.xyz/film/1399/07/The.Dark.Knight.2008/The.Dark.Knight.2008.480p.BluRay.x264.SoftSub.Pahe.AvaMovie.mkv', 480, '1'),
(21, '737266811638', 'http://www.bfdlcloud.com/Movies/Inception-2010-720p-BaranFilm.mkv', 720, '1'),
(22, '737266811638', 'http://www.bfdlcloud.com/Movies/Inception-2010-1080p-BaranFilm.mkv', 1080, '1'),
(23, '784828048015', 'http://www.bfdlcloud.com/Movies/The-Lord-of-the-Rings-The-Return-of-the-King-2003-720p-BaranFilm.mkv', 720, '1'),
(24, '702915168105', 'http://s3.habqmymoviefilm.cf/film/98/11/Avengers.Infinity.War.2018.1080p.BluRay.H264.AAC.RARBG.mymoviefilm.mkv', 1080, '1'),
(25, '702915168105', 'http://s3.habqmymoviefilm.cf/film/98/11/Avengers.Infinity.War.2018.480p.BRrip.RMT.mymoviefilm.mkv', 480, '1'),
(26, '702915168105', 'http://s3.habqmymoviefilm.cf/film/98/11/Avengers.Infinity.War.2018.720p.BluRay.H264.AAC.RARBG.mymoviefilm.mkv', 720, '1'),
(27, '060697796592', 'http://dl.1hastidi.fun/static/Free.Guy.2021.480p.BluRay.KIMO.DUBLE.mkv', 480, '1'),
(28, '060697796592', 'http://s1.habqmymoviefilm.cf/film/1400/07/Free.Guy.2021.720p.BluRay.x264.AAC.YTS.mymoviefilm.mkv', 720, '1'),
(29, '060697796592', 'http://dl.1hastidi.fun/static/Free.Guy.2021.1080p.BluRay.KIMO.DUBLE.mkv', 1080, '1'),
(30, '973879310217', 'http://dl5.dlfars.pw/b8/film4/2012.2009.1080p.Farsi.Dubbed.mkv', 1080, '1'),
(31, '973879310217', 'http://dl5.dlfars.pw/b8/film4/2012.2009.720p.Farsi.Dubbed.mkv', 720, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_single_subs`
--

CREATE TABLE `tbl_single_subs` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_smtp`
--

CREATE TABLE `tbl_smtp` (
  `server` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `conn_type` varchar(255) NOT NULL,
  `conn_port` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_smtp`
--

INSERT INTO `tbl_smtp` (`server`, `username`, `password`, `conn_type`, `conn_port`) VALUES
('smtp.gmail.com', 'cineniew.smpt.001@gmail.com', 'supportsmpt001', 'tls', '587');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_stripe`
--

CREATE TABLE `tbl_stripe` (
  `pub_key` varchar(255) NOT NULL,
  `sec_key` varchar(255) NOT NULL,
  `pub_key_test` varchar(255) NOT NULL,
  `sec_key_test` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `switch` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_stripe`
--

INSERT INTO `tbl_stripe` (`pub_key`, `sec_key`, `pub_key_test`, `sec_key_test`, `status`, `switch`) VALUES
('PUB Key', 'SEC Key', 'pk_test_51Jxxw6DjJ2KQm7KOdSHzFZwcETemYfQ4SjrM1Bo6CMRpCw5ZDLv43uEoSvcmltuJpFXwJTQEi9ai51pCk9hM73nD009IhHU8aC', 'sk_test_51Jxxw6DjJ2KQm7KOrio2S8VKQegGqjcWR5KFbZCTLaNDg9j0NdDNs0cJ4IG5nB8NqFigrv2YyVLoUNqHqjeLTwRA00UiAx9POx', '0', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_timezones`
--

CREATE TABLE `tbl_timezones` (
  `zone_id` int(10) NOT NULL,
  `country_code` char(2) COLLATE utf8_bin NOT NULL,
  `zone_name` varchar(35) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `tbl_timezones`
--

INSERT INTO `tbl_timezones` (`zone_id`, `country_code`, `zone_name`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'America/Punta_Arenas'),
(122, 'CL', 'Pacific/Easter'),
(123, 'CM', 'Africa/Douala'),
(124, 'CN', 'Asia/Shanghai'),
(125, 'CN', 'Asia/Urumqi'),
(126, 'CO', 'America/Bogota'),
(127, 'CR', 'America/Costa_Rica'),
(128, 'CU', 'America/Havana'),
(129, 'CV', 'Atlantic/Cape_Verde'),
(130, 'CW', 'America/Curacao'),
(131, 'CX', 'Indian/Christmas'),
(132, 'CY', 'Asia/Nicosia'),
(133, 'CY', 'Asia/Famagusta'),
(134, 'CZ', 'Europe/Prague'),
(135, 'DE', 'Europe/Berlin'),
(136, 'DE', 'Europe/Busingen'),
(137, 'DJ', 'Africa/Djibouti'),
(138, 'DK', 'Europe/Copenhagen'),
(139, 'DM', 'America/Dominica'),
(140, 'DO', 'America/Santo_Domingo'),
(141, 'DZ', 'Africa/Algiers'),
(142, 'EC', 'America/Guayaquil'),
(143, 'EC', 'Pacific/Galapagos'),
(144, 'EE', 'Europe/Tallinn'),
(145, 'EG', 'Africa/Cairo'),
(146, 'EH', 'Africa/El_Aaiun'),
(147, 'ER', 'Africa/Asmara'),
(148, 'ES', 'Europe/Madrid'),
(149, 'ES', 'Africa/Ceuta'),
(150, 'ES', 'Atlantic/Canary'),
(151, 'ET', 'Africa/Addis_Ababa'),
(152, 'FI', 'Europe/Helsinki'),
(153, 'FJ', 'Pacific/Fiji'),
(154, 'FK', 'Atlantic/Stanley'),
(155, 'FM', 'Pacific/Chuuk'),
(156, 'FM', 'Pacific/Pohnpei'),
(157, 'FM', 'Pacific/Kosrae'),
(158, 'FO', 'Atlantic/Faroe'),
(159, 'FR', 'Europe/Paris'),
(160, 'GA', 'Africa/Libreville'),
(161, 'GB', 'Europe/London'),
(162, 'GD', 'America/Grenada'),
(163, 'GE', 'Asia/Tbilisi'),
(164, 'GF', 'America/Cayenne'),
(165, 'GG', 'Europe/Guernsey'),
(166, 'GH', 'Africa/Accra'),
(167, 'GI', 'Europe/Gibraltar'),
(168, 'GL', 'America/Godthab'),
(169, 'GL', 'America/Danmarkshavn'),
(170, 'GL', 'America/Scoresbysund'),
(171, 'GL', 'America/Thule'),
(172, 'GM', 'Africa/Banjul'),
(173, 'GN', 'Africa/Conakry'),
(174, 'GP', 'America/Guadeloupe'),
(175, 'GQ', 'Africa/Malabo'),
(176, 'GR', 'Europe/Athens'),
(177, 'GS', 'Atlantic/South_Georgia'),
(178, 'GT', 'America/Guatemala'),
(179, 'GU', 'Pacific/Guam'),
(180, 'GW', 'Africa/Bissau'),
(181, 'GY', 'America/Guyana'),
(182, 'HK', 'Asia/Hong_Kong'),
(183, 'HN', 'America/Tegucigalpa'),
(184, 'HR', 'Europe/Zagreb'),
(185, 'HT', 'America/Port-au-Prince'),
(186, 'HU', 'Europe/Budapest'),
(187, 'ID', 'Asia/Jakarta'),
(188, 'ID', 'Asia/Pontianak'),
(189, 'ID', 'Asia/Makassar'),
(190, 'ID', 'Asia/Jayapura'),
(191, 'IE', 'Europe/Dublin'),
(192, 'IL', 'Asia/Jerusalem'),
(193, 'IM', 'Europe/Isle_of_Man'),
(194, 'IN', 'Asia/Kolkata'),
(195, 'IO', 'Indian/Chagos'),
(196, 'IQ', 'Asia/Baghdad'),
(197, 'IR', 'Asia/Tehran'),
(198, 'IS', 'Atlantic/Reykjavik'),
(199, 'IT', 'Europe/Rome'),
(200, 'JE', 'Europe/Jersey'),
(201, 'JM', 'America/Jamaica'),
(202, 'JO', 'Asia/Amman'),
(203, 'JP', 'Asia/Tokyo'),
(204, 'KE', 'Africa/Nairobi'),
(205, 'KG', 'Asia/Bishkek'),
(206, 'KH', 'Asia/Phnom_Penh'),
(207, 'KI', 'Pacific/Tarawa'),
(208, 'KI', 'Pacific/Enderbury'),
(209, 'KI', 'Pacific/Kiritimati'),
(210, 'KM', 'Indian/Comoro'),
(211, 'KN', 'America/St_Kitts'),
(212, 'KP', 'Asia/Pyongyang'),
(213, 'KR', 'Asia/Seoul'),
(214, 'KW', 'Asia/Kuwait'),
(215, 'KY', 'America/Cayman'),
(216, 'KZ', 'Asia/Almaty'),
(217, 'KZ', 'Asia/Qyzylorda'),
(218, 'KZ', 'Asia/Qostanay'),
(219, 'KZ', 'Asia/Aqtobe'),
(220, 'KZ', 'Asia/Aqtau'),
(221, 'KZ', 'Asia/Atyrau'),
(222, 'KZ', 'Asia/Oral'),
(223, 'LA', 'Asia/Vientiane'),
(224, 'LB', 'Asia/Beirut'),
(225, 'LC', 'America/St_Lucia'),
(226, 'LI', 'Europe/Vaduz'),
(227, 'LK', 'Asia/Colombo'),
(228, 'LR', 'Africa/Monrovia'),
(229, 'LS', 'Africa/Maseru'),
(230, 'LT', 'Europe/Vilnius'),
(231, 'LU', 'Europe/Luxembourg'),
(232, 'LV', 'Europe/Riga'),
(233, 'LY', 'Africa/Tripoli'),
(234, 'MA', 'Africa/Casablanca'),
(235, 'MC', 'Europe/Monaco'),
(236, 'MD', 'Europe/Chisinau'),
(237, 'ME', 'Europe/Podgorica'),
(238, 'MF', 'America/Marigot'),
(239, 'MG', 'Indian/Antananarivo'),
(240, 'MH', 'Pacific/Majuro'),
(241, 'MH', 'Pacific/Kwajalein'),
(242, 'MK', 'Europe/Skopje'),
(243, 'ML', 'Africa/Bamako'),
(244, 'MM', 'Asia/Yangon'),
(245, 'MN', 'Asia/Ulaanbaatar'),
(246, 'MN', 'Asia/Hovd'),
(247, 'MN', 'Asia/Choibalsan'),
(248, 'MO', 'Asia/Macau'),
(249, 'MP', 'Pacific/Saipan'),
(250, 'MQ', 'America/Martinique'),
(251, 'MR', 'Africa/Nouakchott'),
(252, 'MS', 'America/Montserrat'),
(253, 'MT', 'Europe/Malta'),
(254, 'MU', 'Indian/Mauritius'),
(255, 'MV', 'Indian/Maldives'),
(256, 'MW', 'Africa/Blantyre'),
(257, 'MX', 'America/Mexico_City'),
(258, 'MX', 'America/Cancun'),
(259, 'MX', 'America/Merida'),
(260, 'MX', 'America/Monterrey'),
(261, 'MX', 'America/Matamoros'),
(262, 'MX', 'America/Mazatlan'),
(263, 'MX', 'America/Chihuahua'),
(264, 'MX', 'America/Ojinaga'),
(265, 'MX', 'America/Hermosillo'),
(266, 'MX', 'America/Tijuana'),
(267, 'MX', 'America/Bahia_Banderas'),
(268, 'MY', 'Asia/Kuala_Lumpur'),
(269, 'MY', 'Asia/Kuching'),
(270, 'MZ', 'Africa/Maputo'),
(271, 'NA', 'Africa/Windhoek'),
(272, 'NC', 'Pacific/Noumea'),
(273, 'NE', 'Africa/Niamey'),
(274, 'NF', 'Pacific/Norfolk'),
(275, 'NG', 'Africa/Lagos'),
(276, 'NI', 'America/Managua'),
(277, 'NL', 'Europe/Amsterdam'),
(278, 'NO', 'Europe/Oslo'),
(279, 'NP', 'Asia/Kathmandu'),
(280, 'NR', 'Pacific/Nauru'),
(281, 'NU', 'Pacific/Niue'),
(282, 'NZ', 'Pacific/Auckland'),
(283, 'NZ', 'Pacific/Chatham'),
(284, 'OM', 'Asia/Muscat'),
(285, 'PA', 'America/Panama'),
(286, 'PE', 'America/Lima'),
(287, 'PF', 'Pacific/Tahiti'),
(288, 'PF', 'Pacific/Marquesas'),
(289, 'PF', 'Pacific/Gambier'),
(290, 'PG', 'Pacific/Port_Moresby'),
(291, 'PG', 'Pacific/Bougainville'),
(292, 'PH', 'Asia/Manila'),
(293, 'PK', 'Asia/Karachi'),
(294, 'PL', 'Europe/Warsaw'),
(295, 'PM', 'America/Miquelon'),
(296, 'PN', 'Pacific/Pitcairn'),
(297, 'PR', 'America/Puerto_Rico'),
(298, 'PS', 'Asia/Gaza'),
(299, 'PS', 'Asia/Hebron'),
(300, 'PT', 'Europe/Lisbon'),
(301, 'PT', 'Atlantic/Madeira'),
(302, 'PT', 'Atlantic/Azores'),
(303, 'PW', 'Pacific/Palau'),
(304, 'PY', 'America/Asuncion'),
(305, 'QA', 'Asia/Qatar'),
(306, 'RE', 'Indian/Reunion'),
(307, 'RO', 'Europe/Bucharest'),
(308, 'RS', 'Europe/Belgrade'),
(309, 'RU', 'Europe/Kaliningrad'),
(310, 'RU', 'Europe/Moscow'),
(311, 'UA', 'Europe/Simferopol'),
(312, 'RU', 'Europe/Kirov'),
(313, 'RU', 'Europe/Astrakhan'),
(314, 'RU', 'Europe/Volgograd'),
(315, 'RU', 'Europe/Saratov'),
(316, 'RU', 'Europe/Ulyanovsk'),
(317, 'RU', 'Europe/Samara'),
(318, 'RU', 'Asia/Yekaterinburg'),
(319, 'RU', 'Asia/Omsk'),
(320, 'RU', 'Asia/Novosibirsk'),
(321, 'RU', 'Asia/Barnaul'),
(322, 'RU', 'Asia/Tomsk'),
(323, 'RU', 'Asia/Novokuznetsk'),
(324, 'RU', 'Asia/Krasnoyarsk'),
(325, 'RU', 'Asia/Irkutsk'),
(326, 'RU', 'Asia/Chita'),
(327, 'RU', 'Asia/Yakutsk'),
(328, 'RU', 'Asia/Khandyga'),
(329, 'RU', 'Asia/Vladivostok'),
(330, 'RU', 'Asia/Ust-Nera'),
(331, 'RU', 'Asia/Magadan'),
(332, 'RU', 'Asia/Sakhalin'),
(333, 'RU', 'Asia/Srednekolymsk'),
(334, 'RU', 'Asia/Kamchatka'),
(335, 'RU', 'Asia/Anadyr'),
(336, 'RW', 'Africa/Kigali'),
(337, 'SA', 'Asia/Riyadh'),
(338, 'SB', 'Pacific/Guadalcanal'),
(339, 'SC', 'Indian/Mahe'),
(340, 'SD', 'Africa/Khartoum'),
(341, 'SE', 'Europe/Stockholm'),
(342, 'SG', 'Asia/Singapore'),
(343, 'SH', 'Atlantic/St_Helena'),
(344, 'SI', 'Europe/Ljubljana'),
(345, 'SJ', 'Arctic/Longyearbyen'),
(346, 'SK', 'Europe/Bratislava'),
(347, 'SL', 'Africa/Freetown'),
(348, 'SM', 'Europe/San_Marino'),
(349, 'SN', 'Africa/Dakar'),
(350, 'SO', 'Africa/Mogadishu'),
(351, 'SR', 'America/Paramaribo'),
(352, 'SS', 'Africa/Juba'),
(353, 'ST', 'Africa/Sao_Tome'),
(354, 'SV', 'America/El_Salvador'),
(355, 'SX', 'America/Lower_Princes'),
(356, 'SY', 'Asia/Damascus'),
(357, 'SZ', 'Africa/Mbabane'),
(358, 'TC', 'America/Grand_Turk'),
(359, 'TD', 'Africa/Ndjamena'),
(360, 'TF', 'Indian/Kerguelen'),
(361, 'TG', 'Africa/Lome'),
(362, 'TH', 'Asia/Bangkok'),
(363, 'TJ', 'Asia/Dushanbe'),
(364, 'TK', 'Pacific/Fakaofo'),
(365, 'TL', 'Asia/Dili'),
(366, 'TM', 'Asia/Ashgabat'),
(367, 'TN', 'Africa/Tunis'),
(368, 'TO', 'Pacific/Tongatapu'),
(369, 'TR', 'Europe/Istanbul'),
(370, 'TT', 'America/Port_of_Spain'),
(371, 'TV', 'Pacific/Funafuti'),
(372, 'TW', 'Asia/Taipei'),
(373, 'TZ', 'Africa/Dar_es_Salaam'),
(374, 'UA', 'Europe/Kiev'),
(375, 'UA', 'Europe/Uzhgorod'),
(376, 'UA', 'Europe/Zaporozhye'),
(377, 'UG', 'Africa/Kampala'),
(378, 'UM', 'Pacific/Midway'),
(379, 'UM', 'Pacific/Wake'),
(380, 'US', 'America/New_York'),
(381, 'US', 'America/Detroit'),
(382, 'US', 'America/Kentucky/Louisville'),
(383, 'US', 'America/Kentucky/Monticello'),
(384, 'US', 'America/Indiana/Indianapolis'),
(385, 'US', 'America/Indiana/Vincennes'),
(386, 'US', 'America/Indiana/Winamac'),
(387, 'US', 'America/Indiana/Marengo'),
(388, 'US', 'America/Indiana/Petersburg'),
(389, 'US', 'America/Indiana/Vevay'),
(390, 'US', 'America/Chicago'),
(391, 'US', 'America/Indiana/Tell_City'),
(392, 'US', 'America/Indiana/Knox'),
(393, 'US', 'America/Menominee'),
(394, 'US', 'America/North_Dakota/Center'),
(395, 'US', 'America/North_Dakota/New_Salem'),
(396, 'US', 'America/North_Dakota/Beulah'),
(397, 'US', 'America/Denver'),
(398, 'US', 'America/Boise'),
(399, 'US', 'America/Phoenix'),
(400, 'US', 'America/Los_Angeles'),
(401, 'US', 'America/Anchorage'),
(402, 'US', 'America/Juneau'),
(403, 'US', 'America/Sitka'),
(404, 'US', 'America/Metlakatla'),
(405, 'US', 'America/Yakutat'),
(406, 'US', 'America/Nome'),
(407, 'US', 'America/Adak'),
(408, 'US', 'Pacific/Honolulu'),
(409, 'UY', 'America/Montevideo'),
(410, 'UZ', 'Asia/Samarkand'),
(411, 'UZ', 'Asia/Tashkent'),
(412, 'VA', 'Europe/Vatican'),
(413, 'VC', 'America/St_Vincent'),
(414, 'VE', 'America/Caracas'),
(415, 'VG', 'America/Tortola'),
(416, 'VI', 'America/St_Thomas'),
(417, 'VN', 'Asia/Ho_Chi_Minh'),
(418, 'VU', 'Pacific/Efate'),
(419, 'WF', 'Pacific/Wallis'),
(420, 'WS', 'Pacific/Apia'),
(421, 'YE', 'Asia/Aden'),
(422, 'YT', 'Indian/Mayotte'),
(423, 'ZA', 'Africa/Johannesburg'),
(424, 'ZM', 'Africa/Lusaka'),
(425, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(50) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ammount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `confirm_rec` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `trans_id`, `user`, `description`, `ammount`, `currency`, `purchase_date`, `confirm_rec`) VALUES
(1, 'ch_3Jxy4zDjJ2KQm7KO13MiBfAY', '51395184', 'STANDARD Plan', '7.5', 'USD', '20 Nov 2021', '0'),
(2, 'ch_3Jxy70DjJ2KQm7KO1iEzSi3m', '73560212', 'PREMIUM Plan', '9', 'USD', '20 Nov 2021', '0'),
(3, 'ch_3Jxy7zDjJ2KQm7KO3sChf4B5', '94494212', 'PREMIUM Plan', '18', 'USD', '20 Nov 2021', '0'),
(4, 'ch_3Jy0p4DjJ2KQm7KO08SkT3Ck', '12892835', 'PREMIUM Plan', '9', 'USD', '21 Nov 2021', '0'),
(5, 'ch_3JyFI5DjJ2KQm7KO0tURV3lM', '93235673', 'PREMIUM Plan', '18', 'USD', '21 Nov 2021', '0'),
(6, 'ch_3K0kokDjJ2KQm7KO2wU5xPjb', '34818131', 'STANDARD Plan', '7.5', 'USD', '28 Nov 2021', '0'),
(7, 'ch_3K3lt7DjJ2KQm7KO0NmHeXUF', '94494212', 'PREMIUM Plan', '18', 'USD', '06 Dec 2021', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_used_coupons`
--

CREATE TABLE `tbl_used_coupons` (
  `id` int(50) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_used_coupons`
--

INSERT INTO `tbl_used_coupons` (`id`, `coupon`, `user`) VALUES
(1, '001', '51395184'),
(2, '001', '73560212'),
(3, '001', '12892835'),
(4, '001', '34818131');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(50) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `security` varchar(255) NOT NULL,
  `reg_date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'user.svg',
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `badge` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `email`, `username`, `status`, `security`, `reg_date`, `image`, `role`, `badge`) VALUES
(23654210, 'Sonya', 'Matveeva', 'isip_s.p.matveeva@mpt.ru', 'matveys_', '1', '$2y$10$nuwid5r7p/ej5SE6CdLDD.f65wJ8an8r92fuEl8q52bB9qgbqbLie', '27-06-2020', 'avator23654210647.jpg', 'admin', '1'),
(94494212, 'Sonya', 'Matveeva', 'matveevasonya23@icloud.com', 'matveys', '1', '$2y$10$yNgWRKQC1m5POrix19UAHe6X7yov9pRbydv0GvGfNCioGuhKjlxR2', '20-11-2021', 'avator94494212865.jpg', 'user', '1'),
(51395184, 'Victoria', 'Hazen', 'vici.h@gmail.com', 'Vick', '1', '$2y$10$MDxb22eBxqn8HHnXBYrqpOWI5te9kahEou78rIxQaXJ1ybj.2vGma', '20-11-2021', 'avator51395184583.jpg', 'user', '1'),
(73560212, 'Pasha', 'Matveev', 'pasha.filiffi@gmail.com', 'matveyp', '1', '$2y$10$e3uhKtSTgMsu4EcLTXP2zeXpjAWebBDZr39Ml0yB5eLWCXRUqtFfq', '20-11-2021', 'avator73560212851.jpg', 'user', '1'),
(34818131, 'Test', 'Mail', 'simba1703mufasa@gmail.com', 'hello', '1', '$2y$10$3Y/PDxu2WG7wFSGbcpbmOuFAWJG35S.oybto5qfHdv9ZXmIe3z74S', '20-11-2021', 'user.svg', 'user', '0'),
(60603203, 'Alisha', 'Maylo', 'al.may1209@gmail.com', 'alisha', '1', '$2y$10$cBPTfxiLYfn0U//nsNXL0uwEHONWowL2GXKY3yWTVqwfsuLE6O3Hq', '20-11-2021', 'user.svg', 'user', '0'),
(12892835, 'Vova', 'Krasny', 'nikita4580@gmail.com', 'pro100vova', '1', '$2y$10$3mckbeFHzbtbLwH35uUe8uDtq23kvFlUaXPRqDhqW56YoMN.yd/zu', '21-11-2021', 'avator12892835685.jpg', 'user', '0'),
(63049377, 'Freek ', 'Loan', 'freemail@gmail.com', 'free123', '1', '$2y$10$wshDSL7HKfAWLzBpxGzRyeuW.61fO.lu3tdrr7.6kvW3fRE4f0q6y', '21-11-2021', 'user.svg', 'user', '0'),
(93235673, 'Zoya', 'Baturina', 'matveevazoya@mail.ru', 'matveyz', '1', '$2y$10$5.bhwRUsUKdJB1ZXo11rCuvTnt6qEuMfZqn4TZHsadr6C1t.b.fCm', '21-11-2021', 'avator93235673469.jpg', 'user', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_user_plans`
--

CREATE TABLE `tbl_user_plans` (
  `id` int(50) NOT NULL,
  `user` varchar(255) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `max_size` int(255) NOT NULL DEFAULT 480
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_user_plans`
--

INSERT INTO `tbl_user_plans` (`id`, `user`, `plan_name`, `purchase_date`, `expire_date`, `max_size`) VALUES
(6, '73560212', 'PREMIUM Plan', '20 Nov 2021', '2021-12-20 09:15:51', 1080),
(5, '51395184', 'STANDARD Plan', '20 Nov 2021', '2021-12-20 09:10:28', 720),
(13, '94494212', 'PREMIUM Plan', '06 Dec 2021', '2022-01-06 09:25:52', 1080),
(10, '12892835', 'PREMIUM Plan', '21 Nov 2021', '2021-12-21 12:09:38', 1080),
(11, '93235673', 'PREMIUM Plan', '21 Nov 2021', '2021-12-21 03:36:47', 1080),
(12, '34818131', 'STANDARD Plan', '28 Nov 2021', '2021-12-28 01:40:10', 720);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_views`
--

CREATE TABLE `tbl_views` (
  `id` int(50) NOT NULL,
  `item` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `view_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_views`
--

INSERT INTO `tbl_views` (`id`, `item`, `ip`, `view_date`) VALUES
(1, '459939805381', '::1', '2021-11-20 03:15:27'),
(2, '993841707672', '::1', '2021-11-20 03:58:16'),
(3, '784828048015', '::1', '2021-11-20 04:27:55'),
(4, '618048761684', '::1', '2021-11-20 04:36:04'),
(5, '363780636936', '::1', '2021-11-20 04:46:59'),
(6, '787032584688', '::1', '2021-11-20 05:12:50'),
(7, '737266811638', '::1', '2021-11-20 05:32:34'),
(8, '030013514997', '::1', '2021-11-20 05:52:47'),
(9, '824435624225', '::1', '2021-11-20 06:13:10'),
(10, '070630302678', '::1', '2021-11-20 06:18:42'),
(11, '427281733607', '::1', '2021-11-20 06:28:33'),
(12, '363780636936', '127.0.0.1', '2021-11-24 08:44:21'),
(13, '070630302678', '127.0.0.1', '2021-11-27 01:19:04'),
(14, '030013514997', '127.0.0.1', '2021-11-30 12:19:26'),
(15, '618048761684', '127.0.0.1', '2021-11-30 03:52:55'),
(16, '320369221224', '::1', '2021-12-12 09:41:21'),
(17, '702915168105', '::1', '2021-12-12 09:41:40'),
(18, '060697796592', '::1', '2021-12-12 10:08:24'),
(19, '973879310217', '::1', '2021-12-12 12:35:43'),
(20, '763984414814', '::1', '2021-12-18 02:01:07');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_web_info`
--

CREATE TABLE `tbl_web_info` (
  `name` varchar(50) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `top_text` varchar(255) NOT NULL DEFAULT 'Movies & TV Shows, Online cinema',
  `keywords` longtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT 'Movies Database website. Download free in 720p, 1080p and 3D quality. The fastest downloads at the smallest size.',
  `auth_bg` varchar(255) NOT NULL DEFAULT 'bg.jpg',
  `currency` varchar(255) DEFAULT '$',
  `iso` varchar(255) NOT NULL DEFAULT 'USD',
  `guest_view` varchar(255) NOT NULL DEFAULT '1',
  `item_detail_bg` varchar(255) NOT NULL DEFAULT 'details.jpg',
  `custom_script` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tbl_web_info`
--

INSERT INTO `tbl_web_info` (`name`, `icon`, `logo`, `email`, `phone`, `timezone`, `top_text`, `keywords`, `description`, `auth_bg`, `currency`, `iso`, `guest_view`, `item_detail_bg`, `custom_script`) VALUES
('Cineview', 'favicon839.png', 'logo016.png', 'cineniew.smpt.001@gmail.com', '+1 234 567-89-00', 'America/Los_Angeles', 'Movies & TV Shows', 'Movies, Shows, Online cinema, watch', 'Movies Database website. Download free in 720p, 1080p and 3D quality. The fastest downloads at the smallest size.', 'authpages581.jpg', '$', 'usd', '1', 'itemdetails349.jpg', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_episodes`
--
ALTER TABLE `tbl_episodes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_episode_subs`
--
ALTER TABLE `tbl_episode_subs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_genres`
--
ALTER TABLE `tbl_genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Индексы таблицы `tbl_paypal`
--
ALTER TABLE `tbl_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_plans`
--
ALTER TABLE `tbl_plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_privacy`
--
ALTER TABLE `tbl_privacy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD PRIMARY KEY (`user`);

--
-- Индексы таблицы `tbl_single_links`
--
ALTER TABLE `tbl_single_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_single_subs`
--
ALTER TABLE `tbl_single_subs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_smtp`
--
ALTER TABLE `tbl_smtp`
  ADD PRIMARY KEY (`server`);

--
-- Индексы таблицы `tbl_stripe`
--
ALTER TABLE `tbl_stripe`
  ADD PRIMARY KEY (`pub_key`);

--
-- Индексы таблицы `tbl_timezones`
--
ALTER TABLE `tbl_timezones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_country_code` (`country_code`),
  ADD KEY `idx_zone_name` (`zone_name`);

--
-- Индексы таблицы `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_used_coupons`
--
ALTER TABLE `tbl_used_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_user_plans`
--
ALTER TABLE `tbl_user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_views`
--
ALTER TABLE `tbl_views`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_web_info`
--
ALTER TABLE `tbl_web_info`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT для таблицы `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tbl_episodes`
--
ALTER TABLE `tbl_episodes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `tbl_episode_subs`
--
ALTER TABLE `tbl_episode_subs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tbl_genres`
--
ALTER TABLE `tbl_genres`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `c_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tbl_paypal`
--
ALTER TABLE `tbl_paypal`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_privacy`
--
ALTER TABLE `tbl_privacy`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_reset_tokens`
--
ALTER TABLE `tbl_reset_tokens`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tbl_single_links`
--
ALTER TABLE `tbl_single_links`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `tbl_single_subs`
--
ALTER TABLE `tbl_single_subs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tbl_timezones`
--
ALTER TABLE `tbl_timezones`
  MODIFY `zone_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT для таблицы `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tbl_used_coupons`
--
ALTER TABLE `tbl_used_coupons`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tbl_user_plans`
--
ALTER TABLE `tbl_user_plans`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tbl_views`
--
ALTER TABLE `tbl_views`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
