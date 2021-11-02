-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2021 at 07:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bouteilles`
--

CREATE TABLE `bouteilles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_img` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_saq` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix_saq` double(8,2) DEFAULT NULL,
  `url_saq` char(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `format_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bouteilles`
--

INSERT INTO `bouteilles` (`id`, `nom`, `pays`, `url_img`, `description`, `code_saq`, `prix_saq`, `url_saq`, `created_at`, `updated_at`, `type_id`, `format_id`, `user_id`) VALUES
(1, 'Borsao Seleccion', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/10324623_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 10324623', '10324623', 11.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/borsao-seleccion/10324623', NULL, NULL, 1, 1, 1),
(2, 'Monasterio de Las Vinas Gran Reserva', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/10359156_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 10359156', '10359156', 19.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/monasterio-de-las-vinas-gran-reserva/10359156', NULL, NULL, 1, 1, 1),
(3, 'Castano Hecula', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/11676671_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 11676671', '11676671', 12.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/castano-hecula/11676671', NULL, NULL, 1, 1, 1),
(4, 'Campo Viejo Tempranillo Rioja', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/11462446_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 11462446', '11462446', 14.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/campo-viejo-tempranillo-rioja/11462446', NULL, NULL, 1, 1, 1),
(5, 'Bodegas Atalaya Laya 2017', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/12375942_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 12375942', '12375942', 17.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/bodegas-atalaya-laya-2017/12375942', NULL, NULL, 1, 1, 1),
(6, 'Vin Vault Pinot Grigio', 'États-Unis', '//s7d9.scene7.com/is/image/SAQ/13467048_is?$saq-rech-prod-gril$', 'Vin blanc\r\n         \r\n      \r\n      \r\n      États-Unis, 3 L\r\n      \r\n      \r\n      Code SAQ : 13467048', '13467048', NULL, 'https://www.saq.com/page/fr/saqcom/vin-blanc/vin-vault-pinot-grigio/13467048', NULL, NULL, 2, 9, 1),
(7, 'Huber Riesling Engelsberg 2017', 'Autriche', '//s7d9.scene7.com/is/image/SAQ/13675841_is?$saq-rech-prod-gril$', 'Vin blanc\r\n         \r\n      \r\n      \r\n      Autriche, 750 ml\r\n      \r\n      \r\n      Code SAQ : 13675841', '13675841', 22.00, 'https://www.saq.com/page/fr/saqcom/vin-blanc/huber-riesling-engelsberg-2017/13675841', NULL, NULL, 2, 1, 1),
(8, 'Dominio de Tares Estay Castilla y Léon 2015', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/13802571_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 13802571', '13802571', 18.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/dominio-de-tares-estay-castilla-y-leon-2015/13802571', NULL, NULL, 1, 1, 1),
(9, 'Tessellae Old Vines Côtes du Roussillon 2016', 'France', '//s7d9.scene7.com/is/image/SAQ/12216562_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      France, 750 ml\r\n      \r\n      \r\n      Code SAQ : 12216562', '12216562', 21.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/tessellae-old-vines-cotes-du-roussillon-2016/12216562', NULL, NULL, 1, 1, 1),
(10, 'Tenuta Il Falchetto Bricco Paradiso -... 2015', 'Italie', '//s7d9.scene7.com/is/image/SAQ/13637422_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Italie, 750 ml\r\n      \r\n      \r\n      Code SAQ : 13637422', '13637422', 34.00, 'https://www.saq.com/page/fr/saqcom/vin-rouge/tenuta-il-falchetto-bricco-paradiso---barbera-dasti-superiore-docg-2015/13637422', NULL, NULL, 1, 1, 1),
(11, '1000 Stories Zinfandel Californie', 'États-Unis', 'https://www.saq.com/media/catalog/product/1/3/13584455-1_1578538222.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | États-Unis', '13584455', 28.00, 'https://www.saq.com/fr/13584455', NULL, NULL, 1, 1, 1),
(12, '11th Hour Cellars Pinot Noir', 'États-Unis', 'https://www.saq.com/media/catalog/product/1/3/13966470-1_1578546924.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | États-Unis', '13966470', 18.00, 'https://www.saq.com/fr/13966470', NULL, NULL, 1, 1, 1),
(13, '13th Street Winery Gamay 2019', 'Canada', 'https://www.saq.com/media/catalog/product/1/2/12705631-1_1582140016.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Canada', '12705631', 20.00, 'https://www.saq.com/fr/12705631', NULL, NULL, 1, 1, 1),
(14, '13th Street Winery Red Palette 2016', 'Canada', 'https://www.saq.com/media/catalog/product/1/2/12687823-1_1578361222.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Canada', '12687823', 19.00, 'https://www.saq.com/fr/12687823', NULL, NULL, 1, 1, 1),
(15, '14 Hands Cabernet-Sauvignon Columbia Valley', 'États-Unis', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/ac_small.png?width=20&height=20', 'Vin rouge | 750 ml | États-Unis', '13876247', 15.00, 'https://www.saq.com/fr/13876247', NULL, NULL, 1, 1, 1),
(16, '14 Hands Hot to Trot Columbia Valley', 'États-Unis', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/ac_small.png?width=20&height=20', 'Vin rouge | 750 ml | États-Unis', '12245611', 15.00, 'https://www.saq.com/fr/12245611', NULL, NULL, 1, 1, 1),
(17, '19 Crimes Cabernet-Sauvignon Limestone Coast', 'Australie', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/ac_small.png?width=20&height=20', 'Vin rouge | 750 ml | Australie', '12824197', 19.00, 'https://www.saq.com/fr/12824197', NULL, NULL, 1, 1, 1),
(18, '19 Crimes Cali 2020', 'États-Unis', 'https://www.saq.com/media/catalog/product/1/4/14713423-1_1616156727.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | États-Unis', '14713423', 20.00, 'https://www.saq.com/fr/14713423', NULL, NULL, 1, 1, 1),
(19, '19 Crimes Shiraz/Grenache/Mataro', 'Australie', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/as_small.png?width=20&height=20', 'Vin rouge | 750 ml | Australie', '12073995', 19.00, 'https://www.saq.com/fr/12073995', NULL, NULL, 1, 1, 1),
(20, '19 Crimes The Uprising', 'Australie', 'https://www.saq.com/media/catalog/product/1/4/14715293-1_1615248955.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 375 ml | Australie', '14715293', 9.00, 'https://www.saq.com/fr/14715293', NULL, NULL, 1, 6, 1),
(21, '19 Crimes The Warden 2017', 'Australie', 'https://www.saq.com/media/catalog/product/1/3/13846179-1_1578543327.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Australie', '13846179', 30.00, 'https://www.saq.com/fr/13846179', NULL, NULL, 1, 1, 1),
(22, '3 Badge Leese-Fitch Merlot 2015', 'États-Unis', 'https://www.saq.com/media/wysiwyg/placeholder/category/06.png', 'Vin rouge | 750 ml | États-Unis', '13523011', 18.00, 'https://www.saq.com/fr/13523011', NULL, NULL, 1, 1, 1),
(23, '3 de Valandraud 2016', 'France', 'https://www.saq.com/media/catalog/product/1/3/13392031-1_1578535218.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | France', '13392031', 53.00, 'https://www.saq.com/fr/13392031', NULL, NULL, 1, 1, 1),
(24, '3 de Valandraud St-Émilion Grand Cru 2015', 'France', 'https://www.saq.com/media/catalog/product/1/4/14767624-1_1631204434.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 1,5 L | France', '14767624', 98.00, 'https://www.saq.com/fr/14767624', NULL, NULL, 1, 8, 1),
(25, '3 Rings Shiraz 2017', 'Australie', 'https://www.saq.com/media/catalog/product/1/2/12815725-1_1603713617.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Australie', '12815725', 22.00, 'https://www.saq.com/fr/12815725', NULL, NULL, 1, 1, 1),
(26, '655 Miles Cabernet Sauvignon Lodi', 'États-Unis', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/as_small.png?width=20&height=20', 'Vin rouge | 750 ml | États-Unis', '14139863', 15.00, 'https://www.saq.com/fr/14139863', NULL, NULL, 1, 1, 1),
(27, '7Colores Gran Reserva Valle Casablanca 2017', 'Chili', 'https://www.saq.com/media/catalog/product/1/4/14208427-1_1606227648.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Chili', '14208427', 19.00, 'https://www.saq.com/fr/14208427', NULL, NULL, 1, 1, 1),
(28, 'A Mandria di Signadore Patrimonio 2019', 'France', 'https://www.saq.com/media/catalog/product/1/4/14736271-1_1624654560.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | France', '14736271', 42.00, 'https://www.saq.com/fr/14736271', NULL, NULL, 1, 1, 1),
(29, 'A Mandria di Signadore Patrimonio 2018', 'France', 'https://www.saq.com/media/catalog/product/1/1/11908161-1_1580629223.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | France', '11908161', 41.00, 'https://www.saq.com/fr/11908161', NULL, NULL, 1, 1, 1),
(30, 'A Occhipinti Rosso Arcaico 2019', 'Italie', 'https://www.saq.com/media/catalog/product/1/4/14651867-1_1612271137.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Italie', '14651867', 30.00, 'https://www.saq.com/fr/14651867', NULL, NULL, 1, 1, 1),
(31, 'A thousand Lives Cabernet-Sauvignon Mendoza', 'Argentine', 'https://www.saq.com/media/wysiwyg/product_tags/pastille_gout/as_small.png?width=20&height=20', 'Vin rouge | 750 ml | Argentine', '14250211', 9.00, 'https://www.saq.com/fr/14250211', NULL, NULL, 1, 1, 1),
(32, 'A.A. Badenhorst Family Blend 2018', 'Afrique du Sud', 'https://www.saq.com/media/catalog/product/1/2/12275298-1_1581958830.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Afrique du Sud', '12275298', 41.00, 'https://www.saq.com/fr/12275298', NULL, NULL, 1, 1, 1),
(33, 'A.A. Badenhorst The Curator 2019', 'Afrique du Sud', 'https://www.saq.com/media/catalog/product/1/2/12819435-1_1589314084.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Afrique du Sud', '12819435', 13.00, 'https://www.saq.com/fr/12819435', NULL, NULL, 1, 1, 1),
(34, 'AA Badenhorst Swartland Papegaai 2019', 'Afrique du Sud', 'https://www.saq.com/media/catalog/product/1/3/13632306-1_1578539713.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | Afrique du Sud', '13632306', 19.00, 'https://www.saq.com/fr/13632306', NULL, NULL, 1, 1, 1),
(89, 'Castano Hecula', 'Espagne', 'http://127.0.0.1:8000/storage/uploads/1635281758_red-wine-poured-into-glass-260nw-1612805212.jpg', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 11676671', NULL, NULL, NULL, '2021-10-27 00:55:58', '2021-10-27 00:55:58', 2, 1, 2),
(90, 'Borsao Seleccion', 'Espagne', 'http://127.0.0.1:8000/storage/uploads/1635358467_red-wine-poured-into-glass-260nw-1612805212.jpg', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 10324623', NULL, NULL, NULL, '2021-10-27 22:14:27', '2021-10-27 22:14:27', 2, 1, 5),
(91, '12', 'asa', NULL, NULL, NULL, NULL, NULL, '2021-10-28 01:04:10', '2021-10-28 01:04:10', 1, 1, 5),
(92, '4343', 'Espag', '//s7d9.scene7.com/is/image/SAQ/10324623_is?$saq-rech-prod-gril$', 'Vin rouge', NULL, NULL, NULL, '2021-10-28 01:43:41', '2021-10-28 01:43:41', 7, 11, 5),
(93, '1', 'jj', 'http://127.0.0.1:8000/assets/icon/bouteille-cellier.svg', 'jj', NULL, NULL, NULL, '2021-10-28 02:25:52', '2021-10-28 02:25:52', 1, 13, 5),
(94, 'a', 'gg', 'http://127.0.0.1:8000/assets/icon/bouteille-cellier.svg', '33', NULL, NULL, NULL, '2021-10-28 02:26:32', '2021-10-28 02:26:32', 1, 14, 5),
(95, 'Borsao', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/10324623_is?$saq-rech-prod-gril$', 'Vin \r\n         \r\n      \r\n      \r\n      Espagne, \r\n      \r\n      Code SAQ : 10324623', NULL, NULL, NULL, '2021-10-28 06:31:06', '2021-10-28 06:31:06', 1, 8, 5),
(96, 'Castano Hecula', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/11676671_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 11676671', NULL, NULL, NULL, '2021-10-28 17:59:12', '2021-10-28 17:59:12', 7, 11, 5),
(97, 'Castano Heculawww', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/11676671_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 11676671', NULL, NULL, NULL, '2021-10-28 18:02:49', '2021-10-28 18:02:49', 8, 11, 5),
(98, 'Bodegas Atalaya Laya 2017', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/12375942_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 12375942', NULL, NULL, NULL, '2021-10-28 18:45:57', '2021-10-28 18:45:57', 5, 1, 5),
(99, 'Dominio de Tares Estay Castilla y Léon 2015', 'Espagne', '//s7d9.scene7.com/is/image/SAQ/13802571_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      Espagne, 750 ml\r\n      \r\n      \r\n      Code SAQ : 13802571', NULL, NULL, NULL, '2021-10-29 00:20:22', '2021-10-29 00:20:22', 1, 9, 5),
(100, '21', 'États-Unis', 'http://localhost:8000/storage/uploads/1635460748_red-wine-poured-into-glass-260nw-1612805212.jpg', '1', NULL, NULL, NULL, '2021-10-29 02:39:08', '2021-10-29 02:39:08', 1, 5, 5),
(101, 'aa', 'a', 'http://localhost:8000/storage/uploads/1635461051_red-wine-poured-into-glass-260nw-1612805212.jpg', 'a', NULL, NULL, NULL, '2021-10-29 02:44:11', '2021-10-29 02:44:11', 1, 15, 5),
(102, 'aa', 'États-Unis', NULL, 'a', NULL, NULL, NULL, '2021-10-29 03:04:20', '2021-10-29 03:04:20', 2, 15, 5),
(103, 'aa', 'aa', 'http://localhost:8000/uploads/1635462415_pw2-mcd.png', 'a', NULL, NULL, NULL, '2021-10-29 03:06:55', '2021-10-29 03:06:55', 1, 5, 5),
(104, 'aa', 'Australie', 'http://localhost:8000/uploads/1635463202_pw2-mcd.png', 'aa', NULL, NULL, NULL, '2021-10-29 03:20:02', '2021-10-29 03:20:02', 2, 14, 5),
(105, 'q', 'États-Unis', 'http://localhost:8000/uploads/1635463261_pw2-mcd.png', 'qq', NULL, NULL, NULL, '2021-10-29 03:21:01', '2021-10-29 03:21:01', 2, 14, 5),
(106, '1', 'Espagne', 'http://localhost:8000/storage/uploads/1635464891_pw2-mcd.png', 'wq', NULL, NULL, NULL, '2021-10-29 03:48:11', '2021-10-29 03:48:11', 1, 15, 5),
(107, 'e', 'Espagne', 'http://localhost:8000/storage/uploads/1635465069_pw2-mcd.png', 're', NULL, NULL, NULL, '2021-10-29 03:51:09', '2021-10-29 03:51:09', 1, 5, 5),
(108, 'qq', 'a', 'http://localhost:8000/storage/uploads/1635465126_pw2-mcd.png', 'sa', NULL, NULL, NULL, '2021-10-29 03:52:06', '2021-10-29 03:52:06', 1, 15, 5),
(109, 'saa', 'États-Unis', 'C:\\Users\\Brian\\Desktop\\ecole\\projet-web-2\\vino_etu\\public/img/1635465518_red-wine-poured-into-glass-260nw-1612805212.jpg', 'asa', NULL, NULL, NULL, '2021-10-29 03:58:38', '2021-10-29 03:58:38', 1, 6, 5),
(110, '43', 'États-Unis', 'http://localhost:8000/img/1635465687_pw2-mcd.png', 'w', NULL, NULL, NULL, '2021-10-29 04:01:27', '2021-10-29 04:01:27', 1, 5, 5),
(111, 'qw', 'Espagne', 'http://localhost:8000/img/1635466712_pw2-mcd.png', 'qw', NULL, NULL, NULL, '2021-10-29 04:18:32', '2021-10-29 04:18:32', 1, 15, 5),
(112, 'Tessellae Old Vines Côtes du Roussillon 2016', 'France', '//s7d9.scene7.com/is/image/SAQ/12216562_is?$saq-rech-prod-gril$', 'Vin rouge\r\n         \r\n      \r\n      \r\n      France, 750 ml\r\n      \r\n      \r\n      Code SAQ : 12216562', NULL, NULL, NULL, '2021-10-30 00:58:56', '2021-10-30 00:58:56', 6, 1, 6),
(113, '3 de Val016', 'France', 'https://www.saq.com/media/catalog/product/1/3/13392031-1_1578535218.png?quality=80&fit=bounds&height=166&width=111&canvas=111:166', 'Vin rouge | 750 ml | France', NULL, NULL, NULL, '2021-10-30 02:17:58', '2021-10-30 02:17:58', 6, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `celliers`
--

CREATE TABLE `celliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` char(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` char(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `celliers`
--

INSERT INTO `celliers` (`id`, `nom`, `localisation`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Rouges', 'Maison Montreal', NULL, NULL, 2),
(2, 'Blanc', 'Chalet Saint lin', NULL, NULL, 2),
(3, 'Premier cellier de Brian', 'Montreal', NULL, NULL, 3),
(12, 'Castano Hecula', 'qqw', '2021-10-28 19:49:49', '2021-10-28 19:49:49', 5),
(13, '12', '12', '2021-10-28 20:39:04', '2021-10-28 20:39:04', 5),
(14, 'qq', 'ww', '2021-10-29 04:18:14', '2021-10-29 04:18:14', 5),
(15, 'asa', 'asda', '2021-10-29 06:52:19', '2021-10-29 06:52:19', 5),
(18, '11th Hour Cellars Pinot Noir', '1', '2021-10-30 05:00:45', '2021-10-30 06:10:13', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cellier_bouteilles`
--

CREATE TABLE `cellier_bouteilles` (
  `date_achat` date DEFAULT NULL,
  `garde_jusqua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` tinyint(4) DEFAULT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` double(8,2) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `millesime` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cellier_id` bigint(20) UNSIGNED NOT NULL,
  `bouteille_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cellier_bouteilles`
--

INSERT INTO `cellier_bouteilles` (`date_achat`, `garde_jusqua`, `note`, `commentaire`, `prix`, `quantite`, `millesime`, `created_at`, `updated_at`, `cellier_id`, `bouteille_id`) VALUES
('2021-10-25', NULL, NULL, NULL, 0.00, 0, 2012, '2021-10-29 03:18:58', '2021-10-29 03:18:58', 12, 5),
('2021-10-24', NULL, 4, 'a', 0.00, 0, 2014, '2021-10-29 03:19:29', '2021-10-29 03:19:29', 12, 10),
('2021-10-18', NULL, 3, NULL, 0.00, 0, 2011, '2021-10-29 03:20:02', '2021-10-29 03:20:02', 12, 104),
('2021-10-12', 'q', NULL, 'q', 0.00, 0, 2009, '2021-10-29 03:21:01', '2021-10-29 03:21:01', 12, 105),
('2021-10-26', NULL, NULL, NULL, 0.00, 0, 2010, '2021-10-29 03:48:11', '2021-10-29 03:48:11', 12, 106),
('2021-10-19', NULL, NULL, NULL, 0.00, 0, 2010, '2021-10-29 03:51:09', '2021-10-29 03:51:09', 12, 107),
('2021-10-25', NULL, NULL, NULL, 0.00, 0, 2011, '2021-10-29 03:52:06', '2021-10-29 03:52:06', 12, 108),
('2021-10-18', NULL, NULL, NULL, 0.00, 0, 2012, '2021-10-29 03:58:38', '2021-10-29 03:58:38', 12, 109),
('2021-10-18', 'ww', NULL, 'ww', 0.00, 0, 2009, '2021-10-29 04:01:27', '2021-10-29 04:01:27', 12, 110),
('0000-00-00', NULL, NULL, NULL, 0.00, 1, 0000, '2021-10-28 20:42:11', '2021-10-28 20:42:11', 13, 5),
(NULL, NULL, NULL, NULL, 0.00, 0, 2010, '2021-10-29 04:18:32', '2021-10-29 04:18:32', 14, 111),
(NULL, NULL, NULL, NULL, 0.00, 0, 0000, '2021-10-29 06:52:31', '2021-10-29 06:52:31', 15, 5),
('2021-10-29', NULL, 3, NULL, 17.00, 2, 0000, '2021-10-30 05:36:44', '2021-10-30 05:36:44', 18, 5),
('2021-10-29', NULL, 3, NULL, 17.00, 1, 2016, '2021-10-30 06:08:44', '2021-10-30 06:08:44', 18, 5),
('2021-10-25', NULL, 3, NULL, 17.00, 3, 2019, '2021-10-30 08:56:19', '2021-10-30 08:56:19', 18, 5),
('2021-10-30', NULL, 2, NULL, 20.00, 1, 0000, '2021-10-31 06:26:00', '2021-10-31 06:26:00', 18, 13);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taille` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `nom`, `taille`, `created_at`, `updated_at`) VALUES
(1, 'Bouteille', 75.00, NULL, NULL),
(5, 'Quart', 20.00, NULL, NULL),
(6, 'Fillette ou Demie', 37.50, NULL, NULL),
(7, 'Medium ou Pinte', 50.00, NULL, NULL),
(8, 'Magnum', 150.00, NULL, NULL),
(9, 'Jeroboam', 300.00, NULL, NULL),
(10, 'Rehoboam', 450.00, NULL, NULL),
(11, 'Mathusalem', 600.00, NULL, NULL),
(12, 'Salmanazar', 900.00, NULL, NULL),
(13, 'Balthazar', 1200.00, NULL, NULL),
(14, 'Nabuchodonosor', 1500.00, NULL, NULL),
(15, 'Salomon', 1800.00, NULL, NULL),
(16, 'Souverain', 2625.00, NULL, NULL),
(17, 'Primat', 2700.00, NULL, NULL),
(18, 'Melchizedec ou Midas', 3000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_19_181821_create_types_table', 1),
(6, '2021_10_19_181835_create_formats_table', 1),
(7, '2021_10_19_181857_create_bouteilles_table', 1),
(8, '2021_10_19_181911_create_celliers_table', 1),
(9, '2021_10_19_181928_create_cellier_bouteilles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mot_de_passe_resets`
--

CREATE TABLE `mot_de_passe_resets` (
  `courriel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Rouge', NULL, NULL),
(2, 'Blanc', NULL, NULL),
(5, 'Champagne', NULL, NULL),
(6, 'Champagne rosé', NULL, NULL),
(7, 'Mousseux', NULL, NULL),
(8, 'Rosé', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` char(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courriel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courriel_verified_at` timestamp NULL DEFAULT NULL,
  `password` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `courriel`, `courriel_verified_at`, `password`, `date_naissance`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.ca', NULL, '$2y$10$ykrLJaVjSPAeQaiUDXMGQe4B/xOMKPQuN/b1AJ.TGQEnIK.Me120a', '0000-00-00', 1, NULL, '2021-10-27 00:04:37', '2021-10-27 00:04:37'),
(2, 'Julian', 'julian@julian.ca', NULL, '123456', '2000-10-01', NULL, NULL, NULL, NULL),
(3, 'Brian', 'brian@brian.ca', NULL, '123456', '2000-01-01', NULL, NULL, NULL, NULL),
(5, '123', '123@dfg.s', NULL, '$2y$10$emidyF/IvQNsFX/fbc1YYOT8Wbin7Hi7Uq29AzfXAPhOVyh7LVUdq', '0000-00-00', NULL, NULL, '2021-10-27 02:38:49', '2021-10-27 02:38:49'),
(6, 'Castano Hecula', 'brian@brian.com', NULL, '$2y$10$YZIUNesB2ulkXKzEp26zUeTvDofmfhlL1Ep0cHDZvMemhUIvxfRxu', '1234-09-09', NULL, NULL, '2021-10-29 18:41:08', '2021-10-29 18:41:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bouteilles`
--
ALTER TABLE `bouteilles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bouteilles_type_id_foreign` (`type_id`),
  ADD KEY `bouteilles_format_id_foreign` (`format_id`),
  ADD KEY `bouteilles_user_id_foreign` (`user_id`);

--
-- Indexes for table `celliers`
--
ALTER TABLE `celliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `celliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `cellier_bouteilles`
--
ALTER TABLE `cellier_bouteilles`
  ADD PRIMARY KEY (`cellier_id`,`bouteille_id`,`millesime`) USING BTREE,
  ADD KEY `fk_cellier_bouteilles_celliers1_idx` (`cellier_id`),
  ADD KEY `fk_cellier_bouteilles_bouteilles1_idx` (`bouteille_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mot_de_passe_resets`
--
ALTER TABLE `mot_de_passe_resets`
  ADD KEY `mot_de_passe_resets_courriel_index` (`courriel`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_courriel_unique` (`courriel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bouteilles`
--
ALTER TABLE `bouteilles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `celliers`
--
ALTER TABLE `celliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bouteilles`
--
ALTER TABLE `bouteilles`
  ADD CONSTRAINT `bouteilles_format_id_foreign` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `bouteilles_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `bouteilles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `celliers`
--
ALTER TABLE `celliers`
  ADD CONSTRAINT `celliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cellier_bouteilles`
--
ALTER TABLE `cellier_bouteilles`
  ADD CONSTRAINT `fk_cellier_bouteilles_bouteilles1` FOREIGN KEY (`bouteille_id`) REFERENCES `bouteilles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cellier_bouteilles_celliers1` FOREIGN KEY (`cellier_id`) REFERENCES `celliers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
