-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 02:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rstacode`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert_balance`
--

CREATE TABLE `alert_balance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 needed /2 accepted /3 deny',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alert_balance`
--

INSERT INTO `alert_balance` (`id`, `user_id`, `balance`, `phonenumber`, `status`, `created_at`, `updated_at`) VALUES
(58, 1, 20000, '07701234567', 2, '2020-11-24 06:55:30', '2020-11-24 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_server` int(11) NOT NULL COMMENT '0 no / 1 yes	',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `json_video` longtext CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `user_id`, `is_server`, `title`, `description`, `image`, `price`, `json_video`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'HTML 5', NULL, 'html.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KHZcr9eTnWmEltmsT7EIjza\"', '2020-11-01 06:57:42', '2020-11-01 06:57:42'),
(3, 1, 0, 'CSS 3', NULL, 'css.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KHk1J4jiMlbMev8hAOGi6Xg\"', '2020-11-02 08:57:42', '2020-11-02 08:57:42'),
(4, 1, 0, 'Bootstrap 4', NULL, 'bootstrap.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KEmtx7bYmQLYY7ME4Zx-ICW\"', '2020-11-03 09:57:42', '2020-11-03 09:57:42'),
(5, 1, 0, 'Javascript', NULL, 'js.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KEsOSkWfVf2ttKHRgDv381j\"', '2020-11-04 10:57:42', '2020-11-04 10:57:42'),
(6, 1, 0, 'Jquery', NULL, 'jquery.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KF16wk_8dqCZ8PUpACEeJls\"', '2020-11-05 11:57:42', '2020-11-05 11:57:42'),
(7, 1, 0, 'PHP 7', NULL, 'php.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KFShnI35Y8g3M9eoELmwV7-\"', '2020-11-06 12:57:42', '2020-11-06 12:57:42'),
(8, 1, 0, 'OOP PHP', NULL, 'oop.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KG511T_bdIJO5Y25i3efxub\"', '2020-11-07 13:57:42', '2020-11-07 13:57:42'),
(9, 1, 0, 'Angular Js', NULL, 'angular.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KGD_e4jpT6xntFxsmIUwQxT\"', '2020-11-08 14:57:42', '2020-11-08 14:57:42'),
(10, 1, 0, 'Tips Website', NULL, 'tips.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KFhVbMSlw_UTTtbu_YeBjXS\"', '2020-11-09 15:57:42', '2020-11-09 15:57:42'),
(11, 1, 0, 'Web Hosting', NULL, 'hosting.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KFqEStQapO8DHmyOHEXfoPW\"', '2020-11-10 17:57:42', '2020-11-10 17:57:42'),
(12, 1, 0, 'Ajax', NULL, 'ajax.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KFhfhTSYIZtLiMV1JRwAlbl\"', '2020-11-11 18:57:42', '2020-11-11 18:57:42'),
(13, 1, 0, 'Laravel 7', NULL, 'laravel.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KFslDue4oBCulhkqaPo-ORf\"', '2020-11-12 19:57:42', '2020-11-12 19:57:42'),
(17, 1, 0, 'OOP JS', NULL, 'oopjs.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KEsOSkWfVf2ttKHRgDv381j\"', '2020-11-13 20:57:42', '2020-11-13 20:57:42'),
(20, 1, 1, 'POS Online', 'لەم سەردەمەدا تەکنەلۆجیا بەشێکی گرنگی ژیانی ڕۆژانەمان پێکدێنێت چ لە بواری کاردا بێت یان هەر بوارێکی تر ،ئێمە لێرەدا باس لە بوارێکی گرنگی تەکنەلۆجیا دەکەین کە ڕۆڵێکی گرنکی هەیە لە دنیای کاردا . داتابەیس چییە ؟ داتابەیس بریتیە لە سیستمیکی ئەلکترۆنی کەبەکاردێت بۆ کۆکردنەوەی سەرجەم ئەو زانیاری و داتایانەی کە لە شوێنی کارەکەت هەیە بە مەبەستی ئاسانکردن و بەڕێوەبردنی ئەو زانیاری و داتایانە . بۆچی داتابەیس گرنگە لە کاردا ؟ بۆ ئەوەی تۆ بتوانی بە شێوەیەکی خێراو ئاسان و وردتر بیت لە بەڕێوەبردنی کارەکەت گرنگە داتابەیست هەبێت ،هەروەها دەکرێت بە هۆی سیستمێکی داتابیسەوە بزنسەکەت بەهێزتر بێت . دەکرێت چەند کەسێک لە هەمان کاتدا بەکاری بهێنن کە ئەمەش وادەکات خێراتر ئیشەکانت بە ئەنجام بگەیەنرێت بە شێوەیەکی خێراو ئاسان .', 'pos.svg', 20000, '[{\r\n	\"id\": \"ba849559665347c0933bb7529dd5fea5\",\r\n	\"title\": \"1.mp4\",\r\n	\"description\": \" ناساندنی سیستم\",\r\n	\"upload_time\": 1597018463,\r\n	\"length\": 821,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 181195569,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/KULNtoHIkyWyA.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/KULNtoHIkyWyA.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/KULNtoHIkyWyA.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/KULNtoHIkyWyA.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"c5ea980267454544afebc46b28d8ab1a\",\r\n	\"title\": \"2.mp4\",\r\n	\"description\": \"دامەزراندنی پڕۆژەکە و چەند تایبەتمەندییەک\",\r\n	\"upload_time\": 1597018564,\r\n	\"length\": 597,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 160891569,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/aAD5WIF1oR4wD.240.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/aAD5WIF1oR4wD.480.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/aAD5WIF1oR4wD.720.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/aAD5WIF1oR4wD.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"909bd81648424d1580ded50cf770e03d\",\r\n	\"title\": \"3.mp4\",\r\n	\"description\": \"دروستکردنی چونەژوورەوە و چەندین تایبەتمەندی\",\r\n	\"upload_time\": 1597018640,\r\n	\"length\": 1063,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 299788236,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/g65q1eQBP2phL.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/g65q1eQBP2phL.240.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/g65q1eQBP2phL.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/g65q1eQBP2phL.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"040bb5070b614c19a3af6c6c334c90c3\",\r\n	\"title\": \"4.mp4\",\r\n	\"description\": \" دروستکردنی داشبۆرد و سایدباڕ\",\r\n	\"upload_time\": 1597018736,\r\n	\"length\": 1443,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 444172708,\r\n	\"posters\": [{\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xxpw7lk5BxITZ.480.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xxpw7lk5BxITZ.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xxpw7lk5BxITZ.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/xxpw7lk5BxITZ.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"fd5e3b8022174e118f02e177f31cac78\",\r\n	\"title\": \"5.mp4\",\r\n	\"description\": \"زیادکردنی پەڕەی کاشێر و دروستکردنی کاشێر\",\r\n	\"upload_time\": 1597018824,\r\n	\"length\": 958,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 267912984,\r\n	\"posters\": [{\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/UVAkNX2Y0GWGT.480.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/UVAkNX2Y0GWGT.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/UVAkNX2Y0GWGT.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/UVAkNX2Y0GWGT.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"5900a5cc7f79464cb80c2cd995ea68c7\",\r\n	\"title\": \"6.mp4\",\r\n	\"description\": \"پشاندانی ڤالیدیشنەکانی کاشێر\",\r\n	\"upload_time\": 1597018893,\r\n	\"length\": 1265,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 347886208,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/5PE73dmdmd7A2.240.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/5PE73dmdmd7A2.480.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/5PE73dmdmd7A2.720.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/5PE73dmdmd7A2.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"18cc92d2ea7141b7b2509e13a16e3923\",\r\n	\"title\": \"7.mp4\",\r\n	\"description\": \"دروستکردنی پەڕەی مەندووب\",\r\n	\"upload_time\": 1597018989,\r\n	\"length\": 2325,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 924497515,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8E4LwWohfLpuS.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8E4LwWohfLpuS.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8E4LwWohfLpuS.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/8E4LwWohfLpuS.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"229974134e1e4d548d56acf2dd4f9831\",\r\n	\"title\": \"8.mp4\",\r\n	\"description\": \"پشاندانی مەندووب و سڕینەوەی مەندووب و گۆڕانکاری\",\r\n	\"upload_time\": 1597019213,\r\n	\"length\": 1417,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 601249087,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/IPpSpS2R5nB98.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/IPpSpS2R5nB98.240.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/IPpSpS2R5nB98.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/IPpSpS2R5nB98.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"ceae6af171ac46b0bbc28e28a937e2ea\",\r\n	\"title\": \"9.mp4\",\r\n	\"description\": \" دروستکردنی پەڕەی پشاندانی کاڵا\",\r\n	\"upload_time\": 1597019307,\r\n	\"length\": 1172,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 621022054,\r\n	\"posters\": [{\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/1JdeaaJiYLvoA.480.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/1JdeaaJiYLvoA.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/1JdeaaJiYLvoA.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/1JdeaaJiYLvoA.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"19dce0a5cb124750bce21e04e7514030\",\r\n	\"title\": \"10.mp4\",\r\n	\"description\": \"دروستکردنی پەڕەی کاڵا کەمبووەکان\",\r\n	\"upload_time\": 1597019414,\r\n	\"length\": 337,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 141197983,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/bHtNhnQmB2eTV.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/bHtNhnQmB2eTV.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/bHtNhnQmB2eTV.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/bHtNhnQmB2eTV.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"bd1cbf14b4f040e8842fdbff4e331db6\",\r\n	\"title\": \"11.mp4\",\r\n	\"description\": \"دروستکردنی پەڕەی قەرزەکان\",\r\n	\"upload_time\": 1597019443,\r\n	\"length\": 136,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 33655168,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/kOywQ7KtbH0Bt.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/kOywQ7KtbH0Bt.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/kOywQ7KtbH0Bt.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/kOywQ7KtbH0Bt.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"afa21e5431ca4c4197a4a5c531bd5e12\",\r\n	\"title\": \"12.mp4\",\r\n	\"description\": \"دروستکردنی پەڕەی کاڵا کەمبووەکان\",\r\n	\"upload_time\": 1597019453,\r\n	\"length\": 362,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 157190207,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/2FMc2SyNdKhGa.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/2FMc2SyNdKhGa.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/2FMc2SyNdKhGa.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/2FMc2SyNdKhGa.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"b152b63a65bd49e3ba4dad5c617a83c4\",\r\n	\"title\": \"13.mp4\",\r\n	\"description\": \"دروستکردنی پەڕەی فرۆشراوەکان\",\r\n	\"upload_time\": 1597019479,\r\n	\"length\": 1269,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 342032123,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8TbN6ZOi0yJP0.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8TbN6ZOi0yJP0.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8TbN6ZOi0yJP0.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/8TbN6ZOi0yJP0.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"38c9230841ed4799b6128ef886c1ab04\",\r\n	\"title\": \"14.mp4\",\r\n	\"description\": \"دروستکردنی دۆخی دوکان\",\r\n	\"upload_time\": 1597019534,\r\n	\"length\": 552,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 156127056,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/0eQtpJapXKtoG.720.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/0eQtpJapXKtoG.240.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/0eQtpJapXKtoG.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/0eQtpJapXKtoG.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"d4ec000a3d8344d599da3e52a2fa8f35\",\r\n	\"title\": \"15.mp4\",\r\n	\"description\": \" دابەزاندنی API بۆ ئینکۆد کردنی بارکۆد و جۆرەکانی\",\r\n	\"upload_time\": 1597019625,\r\n	\"length\": 1685,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 848048000,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8A32lsVyqEB4D.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8A32lsVyqEB4D.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/8A32lsVyqEB4D.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/8A32lsVyqEB4D.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"a6b559e39cfa4b95842794c3cbec7d66\",\r\n	\"title\": \"16.mp4\",\r\n	\"description\": \" دابەزاندنی API بۆ چالاک کردنی کامێرا\",\r\n	\"upload_time\": 1597019970,\r\n	\"length\": 967,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 389215678,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xyW16SMiawniN.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xyW16SMiawniN.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xyW16SMiawniN.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/xyW16SMiawniN.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"ed975609f909454eb7ff399a7dd4644d\",\r\n	\"title\": \"17.mp4\",\r\n	\"description\": \"دروستکردنی بەشی فرۆشتن\",\r\n	\"upload_time\": 1597020056,\r\n	\"length\": 1298,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 521228824,\r\n	\"posters\": [{\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/mnrt1dENCZnDg.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/mnrt1dENCZnDg.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/mnrt1dENCZnDg.720.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/mnrt1dENCZnDg.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"cdbe9b38da554728b2d0e400122c4c56\",\r\n	\"title\": \"18.mp4\",\r\n	\"description\": \" ڤالیدەتکردنی فرۆشتنی کاڵا\",\r\n	\"upload_time\": 1597020141,\r\n	\"length\": 1088,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 331573434,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/GwtNLYRomAqXe.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/GwtNLYRomAqXe.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/GwtNLYRomAqXe.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/GwtNLYRomAqXe.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"05245c6b3c3746c2a270fc23f3db0ef7\",\r\n	\"title\": \"19.mp4\",\r\n	\"description\": \"دروستکردنی تەیبڵ لەکاتی فرۆشتنی کاڵا\",\r\n	\"upload_time\": 1597020213,\r\n	\"length\": 1069,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 297076850,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/fhIiRtv3UteYh.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/fhIiRtv3UteYh.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/fhIiRtv3UteYh.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/fhIiRtv3UteYh.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"ea7da860cb7047a392adac10f86c8d51\",\r\n	\"title\": \"20.mp4\",\r\n	\"description\": \"دروسکتردنی دوگمەی پاشگەزبوونەوە\",\r\n	\"upload_time\": 1597020273,\r\n	\"length\": 774,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 213215803,\r\n	\"posters\": [{\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/tBhCgJSGuJmuG.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/tBhCgJSGuJmuG.480.jpeg\"\r\n	}, {\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/tBhCgJSGuJmuG.240.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/tBhCgJSGuJmuG.240.jpeg\",\r\n	\"tags\": []\r\n}, {\r\n	\"id\": \"6ed7cb3135cf475986bce9042426532e\",\r\n	\"title\": \"21.mp4\",\r\n	\"description\": \"زیادکردنی تایبەتمەندی نوێ\",\r\n	\"upload_time\": 1597020309,\r\n	\"length\": 1201,\r\n	\"status\": \"ready\",\r\n	\"public\": 2,\r\n	\"totalSizeBytes\": 339741082,\r\n	\"posters\": [{\r\n		\"width\": 427,\r\n		\"height\": 240,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xzLfaLCdhsIEk.240.jpeg\"\r\n	}, {\r\n		\"width\": 1280,\r\n		\"height\": 720,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xzLfaLCdhsIEk.720.jpeg\"\r\n	}, {\r\n		\"width\": 854,\r\n		\"height\": 480,\r\n		\"posterUrl\": \"https://d1z78r8i505acl.cloudfront.net/poster/xzLfaLCdhsIEk.480.jpeg\"\r\n	}],\r\n	\"poster\": \"https://d1z78r8i505acl.cloudfront.net/poster/xzLfaLCdhsIEk.240.jpeg\",\r\n	\"tags\": []\r\n}]', '2020-11-17 09:38:16', '2020-11-17 09:38:16'),
(25, 1, 0, 'Halfmoon', NULL, 'halfmoon.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KHxd270P5dw2fDjcFWvCo5s\"', '2020-11-15 07:38:07', '2020-11-15 07:38:13'),
(26, 1, 0, 'Dart', NULL, 'dart.svg', NULL, '\"https://www.youtube.com/playlist?list=PLQ68mHW2_7KHdY-ywALEScWi6SgBq39Y1\"', '2020-11-16 03:58:06', '2020-11-16 09:38:16');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_course`
--

CREATE TABLE `order_course` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `price_at` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `part_profile`
--

CREATE TABLE `part_profile` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bg` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part_profile`
--

INSERT INTO `part_profile` (`id`, `title`, `icon`, `bg`, `url`, `created_at`, `updated_at`) VALUES
(1, 'ئەو خولانەی کە کڕیومن', 'ion-ios-videocam', 'primary', '/home/course', '2020-10-18 23:08:27', '2020-10-18 23:08:27'),
(8, 'ئەو ئاڵوگۆڕانەی کە پێشوتر کردومە', 'ion-card', 'darker', '/home/transaction', '2020-10-18 23:08:27', '2020-10-18 23:08:27'),
(9, 'ڕێکخستنەکان', 'ion-ios-cog', 'indigo', '/home/settings', '2020-10-18 23:08:27', '2020-10-18 23:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `rule` int(11) NOT NULL COMMENT '1 User / 2 Admin	',
  `black_list` int(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `github_id`, `google_id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `picture`, `balance`, `rule`, `black_list`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '35005761', '', 'Nashwan', 'nashwan.via.ps3@gmail.com', '2020-05-17 15:26:23', '$2y$10$69DvAqej.Db46F6hGmZF2O2ypjYAUI4rAGpHuQj8Yl/f7g8WuVEky', 'male', 'af60e12355a2cdaa621b7e781697ba93.jpg', 0, 2, NULL, NULL, '2020-05-17 15:26:11', '2020-11-20 05:46:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert_balance`
--
ALTER TABLE `alert_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_course`
--
ALTER TABLE `order_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part_profile`
--
ALTER TABLE `part_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert_balance`
--
ALTER TABLE `alert_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1335;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_course`
--
ALTER TABLE `order_course`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1822;

--
-- AUTO_INCREMENT for table `part_profile`
--
ALTER TABLE `part_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
