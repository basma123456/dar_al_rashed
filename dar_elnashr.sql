-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2026 at 03:35 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dar_elnashr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `uname`, `pass`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `adminuservisitor`
--

CREATE TABLE `adminuservisitor` (
  `id` int NOT NULL,
  `count` int NOT NULL,
  `visitors` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `adminuservisitor`
--

INSERT INTO `adminuservisitor` (`id`, `count`, `visitors`) VALUES
(555, 737, 5816);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `post_id`, `name`, `phone`, `email`, `cv`, `notes`, `created_at`, `updated_at`) VALUES
(14, 396, 'Sougha Saeed Ali Alyammahi - صوغه سعيد علي اليماحي', '0501458558', 'sogasaeed602@gmail.com', '1760040488.pdf', 'I’m Sougha Saeed Ali Obaid Alyammahi, an Applied Media – Graphic Design student at HCT, graduating on December 31, 2025, with a current GBA of 3.47.\r\n\r\nPassionate about media, marketing, and visual storytelling, I enjoy creating media that connects with people and delivers meaningful messages. My goal is to contribute fresh, creative ideas to the UAE’s growing media and design industry.\r\n\r\nأنا صوغة اليماحي، طالبة في الإعلام التطبيقي بكليات التقنية العليا، سأتخرج في 31 ديسمبر 2025، بمعدل تراكمي حالي 3.47.\r\n\r\nشغوفة في مجال الإعلام والتسويق ورواية القصص البصرية و السمعية، وأستمتع بإبداع مواد إعلامية تتواصل مع الناس وتنقل رسائل هادفة. هدفي هو المساهمة بأفكار جديدة ومبتكرة في قطاع الإعلام والتصميم المتنامي في دولة الإمارات العربية المتحدة.', '2025-10-09 16:08:08', '2025-10-09 16:08:08'),
(15, 396, '‪Manar AlReyahi', '0567031817', 'manar.riahi59@gmail.com', '1760441333.pdf', 'السادة إذاعة الفجيرة \r\n\r\nتحية طيبة .. وبعد \r\n\r\nيسعدني التقدّم لوظيفة في إذاعة الفجيرة ، وأنا على استعداد تام للعمل ضمن مختلف أوقات الدوام المطلوبة ، كما أنني مرنة من حيث الانتقال إلى إمارة الفجيرة. أتمتع بقابلية عالية للتعلّم المستمر وتطوير الذات بما يخدم متطلبات العمل ويضيف قيمة للفريق. \r\n\r\nمع خالص التقدير', '2025-10-14 07:28:53', '2025-10-14 07:28:53'),
(16, 396, 'اياد محمد وليد حبال', '00971525867702', 'eyad.habbal.84@gmail.com', '1760616004.pdf', 'السادة/ هيئة الفجيرة المحترمين،\r\n\r\nتحية طيبة،\r\n\r\nأنا إياد محمد وليد حبال، أمتلك خبرة واسعة في الهندسة الصوتية، تحرير الفيديو، والمونتاج، بالإضافة إلى مهارات تقنية قوية في صيانة الحواسيب والفوتوشوب. أطمح للانضمام إلى فريقكم والمساهمة بمهاراتي في تطوير العمل وتحقيق أهداف الهيئة.\r\n\r\nأرفقت سيرتي الذاتية للاطلاع على تفاصيل خبرتي، وأتطلع للحصول على فرصة لمناقشة كيف يمكنني الإسهام بفعالية في الهيئة.\r\n\r\nشكرًا لوقتكم واهتمامكم،\r\nوتفضلوا بقبول فائق الاحترام،\r\n\r\nإياد محمد وليد حبال', '2025-10-16 08:00:04', '2025-10-16 08:00:04'),
(17, 396, 'Haseinah Jumah Alzeyoudi', '0562118811', 'hasinah.2000@outlook.com', '1760714008.pdf', 'A graduate of Applied Media – Corporate Communication, with strong skills in writing and developing media reports and corporate content. I aspire to be part of your media team and contribute effectively to your communication goals.', '2025-10-17 11:13:28', '2025-10-17 11:13:28'),
(18, 396, 'Moza Mohamed', '0544388899', 'moza.mas@hotmail.com', '1761038061.pdf', NULL, '2025-10-21 05:14:21', '2025-10-21 05:14:21'),
(19, 396, 'نور اسبير', '0544664327', 'nour.asbir@gmail.com', '1761127709.pdf', 'تحية طيبة وبعد،\r\n\r\nأكتب إليكم هذه الرسالة للتعبير عن اهتمامي الشديد بالانضمام إلى فريقكم في اي شاغر  إداري مساعد تنفيذي  و أرى في متطلبات هذه الوظائف تطابقاً كبيراً مع خبراتي ومهاراتي، خاصة في مجالات الاعداد  وتقديم وتخطيط، وتنظيم، ومتابعة تنفيذ البرامج والفعاليات الميدانية والإدارية.', '2025-10-22 06:08:29', '2025-10-22 06:08:29'),
(20, 396, 'خليل عامر خليل', '0506863093', 'khaleeloamir@gmail.com', '1761156333.pdf', NULL, '2025-10-22 14:05:33', '2025-10-22 14:05:33'),
(21, 396, 'صلاح توكل', '00201159000759', 'salahtawakal7@gmail.com', '1761195431.pdf', 'بعد التحية \r\nيُشرفني أن أطلب الانضمام للعمل معكم، علمًا أن لديّ خبرة 10 أعوام في مجالات إدارة المحتوى والكتابة والتحرير والتدقيق اللغوي، ومعرفة قوية بـ SEO وإنتاج المحتوى الرقمي، بجانب مهارات قيادية وتحليلية عالية مع مؤسسات إعلامية عربية كبرى، مثل صوت الإمارات، تلفزيون الآن، مجلة الجميلة، مجلة سيدتي.\r\n\r\n- أعمل الآن كمسؤول لقسم الأخبار عن بُعد في مجلة سيدتي، ولديّ خبرة كبيرة بإدارة الفريق وجودة المحتوى بجانب معرفتي التامة بعمل السوشيال ميديا، بُحكم عملي في المجلة.\r\n- أعمل عن بُعد كدوام جزئي في فريق السوشيال ميديا بصحيفة الشرق الأوسط التي تصدر من لندن.\r\nشكرًا', '2025-10-23 00:57:11', '2025-10-23 00:57:11'),
(22, 396, 'سماح', '0509111504', 'samah.murad@hotmail.com', '1761229298.pdf', 'اتمنى ان انضم لفريق عمل تلفزيون الاذاعة و التلفزيون بالفجيرة لدى اكثر من ١٧ سنة خبرة فى المجال الاعلامى عملت كمرلسلة و منتجة و منسقة و مذيعة', '2025-10-23 10:21:38', '2025-10-23 10:21:38'),
(23, 396, 'Howida Hassan', '0505227329', 'hwidaelhasan@yahoo.com', '1761318124.pdf', 'أود أن أعرّف بنفسي، أنا هويدا الحسن، صحفية ومعدة برامج أعمل في المجال الإعلامي منذ أكثر من عشرين عامًا. خلال مسيرتي، جمعت بين العمل الصحفي الثقافي والفني وإعداد البرامج التلفزيونية، فعملتُ كصحفية متعاونة في القسم الثقافي بجريدة الاتحاد لمدة ثماني سنوات، إلى جانب النشر في عدد من المجلات والمواقع المصرية والعربية.\r\n\r\nكما توليت إعداد عدد من البرامج التلفزيونية التي تعنى بالثقافة والفنون، وكان من أبرزها برنامج \"قصة مكان\" الذي عُرض على منصة وتلفزيون أبوظبي، حيث شاركت في صياغة الفكرة والمحتوى وتنسيق محاور الحلقات واختيار الضيوف.\r\n\r\nأمتلك خبرة متكاملة في تغطية الأحداث الفنية والثقافية، وإجراء الحوارات، وكتابة المقالات التحليلية والرأي، وأسعى دائمًا لتقديم محتوى إعلامي ثري يجمع بين المصداقية والجاذبية.\r\n\r\nأتطلع للتعاون والعمل معكم\r\nتحياتي\r\nهويدا الحسن', '2025-10-24 11:02:04', '2025-10-24 11:02:04'),
(24, 396, 'تهاني رافع محمد خوالد', '00971545743643', 'tahani.alk22@gmail.com', '1761386854.pdf', 'أنا مستعدة للانضمام حالًا ومتحمسه\"‎ارغب في الانضمام الي فريق العمل لدى ‎ ماستر تربية خاصه ‎وبكالوريوس تربية رياضية ‎رقم التواصل', '2025-10-25 06:07:34', '2025-10-25 06:07:34'),
(25, 396, 'Mahmoud Saad Mostafa Ahmed', '0501408024', 'mahmoudsaad42008@gmail.com', '1761390332.pdf', NULL, '2025-10-25 07:05:32', '2025-10-25 07:05:32'),
(26, 396, 'باسم السيد محمد علي فليفل', '0562873429', 'keupid@hotmail.com', '1761390837.pdf', NULL, '2025-10-25 07:13:57', '2025-10-25 07:13:57'),
(27, 396, 'مرام سالم الدهماني', '0561066670', 'maram.s2019@gmail.com', '1761493426.pdf', 'السادة المحترمون،\r\n\r\nأتمنى أن تكونوا بخير.\r\n\r\nأتقدّم بطلب لوظيفة مراسل في مؤسستكم الموقرة، لما أراه من توافق بين متطلبات الوظيفة وتخصصي في الإعلام التطبيقي، إلى جانب شغفي الكبير بمجال العمل الإعلامي الميداني.\r\n\r\nخلال فترة دراستي وعبر خبرتي العملية التي امتدت لعامين في مجال التسويق والإعلام، اكتسبت مهارات في التواصل، إعداد المحتوى، والتصوير الميداني، إضافةً إلى قدرتي على العمل تحت الضغط والالتزام بالمواعيد.\r\n\r\nأتطلع لأن أكون جزءًا من فريقكم الإعلامي المتميز، والمساهمة في نقل الأخبار والتقارير بمهنية وموضوعية.\r\n\r\nأرفقت سيرتي الذاتية للاطلاع، وآمل بالحصول على فرصة لمقابلة شخصية لمناقشة كيف يمكنني أن أضيف قيمة حقيقية لفريقكم.\r\n\r\nشكرًا جزيلًا لوقتكم واهتمامكم.\r\n\r\nمع خالص التحية،\r\nمرام سالم الدهماني', '2025-10-26 11:43:46', '2025-10-26 11:43:46'),
(28, 396, 'Mohanad Kalthom', '0522871741', 'almohannadfilms@gmail.com', '1761516410.pdf', 'With sincere regards \r\nAl-Muhannad Kulthoum \r\nSyrian Film Director | Artistic Consultant | International Trainer\r\nUAE – Syria  -  +971 52 287 1741 \r\nalmohannadfilms@gmail.com', '2025-10-26 18:06:50', '2025-10-26 18:06:50'),
(30, 396, 'fadi anshasi', '0507802694', 'fadianshasi@hotmail.com', '1761555455.pdf', 'PMP certified project manager', '2025-10-27 04:57:35', '2025-10-27 04:57:35'),
(31, 396, 'فاطمة سعيد محمد سالم الكندي', '0543886321', 'Fatma.Alkindi02@outlook.com', '1761608543.pdf', 'بكالوريوس اعلام تطبيقي', '2025-10-27 19:42:23', '2025-10-27 19:42:23'),
(32, 396, 'فاطمة سعيد محمد سالم الكندي', '0543886321', 'Fatma.Alkindi02@outlook.com', '1761608545.pdf', 'بكالوريوس اعلام تطبيقي', '2025-10-27 19:42:25', '2025-10-27 19:42:25'),
(33, 396, 'ياسر مصبح موسى القبيلات', '0563170501', 'YASSEK@YAHOO.COM', '1761725025.pdf', 'مقيم. حاصل على بطاقة الإقامة الذهبية من إمارة دبي.', '2025-10-29 04:03:45', '2025-10-29 04:03:45'),
(34, 396, 'رزان جعفر عبد القادر المومني', '962775607101', 'Parkrazan444@gmail.com', '1761763632.docx', NULL, '2025-10-29 14:47:12', '2025-10-29 14:47:12'),
(35, 396, 'علياء محمد الزعابي', '0544679467', 'alyaalzaabi.1998@icloud.com', '1761855424.pdf', NULL, '2025-10-30 16:17:04', '2025-10-30 16:17:04'),
(36, 396, 'حليمة احمد عبدالله السعدي', '0507203021', 'halimaalsadi2@gmail.com', '1762341105.pdf', NULL, '2025-11-05 07:11:45', '2025-11-05 07:11:45'),
(37, 396, 'حليمة احمد السعدي', '0507203021', 'halimaalsadi2@gmil.com', '1762341223.pdf', NULL, '2025-11-05 07:13:43', '2025-11-05 07:13:43'),
(38, 396, 'منال حسين البلوشي', '0565545955', 'manalalbalooshi554@gmail.com', '1762341236.pdf', NULL, '2025-11-05 07:13:56', '2025-11-05 07:13:56'),
(39, 396, 'Amal Salem obaaid', '0504459884', 'amal.al6neiji@gmail.com', '1762365230.pdf', NULL, '2025-11-05 13:53:50', '2025-11-05 13:53:50'),
(40, 396, 'مراس سليماني', '0585602132', 'marezslimani90@gmail.com', '1762411990.pdf', 'سلام عليكم سعيد لانظمام لهيئتكم المحترمة', '2025-11-06 02:53:10', '2025-11-06 02:53:10'),
(42, 396, 'Rauf Hamdan Mahmoud Hamdan', '00962788833317', 'R.hhmdan@gmail.con', '1762444971.pdf', 'لدي خبرة طويلة في الاعلام الاذاعة والتلفزيون في قطر ودول الخليج، كنت مقيم منذ شهر في دولة الامارات ويمكنني القدوم عند الحاجة', '2025-11-06 12:02:51', '2025-11-06 12:02:51'),
(43, 396, 'Rauf Hamdan Mahmoud Hamdan', '00962788833317', 'R.hhmdan@gmail.com', '1762445265.pdf', 'لدي خبرة طويلة في الاعلام الاذاعة والتلفزيون في دولة قطر ودول الخليج، كنت مقيم في دولة الامارات منذ اقل من شهر، يمكنني القدوم عند الحاجة \r\nيرجى العلم انني تقدمت بطلب سابق ولكن السيرة الذاتية هنا محدثة', '2025-11-06 12:07:45', '2025-11-06 12:07:45'),
(44, 396, 'Rauf Hamdan Mahmoud Hamdan', '00962788833317', 'R.hhmdan@gmail.com', '1762445448.pdf', 'شهادة خبرة بما يتناسب مع طبيعة الوظيفة المتاحة', '2025-11-06 12:10:48', '2025-11-06 12:10:48'),
(45, 396, 'hamada Ahmed Ali Hamada', '00201141732404', 'ockham76@yahoo.com', '1762520102.doc', 'السلام عليكم ورحمة الله وبركاته\r\nأتمني قبول طلب توظيفي محررًا ثقافيًا لديكم، حيث إنني أعمل أستاذًا جامعيًا ومترجمًا، ولدي طموح للعمل لدي هيئتكم \r\nولكم جزيل الشكر والامتنان', '2025-11-07 08:55:02', '2025-11-07 08:55:02'),
(46, 396, 'مريم عبدالله علي عبدالله اليماحي', '971503555779', 'maryam2005ab@hotmail.com', '1762707728.pdf', NULL, '2025-11-09 13:02:08', '2025-11-09 13:02:08'),
(47, 396, 'شمس الدين بوكلوة', '0545709597', 'chamseddineboukeloua@gmail.com', '1762935373.pdf', 'يسعدني التقدم لوظيفة مُعد ومقدم تقارير إذاعية، لما أملكه من شغف بالإعلام الميداني وخبرة في إعداد المحتوى وتقديمه بأسلوب مهني وموضوعي. أتميز بقدرتي على جمع المعلومات وتحليلها، وصياغة التقارير الإذاعية بلغة مؤثرة ودقيقة، مع الالتزام بالمصداقية والسرعة في نقل الحدث. أطمح لأن أكون جزءًا من فريق يقدّم إعلامًا مسؤولًا يعزز ثقة الجمهور في المؤسسة.', '2025-11-12 04:16:13', '2025-11-12 04:16:13'),
(48, 396, 'طيف جمال محمد علي اليماحي', '508170084', 'taifalyammhi14@gmail.com', '1762954150.pdf', 'أتطلع للانضمام إلى فريق عمل المؤسسة للإسهام في تطوير المحتوى الإعلامي وخدمة المجتمع، مع الاستعداد الكامل لتحمل المسؤوليات والمهام الموكلة إليّ.', '2025-11-12 09:29:10', '2025-11-12 09:29:10'),
(49, 396, 'Mohamed Hassan AZME', '0523625011', 'eng.mohamedazme@gmail.com', '1762958439.pdf', 'أنا محمد حسن عزمي، مهندس برمجيات متخصص في تصميم وتطوير الأنظمة البرمجية، أمتلك خبرة واسعة في تحليل النظم وتطوير الحلول التقنية باستخدام أحدث تقنيات ASP.NET، Blazor، SQL Server، Oracle، JavaScript، وغيرها من تقنيات تطوير الويب.\r\nخلال مسيرتي المهنية، قمت بتصميم وتطوير مجموعة من المنصات الذكية والأنظمة المتكاملة التي تخدم القطاعات الحكومية والمؤسسية في إمارة الفجيرة ودولة الإمارات العربية المتحدة، ومن أبرزها:\r\nمنصة إدارة الأداء الوظيفي – لقياس أداء الموظفين وربطهم بالأهداف الإستراتيجية للمؤسسة ( مؤسسة الفجيرة للموارد الطبيعية - هيئة الفجيرة للبيئة - بلدية كلباء ).\r\nمنصة التعدين الذكية – لإدارة عمليات التعدين ومراقبة الإنتاج وتحليل البيانات التشغيلية (نفذت لدى مؤسسة الفجيرة للموارد الطبيعية).\r\nمنصة التدريب والتطوير – لتخطيط وتنفيذ البرامج التدريبية وتنمية مهارات الموظفين.\r\nمنصة التميز المؤسسي – لدعم مبادرات الجودة والتميز الحكومي وفق معايير التميز المؤسسي ( مؤسسة الفجيرة للموارد الطبيعية - هيئة الفجيرة للبيئة - بلدية كلباء ).', '2025-11-12 10:40:39', '2025-11-12 10:40:39'),
(50, 396, 'رؤوف حمدان محمود حمدان', '00962788833317', 'R.hhmdan@gmail.com', '1763655638.pdf', NULL, '2025-11-20 12:20:38', '2025-11-20 12:20:38'),
(51, 396, 'مريم عبدالله علي عبدالله اليماحي', '971503555779', 'maryam2005ab@hotmail.com', '1763905464.pdf', NULL, '2025-11-23 09:44:24', '2025-11-23 09:44:24'),
(52, 396, 'فاطمه عبيد راشد', '0544002376', 'fatimaq93@hotmail.com', '1764097185.pdf', NULL, '2025-11-25 14:59:45', '2025-11-25 14:59:45'),
(53, 396, 'محمد أحمد علي أحمد', '0508595606', 'muhammad.a15@outlook.com', '1764249806.pdf', 'Hello Dear,\r\n\r\nMy name is Muhammed Ali, an Information Security Engineer with 2 years of experience in penetration testing for applications, systems, and networks, and 1 year of experience as a Software Developer. I am very interested in any current or future opportunities at Fujairah Culture & Media Authority (FCMA)\r\n\r\nCould you please direct me to the appropriate HR or recruitment contact so I can share my CV and discuss how I might add value to your organization?\r\n\r\nThank you in advance for your time and support.\r\n\r\nBest regards,\r\nMuhammed Ali\r\n+9710508595606\r\nmuhammad.a15@outlook.com', '2025-11-27 09:23:26', '2025-11-27 09:23:26'),
(54, 396, 'Muhamed Ali Sayed', '0509696907', 'worldofpress@hotmail.com', '1764413719.pdf', 'مع كل الشكر والتقدير لمنحي فرصة لقاء.', '2025-11-29 06:55:19', '2025-11-29 06:55:19'),
(55, 396, 'محمود محمد عبدالله كحيلة', '00201224550722', 'mahmoud.2014980@t1.moe.edu.eg', '1764708314.docx', 'برجاء التكرم بالموافقة علي قبول الطلب\r\nمع أطيب الأماني وجزيل الشكر', '2025-12-02 16:45:14', '2025-12-02 16:45:14'),
(56, 396, 'Ajeetha Balu', '0566743135', 'ajeethabalu21@gmail.com', '1765283234.pdf', NULL, '2025-12-09 08:27:14', '2025-12-09 08:27:14'),
(57, NULL, 'مصطفي عادل', '4534534', 'test22@test.com', '1765446181.pdf', 'notes  hereee', '2025-12-11 05:43:01', '2025-12-11 05:43:01'),
(58, 396, 'AYAT ALKADI', '0526588124', 'dr.ayatalkadi@gmail.com', '1765451856.pdf', 'من سوريا\r\nأمتلك خلفية قوية في الكتابة والتحرير، وأسعى لنقل القصص بصدق ووعي إنساني.  \r\n- شغفي بالتوثيق والتواصل يدفعني للعمل كمراسلة تنقل الواقع بمهنية وتأثير.', '2025-12-11 07:17:36', '2025-12-11 07:17:36'),
(59, 396, 'Omar Kasem Alkhatib', '0529895265', 'omaralkhateb1981@gmail.com', '1765571345.pdf', NULL, '2025-12-12 16:29:05', '2025-12-12 16:29:05'),
(60, 396, 'مريم محمد عبيد الطنيجي', '0504340880', 'Mm88aleneiji@gmail.com', '1765643154.pdf', NULL, '2025-12-13 12:25:54', '2025-12-13 12:25:54'),
(61, 15, '', '', '', '', NULL, '2025-12-21 22:17:28', '2025-12-21 22:17:28'),
(62, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766326750.pdf', NULL, '2025-12-21 22:19:10', '2025-12-21 22:19:10'),
(63, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766326883.pdf', NULL, '2025-12-21 22:21:23', '2025-12-21 22:21:23'),
(64, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766326924.pdf', NULL, '2025-12-21 22:22:04', '2025-12-21 22:22:04'),
(65, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766327023.pdf', NULL, '2025-12-21 22:23:43', '2025-12-21 22:23:43'),
(66, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766327138.pdf', NULL, '2025-12-21 22:25:38', '2025-12-21 22:25:38'),
(67, 15, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766327235.pdf', NULL, '2025-12-21 22:27:15', '2025-12-21 22:27:15'),
(68, 15, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766327740.pdf', NULL, '2025-12-21 22:35:40', '2025-12-21 22:35:40'),
(69, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766327783.pdf', NULL, '2025-12-21 22:36:23', '2025-12-21 22:36:23'),
(70, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766327786.pdf', NULL, '2025-12-21 22:36:26', '2025-12-21 22:36:26'),
(71, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766327788.pdf', NULL, '2025-12-21 22:36:28', '2025-12-21 22:36:28'),
(72, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766328072.pdf', NULL, '2025-12-21 22:41:12', '2025-12-21 22:41:12'),
(73, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766328074.pdf', NULL, '2025-12-21 22:41:14', '2025-12-21 22:41:14'),
(74, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766328076.pdf', NULL, '2025-12-21 22:41:16', '2025-12-21 22:41:16'),
(75, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766328192.pdf', NULL, '2025-12-21 22:43:12', '2025-12-21 22:43:12'),
(76, 16, 'basma', '01064612543', 'basma.gamaleldin100@gmail.com', '1766328194.pdf', NULL, '2025-12-21 22:43:14', '2025-12-21 22:43:14'),
(77, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328334.pdf', NULL, '2025-12-21 22:45:34', '2025-12-21 22:45:34'),
(78, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328346.pdf', NULL, '2025-12-21 22:45:46', '2025-12-21 22:45:46'),
(79, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328348.pdf', NULL, '2025-12-21 22:45:48', '2025-12-21 22:45:48'),
(80, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328350.pdf', NULL, '2025-12-21 22:45:50', '2025-12-21 22:45:50'),
(81, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328653.pdf', NULL, '2025-12-21 22:50:53', '2025-12-21 22:50:53'),
(82, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328696.pdf', NULL, '2025-12-21 22:51:36', '2025-12-21 22:51:36'),
(83, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328698.pdf', NULL, '2025-12-21 22:51:38', '2025-12-21 22:51:38'),
(84, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328699.pdf', NULL, '2025-12-21 22:51:39', '2025-12-21 22:51:39'),
(85, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328701.pdf', NULL, '2025-12-21 22:51:41', '2025-12-21 22:51:41'),
(86, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328894.pdf', NULL, '2025-12-21 22:54:54', '2025-12-21 22:54:54'),
(87, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328896.pdf', NULL, '2025-12-21 22:54:56', '2025-12-21 22:54:56'),
(88, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766328912.pdf', NULL, '2025-12-21 22:55:12', '2025-12-21 22:55:12'),
(89, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329018.pdf', NULL, '2025-12-21 22:56:58', '2025-12-21 22:56:58'),
(90, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329021.pdf', NULL, '2025-12-21 22:57:01', '2025-12-21 22:57:01'),
(91, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329347.pdf', NULL, '2025-12-21 23:02:27', '2025-12-21 23:02:27'),
(92, 16, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329349.pdf', NULL, '2025-12-21 23:02:29', '2025-12-21 23:02:29'),
(93, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329360.pdf', NULL, '2025-12-21 23:02:40', '2025-12-21 23:02:40'),
(94, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329721.pdf', NULL, '2025-12-21 23:08:41', '2025-12-21 23:08:41'),
(95, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329723.pdf', NULL, '2025-12-21 23:08:43', '2025-12-21 23:08:43'),
(96, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329724.pdf', NULL, '2025-12-21 23:08:44', '2025-12-21 23:08:44'),
(97, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329728.pdf', NULL, '2025-12-21 23:08:48', '2025-12-21 23:08:48'),
(98, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329754.pdf', NULL, '2025-12-21 23:09:14', '2025-12-21 23:09:14'),
(99, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329755.pdf', NULL, '2025-12-21 23:09:15', '2025-12-21 23:09:15'),
(100, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329773.pdf', NULL, '2025-12-21 23:09:33', '2025-12-21 23:09:33'),
(101, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329839.pdf', NULL, '2025-12-21 23:10:39', '2025-12-21 23:10:39'),
(102, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329840.pdf', NULL, '2025-12-21 23:10:40', '2025-12-21 23:10:40'),
(103, 14, 'basma', '01064612544', 'basma.gamaleldin100@gmail.com', '1766329887.pdf', NULL, '2025-12-21 23:11:27', '2025-12-21 23:11:27'),
(104, 0, 'basma', '01064612545', 'basma.gamaleldin100@gmail.com', '1766407202.pdf', NULL, '2025-12-22 20:40:02', '2025-12-22 20:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-34663035315e3081c295ff18a722012c', 'i:1;', 1776869659),
('laravel-cache-34663035315e3081c295ff18a722012c:timer', 'i:1776869659;', 1776869659),
('laravel-cache-c525a5357e97fef8d3db25841c86da1a', 'i:2;', 1776869670),
('laravel-cache-c525a5357e97fef8d3db25841c86da1a:timer', 'i:1776869669;', 1776869669),
('laravel-cache-superadmin@gmail.com|127.0.0.1', 'i:1;', 1776869660),
('laravel-cache-superadmin@gmail.com|127.0.0.1:timer', 'i:1776869660;', 1776869660);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `module` varchar(90) NOT NULL DEFAULT '',
  `main_cat` int NOT NULL DEFAULT '0',
  `name` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name_ar` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title_url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `short` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `short_ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `pic` varchar(50) DEFAULT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `module`, `main_cat`, `name`, `name_ar`, `title_url`, `short`, `short_ar`, `pic`) VALUES
(1, 'projects', 0, 'Current Projects', 'المشاريع الحالية', 'current-projects', NULL, NULL, '1734503071.jpg'),
(2, 'projects', 2, 'Future Projects', 'المشاريع المستقبلية', 'future-projects', NULL, NULL, '1734515237.jpg'),
(8, 'create', 0, 'test address', NULL, 'test-address', NULL, NULL, NULL),
(9, 'ourPartners', 0, 'department 1', 'قسم 1', 'department-1', NULL, NULL, NULL),
(10, 'ourPartners', 0, 'department2', 'قسم 2', 'department2', NULL, NULL, NULL),
(11, 'properties', 0, 'appartments', 'شقق', 'appartments', NULL, NULL, NULL),
(12, 'properties', 0, 'villas', 'فيلا', 'villas', NULL, NULL, NULL),
(13, 'properties', 0, 'lands', 'أراضٍ', 'lands', NULL, NULL, NULL),
(14, 'News', 16, 'offices', 'مكاتب', 'offices', NULL, NULL, NULL),
(15, 'News', 0, 'commercial', 'تجارية', 'commercial', NULL, NULL, NULL),
(16, 'News', 0, 'news category one rn', 'news category one ar', 'news category one rn', NULL, NULL, '\'\''),
(17, 'news', 0, '11111111111111111111111111', '111111111111111111', '11111111111111111111111111', NULL, NULL, NULL),
(18, 'news', 0, '2222222222222222222222', '222222222222222222', '2222222222222222222222', NULL, NULL, NULL),
(19, 'news', 15, '333333333333333333333333', '333333333333333333333333', '333333333333333333333333', NULL, NULL, NULL),
(20, 'news', 19, '4444444444444444444444444444', '44444444444444444444444', '4444444444444444444444444444', NULL, NULL, NULL),
(21, 'news', 14, '555555555555555555', '555555555555555555555', '555555555555555555', NULL, NULL, 'C:\\Users\\hp\\AppData\\Local\\Temp\\phpEAB6.tmp'),
(22, 'news', 21, '666666666666666666666', '66666666666666666666666622222111111111111111', '666666666666666666666', NULL, NULL, '/uploads/category/17759989780.jpg'),
(23, 'releases', 0, 'fffffffff', 'fdfdfdfd', 'fffffffff', NULL, NULL, '/uploads/category/17768649200.png'),
(24, 'releases', 23, 'kkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkk', NULL, NULL, '/uploads/category/17768668570.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `title_ar` varchar(60) NOT NULL,
  `title_en` varchar(60) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `stop` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_activity` int UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0c970902ce2f0418c44f0d52ea3007db', '3.237.98.62', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756630300, ''),
('22a5a561da909866c71e114b99b67e79', '3.237.96.162', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756561200, ''),
('481b4b6d274755b46778776ad033e39c', '66.249.70.161', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.183 M', 1756623605, ''),
('5ec22d2b7f47459eafac658bc002f8ca', '217.113.194.235', 'Mozilla/5.0 (compatible; Barkrowler/0.9; +https://babbar.tech/crawler)', 1756626738, ''),
('6a652affb1afc18055fc15040ea94ed4', '217.113.194.234', 'Mozilla/5.0 (compatible; Barkrowler/0.9; +https://babbar.tech/crawler)', 1756626754, ''),
('856b89305bbccccfc666830394550505', '13.221.172.197', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756629437, ''),
('9214da73ff1e9f5188f051fa941bb3cb', '13.218.138.14', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756521341, ''),
('a4677110d4fcf1432d4327a424c8af07', '44.192.42.74', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756601663, ''),
('ca4bfb19cb1d9342c7691f3e289ac231', '66.249.70.174', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.7204.183 M', 1756634658, ''),
('cab7ee2ff49d4f3fd2aa32bc4378908f', '44.211.188.100', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756534357, ''),
('cda2d0dee2ae03e57a6982db2984ce78', '185.191.171.9', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 1756593070, ''),
('fe3c9886354798f1f05676f4eee8ca0a', '98.82.21.217', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27', 1756574517, '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `file` varchar(255) NOT NULL,
  `prod_id` int NOT NULL,
  `add_date` varchar(11) NOT NULL,
  `address` text,
  `company` varchar(255) DEFAULT NULL,
  `website` varchar(255) NOT NULL,
  `business_sector` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `number_of_employees` varchar(255) NOT NULL,
  `mr_mrs` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `quotation` text NOT NULL,
  `pricing_info` enum('yes','no') NOT NULL DEFAULT 'no',
  `contact_by_phone` enum('yes','no') NOT NULL DEFAULT 'no',
  `active` enum('yes','no','wait') NOT NULL DEFAULT 'wait',
  `module` varchar(255) NOT NULL,
  `uid` int NOT NULL,
  `pid` int NOT NULL,
  `pname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `id` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `consultancy` text NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mail` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `message` text,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `user_name`, `user_mail`, `subject`, `phone`, `message`, `service`, `add_date`) VALUES
(1, 'basma', 'hfdjhf@shdg.com', 'test', '058605690565086', 'dfdfdfdf', NULL, '2025-09-07 14:34:12'),
(2, 'basma', 'hfdjhf@shdg.com', 'test', '058605690565086', 'dfdfdfdf', NULL, '2025-09-07 14:34:26'),
(3, 'test test test', 'test@gmail.com', 'testing', '01002403271', 'testing', NULL, '2025-09-22 12:05:04'),
(4, 'Shrouq', 'shrouq@gmail.com', 'inquiry', '01062090029', 'inquiry details', NULL, '2025-09-22 13:45:45'),
(5, 'basma', 'admin@gmail.com', 'test', '01064612544', 'cccccccccccccccccccccccc', NULL, '2025-09-22 14:19:10'),
(6, 'basma23', 'admin@gmail.com', 'ghgh', '020545637564', 'ccccccccccccccccccccc', NULL, '2025-09-22 14:26:05'),
(7, 'basma', 'admin@gmail.com', 'test', '01064612544', 'gggggggggg', NULL, '2025-09-22 14:27:09'),
(8, 'basma', 'admin@gmail.com', 'test', '01064612544', 'gggggggggg', NULL, '2025-09-23 07:13:53'),
(9, 'Deena Marion', 'deena.marion@gmail.com', 'Get More Leads Fast – Watch This Now!', '675657261', 'Watch this if you are struggling to get targeted leads to your Fcma Gov Ae website: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-09 19:12:00'),
(10, 'Odell Titsworth', 'odell.titsworth13@gmail.com', 'need help', '616761183', 'Is anyone human reading my message? Ah there you are! I\'m offering a cheap and quick way for you to reach millions of website owners just like my message reached you now. It\'s simple, you give me your ad text and I blast it with my special AI enabled software to either millions of random sites or targets that you select. Check out my site below for details or to have a live chat with me now. \r\n\r\nGo ahead and reach out now! I mean you already know this works since you\'ve read my message this far right?\r\n\r\nThanks!\r\nPhil\r\nwebsite: contactformpromotion.com', NULL, '2025-10-10 02:51:25'),
(11, 'Karen B.', 'outreachseo56@gmail.com', 'Feature Opportunity for fcma.gov.ae', '634821652', 'Hi,\r\n\r\nJust a quick check, if you can add 3 links to our client sites (in accomodation, women\'s health &  vehicle tyre sectors) anywhere on your website, we’ll get your business featured on trusted media website - MirrorBrief.com, with a backlink to fcma.gov.ae, through our journalist partner there. Interested to trade?\r\n\r\nBest,\r\nKaren\r\nCollaboration Marketing Manager', NULL, '2025-10-10 03:53:16'),
(12, 'Helena Funnell', 'funnell.helena12@gmail.com', 'Want Targeted Visitors? See How in 60 Seconds', '416804163', 'Unlock more targeted leads with our AI! Watch this short video to get started: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-10 11:25:37'),
(13, 'Melody Pena', 'melody.pena@hotmail.com', 'Hello fcma.gov.ae Owner!', '575622498', 'Dear Sir/Madam,\r\nWe’d like to become a reseller of your items. We already have clients interested in placing orders. Contact us via WhatsApp: +1 343 482 6840\r\nBest regards', NULL, '2025-10-10 13:12:43'),
(14, 'Justin Challis', 'info@speed-seo.net', 'Check your SEO Score for free with Speed SEO', '7766093139', 'Hi there\r\nCheck fcma.gov.ae SEO score in under 2 minutes\r\n\r\nSubmit your request here\r\nhttps://www.speed-seo.net/check-site-seo-score/\r\n\r\nWait 2 minutes for the report to be generated, then get your SEO vulnerabilities.\r\n\r\nWant more info, chat with a SEO expert:\r\nhttps://www.speed-seo.net/whatsapp-with-us/\r\n\r\nRegards\r\nMike Challis\r\nSpeed SEO\r\nPhone/whatsapp: +1 (833) 454-8622', NULL, '2025-10-10 14:13:58'),
(15, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo    write about   the price', '82556332982', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', NULL, '2025-10-10 16:01:32'),
(16, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo    wrote about     prices', '85739818882', 'Ciao, volevo sapere il tuo prezzo.', NULL, '2025-10-10 21:54:24'),
(17, 'Clint McDonnell', 'mcdonnell.clint@yahoo.com', 'Increase fcma.gov.ae\'s daily visitors with our AI service.', '3433600736', 'Drive targeted traffic to your website with our AI-powered solution, saving you money compared to expensive paid ad platforms. Learn more today.\r\n\r\nhttps://ow.ly/cmPa50WXBjl', NULL, '2025-10-11 13:20:52'),
(18, 'Ryder Lancaster', 'lancaster.ryder@outlook.com', 'To the fcma.gov.ae Owner.', '6363365316', '1 Week Only: $99 for 2M Form-Based Outreach — Half Price. You’re reading this message. That’s the system working. Email me at: phil@form-blast-promo.top', NULL, '2025-10-12 01:32:02'),
(19, 'Isabella Harbin', 'harbin.isabella@gmail.com', 'Transform Your Website Traffic with One Video', '422094219', 'Discover how our AI can skyrocket your Fcma Gov Ae website leads in this quick video: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-12 13:39:57'),
(20, 'Forrest Molnar', 'molnar.forrest31@msn.com', 'Cold DM Automation That Fits Your Workflow', '3221676774', 'Running fcma.gov.ae means you\'re always hunting for efficient ways to reach new prospects. But crafting and tracking cold DMs one-by-one? It\'s a bottleneck.  Our service streamlines it: Launch automated cold outreach campaigns across Instagram, LinkedIn, and more, with AI-powered templates for personalized hooks and Zapier integrations for 3,000+ apps. Website owners like you convert more cold chats into revenue without the manual grind.  \r\n\r\nAutomate cold outreach via DMs, get free access here: https://cutt.ly/nrNwEwF8', NULL, '2025-10-13 08:03:57'),
(21, 'Leeteami', 'zekisuquc419@gmail.com', 'Hallo  i write about your the price for reseller', '89792485615', 'Sveiki, es gribēju zināt savu cenu.', NULL, '2025-10-13 10:49:39'),
(22, 'Clint Timms', 'clint.timms@yahoo.com', 'Dear fcma.gov.ae Owner!', '5142814700', 'Dear Team,\r\nWe’re interested in collaborating to resell your offerings. Clients are requesting your products. Please message us on WhatsApp: +44 750 225 3785\r\nBest regards', NULL, '2025-10-13 18:41:29'),
(23, 'عمر إبراهيم محمد', 'o.alwfdy@yahoo.com', 'شكوى', '00201159594420', 'بعد التحية والتقدير\r\nلما لم تنزل أعداد مجلة الفجيرة بنظام bdf \r\nلكي نحمله ونأخذها لدينا للتصفح وقت ما نشاء .. مثل أغلب المجلات ؟؟؟؟؟؟!!!!!!\r\nأتمنى من سيادتكم النظر في تلك المشكلة .\r\nنريد أعداد مجلة الفجيرة بنظام bdf', NULL, '2025-10-13 22:57:48'),
(24, 'عمر إبراهيم محمد', 'o.alwfdy@yahoo.com', 'شكوى', '00201159594420', 'السلام عليكم ورحمة الله وبركاته\r\nبعد التحية والتقدير\r\nأتمنى من سيادتكم التكرم بحل مشكلة تنزيل أعداد مجلة الفجيرة bdf\r\nكما كانت في السابق , لكي يتثنى لنا تنزيلها وتحميلها والإحتفاظ بها .\r\nولكم جزيل الشكر والتقدير', NULL, '2025-10-14 11:08:00'),
(25, 'Luciana Philipp', 'philipp.luciana8@outlook.com', 'Boost Your Site’s Visitors in Just 7 Days!', '6804372071', 'Wanting to elevate your website’s audience? Our intelligent AI pulls targeted visitors through keywords or geographic focus from global markets to towns.  \r\nDesiring increased revenue, lively engagement, or a stronger digital influence?  \r\nWe adjust it to suit your goals. Enjoy a 7-day free trial period with no contract. Dive in here:\r\n\r\nhttps://ow.ly/UfmS50WXBjp', NULL, '2025-10-14 22:25:24'),
(26, 'Dwight McNish', 'mcnish.dwight@outlook.com', 'Low Leads? Watch This Quick AI Fix', '207316092', 'Watch this if you are struggling to get targeted leads to your Fcma Gov Ae website: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-15 10:39:36'),
(27, 'Simonteami', 'dinanikolskaya99@gmail.com', 'Aloha  i am writing about your the price', '86364688339', 'Γεια σου, ήθελα να μάθω την τιμή σας.', NULL, '2025-10-15 14:11:23'),
(28, 'Edmundo Baskin', 'baskin.edmundo@gmail.com', 'To the fcma.gov.ae Webmaster.', '4789636509', 'Flash Offer: Submit to 2 Million Sites for Just $99 — 50% Off. You’re seeing this. That’s the power of direct form outreach. Get started by emailing me at: phil.contact@form-blast-promo.top', NULL, '2025-10-15 14:43:54'),
(29, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo, i wrote about your the price', '84967847172', 'Hej, jeg ønskede at kende din pris.', NULL, '2025-10-15 16:40:05'),
(30, 'Jill Boyles', 'boyles.jill@gmail.com', 'Dear fcma.gov.ae Webmaster!', '633500099', 'Hello,\r\n\r\nWe have reviewed your website and would like to inform you that we can help you achieve the 1st position on Google in a short time and at a very affordable cost.\r\n\r\nIf you’re interested, please contact us on WhatsApp at +1 683 757 2738.', NULL, '2025-10-15 23:15:33'),
(31, 'ألاء يحيى محمد علي', 'alaayahia1989@gmail.com', 'تسجيل بالموقع للتقديم على تصريح', '0505203757', 'نحن شركة ڨي سبيشال لادارة الفعاليات بصدد تنظيم فعالية ونود ان نسجل في موقع الهيئة للتقديم على طلب التصريح ولكن واجهتنا مشكلة ان النظام لا يقبل الا ارقام دو ولا يقبل ارقام اتصالات الرجاء التواصل معنا لحل المشكلة لكي يتسنى لنا التقديم', NULL, '2025-10-16 09:34:54'),
(32, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hello    write about     price', '82418591376', 'Hej, jeg ønskede at kende din pris.', NULL, '2025-10-16 18:10:48'),
(33, 'Hubert Neilson', 'hubert.neilson@gmail.com', 'Transform Your Website Traffic Free For 7 Days', '362805846', 'Our AI-powered traffic solution delivers engaged visitors to your website, all at a budget-friendly price compared to costly paid ads. Let’s drive results today.\r\n\r\nhttps://cutt.ly/cr9BMVfU', NULL, '2025-10-16 23:02:48'),
(34, 'Denice Skillern', 'denice.skillern@hotmail.com', 'Boost Your Site’s Visitors in Just 7 Days!', '9023682923', 'Struggling to get targeted leads to your Fcma Gov Ae website? Watch this: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-17 00:06:58'),
(35, 'Royal Guajardo', 'guajardo.royal@outlook.com', 'Skyrocket Your Website Traffic with AI', '3', 'Want more targeted traffic to your Fcma Gov Ae website? See how our AI-powered solution can help in this quick video: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-18 01:29:52'),
(36, 'Everett Laughlin', 'everett.laughlin@gmail.com', 'Boost Instagram Engagement & Followers Effortlessly with AI Power', '24', 'Get additional leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to boost more traffic, produce leads, and grow your brand\'s reach, you can find more information and start a no-cost trial here: https://cutt.ly/6r9BMLrA\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Increases followers with focused, top-tier audiences.\r\n-Enhances engagement through smart AI algorithms.\r\n-Focuses on users based on hashtags and accounts they follow.\r\n-Reduces work by automating time-consuming Instagram tasks.\r\n\r\nOur service prioritizes on authentic, organic growth—no bots, zero fake followers. It’s perfect for brands like yours that want to convert Instagram into a lead generation engine. Better yet, our service is provided on a monthly subscription basis so you can cancel whenever you like. No contracts and a 7-day free trial.', NULL, '2025-10-18 13:03:40'),
(37, 'Elisha Jardine', 'jardine.elisha@googlemail.com', 'Skyrocket Your Website Traffic with AI', '2630141895', 'Needing to boost your website traffic? Our AI platform attracts custom visitors using keywords with geographic data from global regions to city blocks.  \r\nLooking for more sales, active website traffic, or a broader online reach?  \r\nWe tailor it to fit your vision. Enjoy a 7-day free trial period with no contract. Join here:\r\n\r\nhttps://cutt.ly/Sr3e4wYE', NULL, '2025-10-18 20:25:26'),
(38, 'Rose Harkness', 'rose.harkness@googlemail.com', 'Ready to Skyrocket Your Instagram? Our AI Does the Work', '7971934558', 'Get more leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to boost greater traffic, generate leads, and grow your brand\'s reach, you can access more information and start a complimentary trial here: https://cutt.ly/Cr9BMXUV\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Increases followers with focused, high-quality audiences.\r\n-Improves engagement through advanced AI algorithms.\r\n-Targets users based on hashtags and accounts they follow.\r\n-Eliminates time by automating tedious Instagram tasks.\r\n\r\nOur service focuses on authentic, organic growth—no bots, no fake followers. It’s ideal for brands like yours that want to convert Instagram into a lead generation powerhouse. Even better, our service is provided on a month-by-month subscription basis so you can opt out whenever you like. No contracts and a one-week no-cost trial.', NULL, '2025-10-19 04:51:01'),
(39, 'Candelaria Bourget', 'bourget.candelaria@msn.com', 'need info', '5178876768', 'Offer ends now — reach 1M websites for only $49. Message me at support@bestaitools.my', NULL, '2025-10-19 05:56:24'),
(40, 'Thomas Restrepo', 'restrepo.thomas@googlemail.com', 'Hello fcma.gov.ae Webmaster.', '622605348', 'Hello,\r\n\r\nWe have reviewed your website and would like to inform you that we can help you achieve the 1st position on Google in a short time and at a very affordable cost.\r\n\r\nIf you’re interested, please contact us on WhatsApp at +1 683 757 2738.', NULL, '2025-10-19 08:08:34'),
(41, 'Leeteami', 'zekisuquc419@gmail.com', 'Hallo    writing about your the prices', '87518584553', 'Hi, ego volo scire vestri pretium.', NULL, '2025-10-19 20:06:45'),
(42, 'Sondra Earnhardt', 'sondra.earnhardt@msn.com', 'Drive more visitors to fcma.gov.ae with our proven AI powered traffic system.', '341894608', 'Boost your website’s audience with our AI-powered traffic service, delivering targeted visitors at a lower cost than paid ads. Contact us today.\r\n\r\nhttps://cutt.ly/Dr3e4imP', NULL, '2025-10-20 00:53:56'),
(43, 'Darwin Desantis', 'desantis.darwin@googlemail.com', 'fcma.gov.ae', '246843432', 'Take a look at my website for more info: https://submissiontodirectory.top/', NULL, '2025-10-20 05:48:06'),
(44, 'Makayla Causey', 'causey.makayla85@yahoo.com', 'Unlock More Leads with Our AI Traffic Solution', '745474287', 'Struggling with low website leads for Fcma Gov Ae? This short video shows how our AI can boost your traffic: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-20 06:21:11'),
(45, 'Katharina Noonan', 'katharina.noonan@msn.com', 'Sbnhyqh', '152430193', 'Struggling with low website engagement? Our AI-enhanced pulls custom visitors through keywords or place-specific targeting from global regions to neighborhoods.  \r\nLooking for more sales, engaged users, or greater web impact?  \r\nWe shape it to suit your vision. Enjoy a 7-day free trial period with no contract. Join now:\r\n\r\nhttps://cutt.ly/Er3e4rVu', NULL, '2025-10-20 19:17:06'),
(46, 'Alexandria Ridley', 'ridley.alexandria@gmail.com', 'Dear fcma.gov.ae Administrator.', '470511947', 'Hello,\r\nWe’re ready to promote and sell your goods to our customers. Some clients want to order immediately. Please contact us on WhatsApp: +1 289 710 5785\r\nSincerely', NULL, '2025-10-21 19:01:18'),
(47, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo  i am write about your the price for reseller', '82259877873', 'Hi, ego volo scire vestri pretium.', NULL, '2025-10-22 00:56:08'),
(48, 'Kate Luciano', 'luciano.joann51@hotmail.com', 'Request', '318036974', 'Hi fcma.gov.ae Admin, I found your site on Google and noticed your visual identity could better reflect your brand’s potential.\r\n\r\nFirst impressions matter, and a refined brand identity can make a huge difference.\r\n\r\nI’d love to help you craft an elevated, cohesive visual identity that truly represents your brand. I focus on thoughtful, high-quality design for brands who value intention.\r\n\r\nIf you\'re interested, reach me here: https://tinyurl.com/Kate-porfolio\r\n\r\nOr if you know anyone else who might be interested, please share this with them.\r\n\r\nKate\r\nBrand Designer & Art Director', NULL, '2025-10-22 01:54:13'),
(49, 'Chasity Hann', 'hann.chasity86@gmail.com', 'Your Instagram Success, Powered by AI – Start Growing Now', '4107018609', 'Get additional leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to boost more traffic, generate leads, and grow your brand\'s reach, you can find more information and start a free trial here: https://cutt.ly/Cr9BMXUV\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Increases followers with focused, top-tier audiences.\r\n-Enhances engagement through advanced AI algorithms.\r\n-Aims at users based on hashtags and accounts they follow.\r\n-Reduces time by automating tedious Instagram tasks.\r\n\r\nOur service emphasizes on authentic, organic growth—zero bots, zero fake followers. It’s perfect for brands like yours that want to convert Instagram into a lead generation engine. Best of all, our service is provided on a monthly subscription basis so you can opt out any time you like. No contracts and a 7 day free trial.', NULL, '2025-10-22 09:25:11'),
(50, 'Taylor Perkinson', 'taylor.perkinson@gmail.com', 'Struggling with Website Traffic? This Video Can Help!', '7017935919', 'Struggling to get targeted leads to your Fcma Gov Ae website? Watch this: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-22 19:40:47'),
(51, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hello    wrote about     price', '81734846692', 'Здравейте, исках да знам цената ви.', NULL, '2025-10-22 20:50:01'),
(52, 'Dick Rister', 'dick.rister@hotmail.com', 'Turn Your Instagram Account Into A Cash Machine', '5098806504', 'If you are anything like me you likely spend a lot of time taking photos with your mobile phone and posting them to Facebook or Instagram. Well, did you know that you can actually be earning hundreds, or even thousands of dollars each month just by uploading photos to Instagram?\r\n\r\nI was skeptical at first, but this system is the real deal! I got my hands on an evaluation copy of “ProfitGram” a few days ago and I’m already seeing the money flow into my account.\r\n\r\n=> https://tinyurl.com/4bffmxys', NULL, '2025-10-23 04:27:40'),
(53, 'Kate Bohr', 'regan.bohr99@gmail.com', 'Request', '249858012', 'Hi fcma.gov.ae Admin, I found your site on Google and noticed your visual identity could better reflect your brand’s potential.\r\n\r\nFirst impressions matter, and a refined brand identity can make a huge difference.\r\n\r\nI’d love to help you craft an elevated, cohesive visual identity that truly represents your brand. I focus on thoughtful, high-quality design for brands who value intention.\r\n\r\nIf you\'re interested, reach me here: https://tinyurl.com/Kate-porfolio\r\n\r\nOr if you know anyone else who might be interested, please share this with them.\r\n\r\nKate\r\nBrand Designer & Art Director', NULL, '2025-10-23 11:37:34'),
(54, 'Mathias Narvaez', 'mathias.narvaez37@gmail.com', 'To the fcma.gov.ae Owner.', '5', 'Dear Team,\r\nWe’re interested in reselling your products and have several clients ready to place orders. Kindly get in touch through WhatsApp: +48 726 92 4259\r\nWarm regards', NULL, '2025-10-24 02:51:15'),
(55, 'Daniella Barlow', 'daniella.barlow@gmail.com', 'Skyrocket Your Website Traffic with AI', '645807289', 'Save on marketing with our AI-optimized service, delivering keyword and location-targeted traffic for less than paid ad campaigns. Start scaling your website now.\r\n\r\nhttps://cutt.ly/Cr9BMXUV', NULL, '2025-10-25 13:54:53'),
(56, 'Rhys Etienne', 'rhys.etienne@gmail.com', 'See immediate results for fcma.gov.ae\'s traffic with our AI traffic service.', '3814096328', 'Our AI-powered service delivers high-intent visitors to your website, saving you money compared to traditional paid ads. Ready to enhance your online presence?\r\n\r\nhttps://cutt.ly/Er3e4rVu', NULL, '2025-10-25 20:44:52'),
(57, 'Sondra Steward', 'sondra.steward@gmail.com', 'Unlock Real Growth with AI: Grow Your Instagram Today', '7734520348', 'Capture more leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to increase enhanced traffic, create leads, and grow your brand\'s reach, you can access more information and start a no-cost trial here: https://cutt.ly/Er9BMJtZ\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Grows followers with specific, high-quality audiences.\r\n-Enhances engagement through advanced AI algorithms.\r\n-Focuses on users based on hashtags and accounts they follow.\r\n-Reduces effort by automating repetitive Instagram tasks.\r\n\r\nOur service emphasizes on real, organic growth—no bots, without fake followers. It’s perfect for brands like yours that want to convert Instagram into a lead generation engine. Even better, our service is provided on a month-by-month subscription basis so you can cancel at any point you like. No contracts and a one-week free trial.', NULL, '2025-10-26 06:11:36'),
(58, 'Scotty Bermudez', 'scotty.bermudez@yahoo.com', 'Get More Leads Fast – Watch This Now!', '480621699', 'Need more clicks and conversions for Fcma Gov Ae? Watch this short video about our AI-powered traffic service: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-26 07:20:02'),
(59, 'Georgeteami', 'dinanikolskaya99@gmail.com', 'Hallo, i am wrote about   the price for reseller', '86557176533', 'Hi, I wanted to know your price.', NULL, '2025-10-26 10:04:03'),
(60, 'Brett Stpierre', 'brett.stpierre49@yahoo.com', 'Wanted to ask about your business', '3988285224', 'Here is my site: https://submissiontodirectory.top/', NULL, '2025-10-26 13:40:26'),
(61, 'Francesco Bernacchi', 'bernacchi.francesco@msn.com', 'Discover the Secret to More Website Leads', '249669922', 'Unlock more targeted leads with our AI! Watch this short video to get started: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-26 19:03:27'),
(62, 'Angel Bouton', 'angel.bouton@hotmail.com', 'Hello fcma.gov.ae Owner!', '695143651', 'We are looking to represent your brand as a reseller. Our clients are interested in your items. Please reach us on WhatsApp: +1 579 660 1705\r\nKind regards', NULL, '2025-10-27 02:03:02'),
(63, 'tarek', 'marketing@domusgroup.ae', 'دعوه رسميه للمشاركة في معرض الشرق الأوسط للصيد والأسلحة ٢٠٢٥', '0559798024', 'السادة / مكتب الإعلام المحترم\r\nيسر مجموعة دوموس التنسيق مع مكتبكم لزيارة صاحب السمو الشيخ سعود بن صقر القاسمي وولي العهد صاحب السمو الشيخ محمد بن سعود بن صقر القاسمي الكريم إلى معرض الشرق الأوسط للصيد والأسلحة ٢٠٢٥، المزمع إقامته من 6 إلى 10\r\n.نوفمبر في مدينة إكسبو دبي\r\n.المعرض يجمع أبرز المصنعين والجهات الحكومية والهواة من مختلف أنحاء المنطقة والعالم، ويتيح فرصة لتغطية مميزة لمشاركة سموه الكريم والاطلاع على أبرز المنتجات والابتكارات في مجال الصيد والأسلحة\r\n:نرجو تزويدنا بالمعلومات التالية لتسهيل الترتيبات\r\nالتاريخ والوقت المفضل للزيارة\r\nأسماء ومناصب الوفد المرافق، إن وجد\r\nأي متطلبات بروتوكولية خاصة\r\nنتطلع لتنسيق زيارة سلسة وناجحة بما يعكس أهمية الحدث ومشاركة سموء الكريم\r\nجمع الشكر والتقدير\r\nمجموعة دوموس\r\nالجهة المنظمة لمعرض الشرق الأوسط للصيد والأسلحة ٢٠٢٥\r\nدبي، الإمارات العربية المتحدة', NULL, '2025-10-27 07:22:47'),
(64, 'Elaine House', 'elaine.house@googlemail.com', 'Discover how fcma.gov.ae can increase its daily visitors!', '346314482', 'Our AI-powered service brings precise, keyword-driven traffic from your chosen locations to your website, all at a fraction of the cost of paid ads. Connect with us today.\r\n\r\nhttps://cutt.ly/Sr3e4wYE', NULL, '2025-10-27 09:53:16'),
(65, 'Vanessa Edden', 'edden.vanessa@gmail.com', 'wondering', '626653223', 'Ever stop to think how much you\'re spending on marked-up CPMs for Connected TV ads?\r\nIf you\'re using “premium” audience segments without verifying who you\'re actually reaching, that money is likely feeding someone else\'s family.\r\nNo pressure. Here’s the site if you\'re open to see a revolutionary vision for digital advertising\r\ntopshelfaudience.com using real-time Intent data from an Integration in our platform to Lotame.com. You can reach me at marketing@mrmarketingres.com or 843-720-7301. And if this isn\'t a fit please feel free to email me and I\'ll be sure not to reach out again.  Thanks!', NULL, '2025-10-27 09:55:52'),
(66, 'Georgetta Thomason', 'thomason.georgetta@googlemail.com', 'investigation', '6642711106', 'Hi there! If you’re seeing this, you know it works! I’ll send your ad to tons of websites just like this. Visit contactformpromotion.com to get started.', NULL, '2025-10-27 21:32:27'),
(67, 'Maya Baron', 'baron.maya@gmail.com', 'Hi fcma.gov.ae Webmaster.', '53157583', 'Here’s the link to my official site: https://submissiontodirectory.top', NULL, '2025-10-28 20:57:20'),
(68, 'Tanisha Goetz', 'tanisha.goetz29@yahoo.com', 'Increase fcma.gov.ae\'s day-to-day visitors with our AI service.', '663292627', 'Attract the right audience to your site with our AI-driven traffic solution, offering better results than paid ads at a fraction of the price. Get started today.\r\n\r\nhttps://cutt.ly/Dr3e4imP', NULL, '2025-10-28 22:59:51'),
(69, 'راي لاوندس', 'raylawandos03@gmail.com', 'مزاولة نشاط شركتي في الامارات', '9613032324', 'صباح الخير ، \r\nلقد ارسلت معاونتي بريد البارحة للسؤال عن كيفية مزاولة العمل والكلفة في الامارات، نحن شركة اختصاصنا التسويق الرقمي ، التسويق عبر وسائل التواصل الاجتماعي.\r\nهل من الممكن الرد على اسألتنا وشكرا', NULL, '2025-10-29 10:17:01'),
(70, 'Jai Holman', 'jai.holman42@gmail.com', 'Something you might find useful', '31977020', 'Here is my site: https://submissiontodirectory.top/', NULL, '2025-10-29 16:18:23'),
(71, 'Earnestine Didomenico', 'earnestine.didomenico@msn.com', 'Hello fcma.gov.ae Administrator.', '7873783169', 'We are looking to represent your brand as a reseller. Our clients are interested in your items. Please reach us on WhatsApp: +1 548 300 6290\r\nKind regards', NULL, '2025-10-29 23:03:00'),
(72, 'Sven Dane?', 'dane.sven@outlook.com', 'Low Leads? Watch This Quick AI Fix', '6314255155', 'Struggling with boost your website’s reach? Our smart platform pulls perfect visitors through keywords or regional targeting from continents to local streets.  \r\nLooking for more sales, active website traffic, or greater web impact?  \r\nWe shape it to align with your vision. Enjoy a 7-day free trial period with no contract. Join now:\r\n\r\nhttps://cutt.ly/2r7yIuOL', NULL, '2025-10-30 11:58:37'),
(73, 'Jeannette Scarberry', 'jeannette.scarberry@hotmail.com', 'Tired of Low Clicks? Check Out This AI Trick', '440370307', 'Need more clicks and conversions for Fcma Gov Ae? Watch this short video about our AI-powered traffic service: https://www.youtube.com/watch?v=VOdZEKK52Rw', NULL, '2025-10-30 17:30:19'),
(74, 'Karen B.', 'outreachseo56@gmail.com', 'Quick F.ree Link Exchange For SEO Boost?', '22', 'Hi,\r\n\r\nHope all is well. \r\n\r\nLong story short... I can link to your site fcma.gov.ae from 5x legit local business websites (>DR30) — all FOC, no money involved. In return, you’d link to 5 different of my client sites from your end for a mutual SEO boost.\r\n\r\nInterested? I can send you the site list to choose.\r\n\r\nCheers,\r\nKaren', NULL, '2025-10-31 05:25:44'),
(75, 'Christoper Reddy', 'reddy.christoper@gmail.com', 'Explore Great Deals at AliExpress', '38', 'Find quality products at affordable prices. Browse the latest offers and enjoy easy, secure shopping on AliExpress.\r\n\r\nShop Now: https://mutualaffiliate.com/VaRSHO', NULL, '2025-11-01 01:12:03'),
(76, 'Julius Brookes', 'julius.brookes@yahoo.com', 'Hello fcma.gov.ae Administrator!', '745153451', 'Hi,\r\nWe would like to become your reseller. Our customers are asking about your products. Please contact us via WhatsApp: +1 581 615 8781\r\nRegards', NULL, '2025-11-01 08:58:29'),
(77, 'Leeteami', 'zekisuquc419@gmail.com', 'Hallo, i am write about     prices', '85476311872', 'Hi, roeddwn i eisiau gwybod eich pris.', NULL, '2025-11-01 13:15:20'),
(78, 'Kate Arida', 'janna.arida@gmail.com', 'Request', '9118136934', 'Hi fcma.gov.ae Admin, I found your site on Google and noticed your visual identity could better reflect your brand’s potential.\r\n\r\nFirst impressions matter, and a refined brand identity can make a huge difference.\r\n\r\nI’d love to help you craft an elevated, cohesive visual identity that truly represents your brand. I focus on thoughtful, high-quality design for brands who value intention.\r\n\r\nIf you\'re interested, reach me here: https://tinyurl.com/Kate-porfolio\r\n\r\nOr if you know anyone else who might be interested, please share this with them.\r\n\r\nKate\r\nBrand Designer & Art Director', NULL, '2025-11-01 18:06:27'),
(79, 'Karen B.', 'outreachseo56@gmail.com', 'Quick F.ree Link Exchange For SEO Boost?', '483313109', 'Hi,\r\n\r\nHope all is well. \r\n\r\nLong story short... I can link to your site fcma.gov.ae from 5x legit local business websites (>DR30) — all FOC, no money involved. In return, you’d link to 5 different of my client sites from your end for a mutual SEO boost.\r\n\r\nInterested? I can send you the site list to choose.\r\n\r\nCheers,\r\nKaren', NULL, '2025-11-01 18:28:31'),
(80, 'Nadine Darling', 'nadine.darling@outlook.com', 'Transform Your Website Traffic Free For 7 Days', '7734557426', 'Attract precise, keyword-driven traffic to your website with our AI-optimized service, costing much less than paid ad platforms. Start growing now.\r\n\r\nhttps://cutt.ly/Sr7yIdvN', NULL, '2025-11-02 02:07:49'),
(81, 'Jame Kilvington', 'kilvington.jame@hotmail.com', 'Struggling with Website Traffic? This Video Can Help!', '240836113', 'Ready to drive targeted visitors to your Fcma Gov Ae site? This quick video explains how our AI works: https://www.youtube.com/shorts/u9asGHMA7-Y', NULL, '2025-11-02 17:15:20'),
(82, 'Simonteami', 'dinanikolskaya99@gmail.com', 'Hallo  i wrote about your   price for reseller', '86926465583', 'Szia, meg akartam tudni az árát.', NULL, '2025-11-04 00:46:09'),
(83, 'Belle Fitzhardinge', 'fitzhardinge.belle@outlook.com', 'Low Leads? Watch This Quick AI Fix', '3355772243', 'Watch this if you are struggling to get targeted leads to your Fcma Gov Ae website: https://www.youtube.com/shorts/8emL4whbdyM', NULL, '2025-11-04 07:26:35'),
(84, 'Eva Daly', 'daly.eva@gmail.com', 'To the fcma.gov.ae Webmaster.', '7785716508', 'Dear Team,\r\nWe’re interested in reselling your products and have several clients ready to place orders. Kindly get in touch through WhatsApp: +1 705 800 4081\r\nWarm regards', NULL, '2025-11-04 07:45:46'),
(85, 'Kathryn Meares', 'meares.kathryn@hotmail.com', 'Discover the Secret to More Website Leads', '6993608745', 'Save big while driving targeted traffic to your website with our AI-powered service, far more affordable than traditional paid ads. Contact us to see the difference.\r\n\r\nhttps://cutt.ly/Rr56ZCmh', NULL, '2025-11-04 09:00:52'),
(86, 'Louis Conti', 'conti.louis59@gmail.com', 'Transform fcma.gov.ae\'s visibility with our AI traffic tool.', '6', 'Our AI-optimized service delivers keyword-specific visitors to your site, offering better results than paid ads at a fraction of the price. Contact us to start.\r\n\r\nhttps://cutt.ly/Sr7yIdvN', NULL, '2025-11-04 09:34:47'),
(87, 'Hayden Maggard', 'hayden@maggard.medicopostura.com', 'Hayden Maggard', '353710879', 'Morning \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon\'t miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nThe Best, \r\n\r\nHayden', NULL, '2025-11-05 09:38:28'),
(88, 'Beth Murphy', 'bethmurphy1806@gmail.com', 'Request', '6025710093', 'Hey fcma.gov.ae Owner,  \r\n\r\nI came across your website and noticed most businesses like yours spend too much time managing their books.  \r\n\r\nI help businesses keep their QuickBooks clean, accurate, and tax-ready without hiring full-time staff.  \r\n\r\nIf you\'d like a quick look at how I do it, check this: https://tinyurl.com/Beth-Bookkeeping\r\n\r\n– Beth  \r\nCertified QuickBooks ProAdvisor', NULL, '2025-11-05 18:56:32'),
(89, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hi  i wrote about your   prices', '85431426497', 'Sveiki, aš norėjau sužinoti jūsų kainą.', NULL, '2025-11-05 21:40:46'),
(90, 'Melinda Lovegrove', 'lovegrove.melinda87@gmail.com', 'Want Targeted Visitors? See How in 60 Seconds', '3289148122', 'Unlock more targeted leads with our AI! Watch this short video to get started: https://www.youtube.com/watch?v=UEooLHpFYW0', NULL, '2025-11-06 16:05:19'),
(91, 'Chantal Neely', 'neely.chantal@yahoo.com', 'need assistance', '6646764195', 'Ever stop to think how much you\'re spending on marked-up CPMs for Connected TV ads?\r\nIf you\'re using “premium” audience segments without verifying who you\'re actually reaching, that money is likely feeding someone else\'s family.\r\nNo pressure. Here’s the site if you\'re open to see a revolutionary vision for digital advertising\r\ntopshelfaudience.com using real-time Intent data from an Integration in our platform to Lotame.com. You can reach me at marketing@mrmarketingres.com or 843-720-7301. And if this isn\'t a fit please feel free to email me and I\'ll be sure not to reach out again.  Thanks!', NULL, '2025-11-06 21:07:48'),
(92, 'Kassie Farncomb', 'farncomb.kassie@yahoo.com', 'Looking for the right contact', '669054973', 'Here is my site: https://submissiontodirectory.top/', NULL, '2025-11-07 01:27:14'),
(93, 'Gary Pauley', 'pauley.gary@msn.com', 'Struggling with website traffic? Try Our 7-Day Free Trial', '483164212', 'Your fcma.gov.ae website could be missing out on thousands of visitors. Use our AI powered system to drive targeted traffic to your website and increase leads and sales for free: https://cutt.ly/Xr615Rpy', NULL, '2025-11-07 04:50:20'),
(94, 'Leeteami', 'zekisuquc419@gmail.com', 'Hallo, i am write about   the price for reseller', '85221232919', 'Sveiki, es gribēju zināt savu cenu.', NULL, '2025-11-07 13:49:36'),
(95, 'حسني نجار', 'hosninajjar1@gmail.com', 'مدقق لغوي', '0563949930', 'أنا متخصص في التدقيق والمراجعة اللغوية للإصدارات الأدبية بأنواعها كافة. حاصل على ماجستير لغة عربية وخبرتي تزيد عن ١٠ سنوات في التدقيق اللغوي.\r\nعملت مع مجمع اللغة العربية في الشارقة ضمن فريق التدقيق اللغوي للمعجم التاريخي للغة العربية. والآن أعمل معهم في الموسوعة العربية الشاملة.\r\nأرغب بالتعاون مع هيئتكم الموقرة في هذا المجال.\r\nودمتم بود', NULL, '2025-11-07 19:14:33'),
(96, 'Buford Guilfoyle', 'guilfoyle.buford@gmail.com', 'I Rkudhwwnn', '4792009898', 'Which keywords and locations do you need traffic from for fcma.gov.ae ? Check our traffic network to see what kind of volume we have for your keywords and locations: https://cutt.ly/ktqiYzV9\r\nThen start a 7 day free trial of our targeted traffic service that is powered by AI, no contracts, cancel at any time.', NULL, '2025-11-08 01:16:31'),
(97, 'Melodee Folsom', 'folsom.melodee@gmail.com', 'Want Targeted Visitors? See How in 60 Seconds', '917011091', 'Boost your Fcma Gov Ae website’s traffic with AI! Watch this to learn more: https://www.youtube.com/shorts/8emL4whbdyM', NULL, '2025-11-08 03:00:17'),
(98, 'Leeteami', 'zekisuquc419@gmail.com', 'Hi, i am write about   the price for reseller', '84579376163', 'Sawubona, bengifuna ukwazi intengo yakho.', NULL, '2025-11-08 10:00:45'),
(99, 'Beth Murphy', 'bethmurphy1806@gmail.com', 'Request', '8674368126', 'Hey fcma.gov.ae Owner,  \r\n\r\nI came across your website and noticed most businesses like yours spend too much time managing their books.  \r\n\r\nI help businesses keep their QuickBooks clean, accurate, and tax-ready without hiring full-time staff.  \r\n\r\nIf you\'d like a quick look at how I do it, check this: https://tinyurl.com/Beth-Bookkeeping\r\n\r\n– Beth  \r\nCertified QuickBooks ProAdvisor', NULL, '2025-11-08 12:26:22'),
(100, 'Hershel Brim', 'hershel.brim@outlook.com', 'Boost Your Site’s Visitors in Just 7 Days!', '2448204721', 'Ready to drive targeted visitors to your Fcma Gov Ae site? This quick video explains how our AI works: https://www.youtube.com/watch?v=UEooLHpFYW0', NULL, '2025-11-08 14:23:39'),
(101, 'Shauna Horst', 'horst.shauna@msn.com', 'Struggling with website traffic? Try Our 7-Day Free Trial', '353235645', 'Which keywords and locations do you need traffic from for fcma.gov.ae ? Check our traffic network to see what kind of volume we have for your keywords and locations: https://cutt.ly/5tqiYkKs\r\nThen start a 7 day free trial of our targeted traffic service that is powered by AI, no contracts, cancel at any time.', NULL, '2025-11-08 14:26:59'),
(102, 'Florian Elkins', 'elkins.florian@outlook.com', 'Dear fcma.gov.ae Admin!', '2775403960', 'https://postyouradfree.top\r\nhttp://postyouradfree.top', NULL, '2025-11-08 15:37:48'),
(103, 'Carmela Ragsdale', 'carmela.ragsdale@gmail.com', 'Tired of Low Clicks? Check Out This AI Trick', '6806194691', 'Tired of low website traffic? This video shows how our AI can help: https://youtu.be/UEooLHpFYW0', NULL, '2025-11-08 18:28:47'),
(104, 'Simonteami', 'dinanikolskaya99@gmail.com', 'Hallo,   writing about     prices', '86725638516', 'Szia, meg akartam tudni az árát.', NULL, '2025-11-09 17:24:13'),
(105, 'Janet Julian', 'ruchiuyou@gmail.com', 'YouTube Promotion: Grow your subscribers by 500 each month', '351662224', 'Hi. We run a YouTube growth service, which increases your number of subscribers both safety and practically.\r\n\r\n- We guarantee to gain you new 500 subscribers per month\r\n- People subscribe because they are interested in your videos/channel, increasing video likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately. If you are interested and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\n\r\nTo Unsubscribe, reply with the word unsubscribe in the subject.', NULL, '2025-11-09 21:31:30'),
(106, 'Ernesto Grice', 'grice.ernesto@yahoo.com', 'Low Leads? Watch This Quick AI Fix', '32', 'Want more targeted traffic to your Fcma Gov Ae website? See how our AI-powered solution can help in this quick video: https://www.youtube.com/shorts/8emL4whbdyM', NULL, '2025-11-10 03:31:49'),
(107, 'Drew De Neeve', 'deneeve.drew@yahoo.com', 'Struggling with website traffic? Try Our 7-Day Free Trial', '244754183', 'Which keywords and locations do you need traffic from for fcma.gov.ae ? Check our traffic network to see what kind of volume we have for your keywords and locations: https://cutt.ly/jtqiYjnv\r\nThen start a 7 day free trial of our targeted traffic service that is powered by AI, no contracts, cancel at any time.', NULL, '2025-11-10 04:37:55'),
(108, 'Margaret Julia', 'royalredover@outlook.com', 'ChatGPT, Gemini, Stable Diffusion & More… Without Monthly Fees', '41786735', 'Hello,\r\n\r\nWe have a promotional offer for your website fcma.gov.ae.\r\n\r\nWhat if you could use the best AI models in the world without limits or extra costs? Now you can. With our brand-new AI-powered app, you\'ll have ChatGPT, Gemini Pro, Stable Diffusion, Cohere AI, Leonardo AI Pro, and more — all under one roof. No monthly subscriptions, no API key expenses, no experience required, just one dashboard, one payment, and endless possibilities.\r\n\r\nSee it in action: https://aistore.vinhgrowth.com\r\n\r\nYou are receiving this message because we believe our offer may be relevant to you. \r\nIf you do not wish to receive further communications from us, please click here to UNSUBSCRIBE: https://vinhgrowth.com/unsubscribe?domain=fcma.gov.ae\r\nAddress: 60 Crown Street, London\r\nLooking out for you, Margaret Julia', NULL, '2025-11-10 06:21:20'),
(109, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Aloha    wrote about   the price', '84499568391', 'Xin chào, tôi muốn biết giá của bạn.', NULL, '2025-11-10 20:41:39'),
(110, 'Erik Lebron', 'info@fcma.gov.ae', 'Erik Lebron', '3674823396', 'Good day \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nTo your success, \r\n\r\nErik', NULL, '2025-11-11 08:03:48'),
(111, 'Beth Murphy', 'bethmurphy1806@gmail.com', 'Request', '3202121022', 'Hi fcma.gov.ae Team.  \r\n\r\nI came across your website and noticed most businesses like yours spend too much time managing their books.  \r\n\r\nI help businesses keep their QuickBooks clean, accurate, and tax-ready without hiring full-time staff.  \r\n\r\nIf you\'d like a quick look at how I do it, check this: https://tinyurl.com/Beth-Bookkeeping\r\n\r\n– Beth  \r\nCertified QuickBooks ProAdvisor', NULL, '2025-11-11 12:45:24'),
(112, 'Leeteami', 'zekisuquc419@gmail.com', 'Hi    writing about     prices', '89129461477', 'Hai, saya ingin tahu harga Anda.', NULL, '2025-11-11 20:56:00'),
(113, 'Karen B.', 'outreachseo56@gmail.com', 'Quick F.ree Link Exchange For SEO Boost?', '683715130', 'Hi,\r\n\r\nHope all is well. \r\n\r\nLong story short... I can link to your site fcma.gov.ae from 5x legit local business websites (>DR30) — all FOC, no money involved. In return, you’d link to 5 different of my client sites from your end for a mutual SEO boost.\r\n\r\nInterested? I can send you the site list to choose.\r\n\r\nCheers,\r\nKaren', NULL, '2025-11-12 12:23:54'),
(114, 'Rubin Strauss', 'rubin.strauss@gmail.com', 'need to know', '726292002', 'Hi there! You’re reading this, so it works! I can do the same for your ad using my AI software. Visit https://marketingwithcontactforms.ink to get started.', NULL, '2025-11-12 13:09:07'),
(115, 'Eula Darosa', 'darosa.eula@hotmail.com', 'Short message for the owner', '71', 'Here is my site: https://submissiontodirectory.top/', NULL, '2025-11-12 13:14:31'),
(116, 'عمر إبراهيم محمد', 'o.alwfdy@yahoo.com', 'شكوى', '00201159594420', 'بعد التحية والتقدير\r\nأرجوا أن تكون مجلة الفجيرة , الغراء على الموقع بنظام bdf', NULL, '2025-11-13 13:46:46'),
(117, 'Bertha Schmitz', 'Bertha.Schmitz@Paulmlchl.de', 'Request for quote', '0988555221', 'Hello,\r\nI am keen on one of the items from your product range. Could you kindly provide detailed information regarding its specifications and pricing?\r\nThank you in advance for your assistance.', NULL, '2025-11-14 01:19:44'),
(118, 'Dick Cleburne', 'cleburne.dick@googlemail.com', 'Discover how fcma.gov.ae can boost its daily visitors!', '9054204914', 'Which keywords and locations do you need traffic from for fcma.gov.ae ? Check our traffic network to see what kind of volume we have for your keywords and locations: https://cutt.ly/5tqiYkKs\r\nThen start a 7 day free trial of our targeted traffic service that is powered by AI, no contracts, cancel at any time.', NULL, '2025-11-14 06:25:16'),
(119, 'Margarita Leist', 'margarita.leist@yahoo.com', 'Skyrocket Your Website Traffic with AI', '178310054', 'Ready to drive targeted visitors to your Fcma Gov Ae site? This quick video explains how our AI works: https://youtu.be/UEooLHpFYW0', NULL, '2025-11-14 09:01:04'),
(120, 'Jody Crum', 'crum.jody@googlemail.com', 'Hi fcma.gov.ae Webmaster!', '557633038', 'https://postyouradfree.top\r\nhttp://postyouradfree.top', NULL, '2025-11-14 14:18:03'),
(121, 'Reva Boulger', 'boulger.reva@msn.com', 'M Wjomrc Hdf', '5409291057', 'Which keywords and locations convert best for fcma.gov.ae? Check our AI-powered traffic dashboard for live data, then activate a no-risk 7-day free trial to flood your site with qualified leads: https://cutt.ly/4twBl4uf', NULL, '2025-11-15 10:53:11'),
(122, 'Armand Meece', 'armand.meece@gmail.com', 'Vdy Vd thqc', '353951206', 'Which keywords and locations do you need traffic from for fcma.gov.ae ? Check our traffic network to see what kind of volume we have for your keywords and locations: https://cutt.ly/dtqiYgjz\r\nThen start a 7 day free trial of our targeted traffic service that is powered by AI, no contracts, cancel at any time.', NULL, '2025-11-15 16:31:30'),
(123, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Aloha  i writing about     price', '85347817615', 'Xin chào, tôi muốn biết giá của bạn.', NULL, '2025-11-15 20:23:39'),
(124, 'Jeffrey Reda', 'jeffrey.reda@gmail.com', 'Discover the Secret to More Website Leads', '3709174244', 'Discover how our AI can skyrocket your Fcma Gov Ae website leads in this quick video: https://www.youtube.com/shorts/8emL4whbdyM', NULL, '2025-11-15 23:12:08'),
(125, 'Leeteami', 'zekisuquc419@gmail.com', 'Hello, i write about your the prices', '87448673564', 'Sveiki, aš norėjau sužinoti jūsų kainą.', NULL, '2025-11-15 23:23:13'),
(126, 'FATEN HUSSEIN', 'lynahdad3@gmail.com', 'طلب لقاء', '00971508798500', 'السلام عليكم ورحمة الله إسمي فاتن حسين ملقبة فنيآ لينا حداد أعمل مطربة أود أن أشارك معكم في برنامج سوالف ليل وسأرسل لكم روابط قناتي الرسمية على اليوتيوب إن تكرمتم با القبول وشكرآ لكم دمتم بخير', NULL, '2025-11-16 02:17:29'),
(127, 'Keeley Duran', 'keeley.duran@gmail.com', 'Revolutionize Your Instagram Game with AI-Powered Growth', '312131777', 'Capture additional leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to increase greater traffic, create leads, and expand your brand\'s reach, you can access more information and start a free trial here: https://cutt.ly/MtegGlEO\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Grows followers with targeted, premium audiences.\r\n-Enhances engagement through smart AI algorithms.\r\n-Aims at users based on hashtags and accounts they follow.\r\n-Reduces time by automating repetitive Instagram tasks.\r\n\r\nOur service emphasizes on real, organic growth—without bots, without fake followers. It’s ideal for brands like yours that want to convert Instagram into a lead generation powerhouse. Even better, our service is provided on a flexible subscription basis so you can opt out at any point you like. No contracts and a one-week free trial.', NULL, '2025-11-16 12:18:45'),
(128, 'Afza Anjum', 'paul.arvind@mail1.ibeconferences.com', '3rd Edition Employee Wellbeing Conference', '8892074964', '\"Hi,\r\n\r\nI\'m with the organizing committee of the 3rd Edition Employee Wellbeing Conference coming up on 26th and 27th of November 2025 at the Radisson Blu Hotel, Dubai Canal View, Dubai.\r\n\r\nThis summit will unite 150+ key leaders and influencers responsible for Employee Wellbeing initiatives in their respective organizations.\r\n\r\nhttps://www.wellbeingsummits.com\"', NULL, '2025-11-17 09:04:00'),
(129, 'Beth Murphy', 'mattie.lowrance@gmail.com', 'Request', '29212745', 'Hi there,\r\n\r\nI came across your website and noticed most businesses like yours spend too much time managing their books.  \r\n\r\nI help businesses keep their QuickBooks clean, accurate, and tax-ready without hiring full-time staff.  \r\n\r\nIf you\'d like a quick look at how I do it, check this: https://tinyurl.com/Beth-Bookkeeping\r\n\r\n– Beth', NULL, '2025-11-17 18:53:08'),
(130, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo,   write about your the prices', '81182762839', 'Hallo, ek wou jou prys ken.', NULL, '2025-11-17 19:04:58'),
(131, 'Victor Dowdy', 'victor.dowdy@gmail.com', 'Want Targeted Visitors? See How in 60 Seconds', '316782268', 'Struggling to get targeted leads to your Fcma Gov Ae website? Watch this: https://www.youtube.com/watch?v=UEooLHpFYW0', NULL, '2025-11-17 21:38:19'),
(132, 'Scot Tovell', 'info@scot.bangeshop.com', 'Scot Tovell', '6132227108', 'Hello, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nBest regards,\r\n\r\nScot', NULL, '2025-11-18 04:30:10'),
(133, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hi, i write about     price for reseller', '84688535674', 'Hallo, ek wou jou prys ken.', NULL, '2025-11-18 16:41:02'),
(134, 'Reece Mullaly', 'reece.mullaly@googlemail.com', 'Transform fcma.gov.ae\'s reach with our AI traffic service.', '3687917439', 'Which keywords and locations matter most to your fcma.gov.ae website right now? Plug them into our AI traffic network to see exact search volume—then start a 7-day free trial, cancel anytime: https://cutt.ly/4twBl4uf', NULL, '2025-11-18 16:44:29'),
(135, 'Beth Murphy', 'slaton.terrence@gmail.com', 'Request', '4394718', 'Hi there,\r\n\r\nI came across your website and noticed most businesses like yours spend too much time managing their books.  \r\n\r\nI help businesses keep their QuickBooks clean, accurate, and tax-ready without hiring full-time staff.  \r\n\r\nIf you\'d like a quick look at how I do it, check this: https://tinyurl.com/Beth-Bookkeeping\r\n\r\n– Beth', NULL, '2025-11-19 13:48:04'),
(136, 'Georgeteami', 'dinanikolskaya99@gmail.com', 'Hi, i writing about your the price', '88686764671', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', NULL, '2025-11-20 01:36:11'),
(137, 'Niklas Ackman', 'ackman.niklas@gmail.com', 'Hi fcma.gov.ae Webmaster.', '98205086', 'http://sitesubmissionservice.top', NULL, '2025-11-20 14:47:49'),
(138, 'Niki Fairbridge', 'niki.fairbridge@gmail.com', 'Pgptn', '4409358519', 'How much website traffic could your ideal keywords generate in your target locations—without paid ads? Run a free volume report in our AI powered system—then start your 7-day free trial, zero commitment:  https://cutt.ly/WtwBzClp', NULL, '2025-11-20 15:20:32');
INSERT INTO `contact_us` (`id`, `user_name`, `user_mail`, `subject`, `phone`, `message`, `service`, `add_date`) VALUES
(139, 'Silvia Harwood', 'harwood.silvia@googlemail.com', 'investigation', '218123431', 'Ever stop to think how much you\'re spending on marked-up CPMs for Connected TV ads?\r\nIf you\'re using “premium” audience segments without verifying who you\'re actually reaching, that money is likely feeding someone else\'s family.\r\nNo pressure. Here’s the site if you\'re open to see a revolutionary vision for digital advertising\r\ntopshelfaudience.com using real-time Intent data from an Integration in our platform to Lotame.com. You can reach me at marketing@mrmarketingres.com or 843-720-7301. And if this isn\'t a fit please feel free to email me and I\'ll be sure not to reach out again.  Thanks!', NULL, '2025-11-20 21:26:33'),
(140, 'Kris Pope', 'pope.kris@yahoo.com', 'S kg Jw', '403966505', 'How much website traffic could your ideal keywords generate in your target locations—without paid ads? Run a free volume report in our AI powered system—then start your 7-day free trial, zero commitment:  https://cutt.ly/XtwBzByr', NULL, '2025-11-21 06:25:05'),
(141, 'mr. phillip Morwood', 'phil9982@bestaitools.my', 'Request for Service', '5982902135', 'Do you offer multi-property discounts?', NULL, '2025-11-21 17:30:05'),
(142, 'Brian WRIGHT Eng.', 'newsletter@wexxon.com', 'Are you romantically compatible with your mate?', '7209248652', 'Discover if you can build a long-lasting relationship, or even a marriage, with your current or a potential mate? Please visit https://wexxon.com/en/home/9-romantic-compatibility.html for more details', NULL, '2025-11-22 19:24:05'),
(143, 'Larry Canning', 'info@larry.bangeshop.com', 'Larry Canning', '562763253', 'Hey there, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you\'re on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nKind Regards,\r\n\r\nLarry', NULL, '2025-11-23 18:26:03'),
(144, 'Wallace Beals', 'beals.wallace4@outlook.com', 'Tired of Low Clicks? Check Out This AI Trick', '756444807', 'Not getting enough leads for Fcma Gov Ae? Check out this video to see our AI traffic solution in action: https://www.youtube.com/shorts/4yLatrV9v4A', NULL, '2025-11-24 06:32:09'),
(145, 'Mikayla Merrifield', 'merrifield.mikayla@gmail.com', 'Grow Your Instagram 24/7 with AI – See the Difference', '28566833', 'Get additional leads for your fcma.gov.ae website by harnessing AI on Instagram. If you\'re looking to drive enhanced traffic, generate leads, and grow your brand\'s reach, you can get more information and start a no-cost trial here: https://cutt.ly/ytegGn4x\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Grows followers with targeted, premium audiences.\r\n-Enhances engagement through intelligent AI algorithms.\r\n-Focuses on users based on hashtags and accounts they follow.\r\n-Reduces work by automating time-consuming Instagram tasks.\r\n\r\nOur service focuses on real, organic growth—zero bots, zero fake followers. It’s perfect for brands like yours that want to transform Instagram into a lead generation engine. Even better, our service is provided on a month-by-month subscription basis so you can cancel at any point you like. No contracts and a 7 day no-cost trial.', NULL, '2025-11-24 11:40:28'),
(146, 'Starla McLaughlin', 'mclaughlin.starla@hotmail.com', 'Get More Leads Fast – Watch This Now!', '47', 'Is your Fcma Gov Ae website missing out on leads? See how our AI can fix that: https://www.youtube.com/watch?v=UEooLHpFYW0', NULL, '2025-11-25 20:57:47'),
(147, 'David C', 'ed.canterbury@outlook.com', 'Request', '716145217', 'Hi, I found your site on Google and noticed your logo doesn’t fully reflect your brand’s potential.\r\n\r\nFirst impressions matter, a quick update could make a huge difference.\r\n\r\nI\'d love to redesign it. No upfront payment only pay if you like the final result.\r\n\r\nIf you\'re interested, reach me here: https://tinyurl.com/logodesign-David\r\n\r\nDavid', NULL, '2025-11-25 21:01:47'),
(148, 'Sylvester Hein', 'hein.sylvester@gmail.com', 'Do you have time to review this?', '9439737301', 'Here is my site: http://sitesubmissionservice.top', NULL, '2025-11-26 03:28:03'),
(149, 'Van Lovegrove', 'van.lovegrove17@msn.com', 'question for you', '4200959', 'Yo! This message reached you, right? I’ll send your ad to tons of websites just like this. Visit contactformpromotion.com to get started.', NULL, '2025-11-26 03:28:51'),
(150, 'Matt Bacak', 'mattbacak2025@gmail.com', '⚡ This AI Link Could Stack $250/Day From Your Phone', '80', 'Hey,\r\n\r\n\r\nIn less than 24 hours, Fast Money Bot opens to the public — and it’s about to flip everything we thought we knew about phone income.\r\nThere’s no tech.\r\n No selling.\r\n No content creation.\r\nJust one AI-powered link — and a place to paste it.\r\n Once you do:\r\n ✅ 10+ income streams activate\r\n ✅ Your setup is done\r\n ✅ Daily payouts could start stacking automatically\r\n\r\n\r\nFor more click here : https://jvz6.com/c/688203/428277/', NULL, '2025-11-26 23:52:41'),
(151, 'Nate Warburton', 'warburton.nate@gmail.com', 'Hi fcma.gov.ae Administrator.', '8031907333', 'http://sitesubmissionservice.top', NULL, '2025-11-27 01:07:23'),
(152, 'David C', 'young.lain@msn.com', 'Request', '264532126', 'Hi, I found your site on Google and noticed your logo doesn’t fully reflect your brand’s potential.\r\n\r\nFirst impressions matter, a quick update could make a huge difference.\r\n\r\nI\'d love to redesign it. No upfront payment only pay if you like the final result.\r\n\r\nIf you\'re interested, reach me here: https://tinyurl.com/logodesign-David\r\n\r\nDavid', NULL, '2025-11-27 12:43:39'),
(153, 'Tricia Seals', 'tricia@seals.medicopostura.com', 'Tricia Seals', '4321668971', 'Hello there \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon\'t miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nBest Wishes, \r\n\r\nTricia', NULL, '2025-11-27 17:31:44'),
(154, 'Margareta Rosenthal', 'margareta.rosenthal@gmail.com', 'Skyrocket Your Website Traffic with AI', '6814490814', 'Ready to drive targeted visitors to your Fcma Gov Ae site? This quick video explains how our AI works: https://youtu.be/UEooLHpFYW0', NULL, '2025-11-28 15:33:27'),
(155, 'Gemma Marshall', 'gemmamarshall811@gmail.com', 'Instagram Growth Service', '27936800', 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n- The price is from just $60 per month, and we can start immediately.\r\n\r\nIf you\'d like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nGemma', NULL, '2025-11-28 20:03:50'),
(156, 'Karen B.', 'outreachseo56@yahoo.com', 'Quick F.ree Link Exchange For SEO Boost?', '783249237', 'Hi,\r\n\r\nHope all is well. \r\n\r\nLong story short... I can link to your site fcma.gov.ae from 5x legit local business websites (>DR30) — all FOC, no money involved. In return, you’d link to 5 different of my client sites from your end for a mutual SEO boost.\r\n\r\nInterested? I can send you the site list to choose.\r\n\r\nCheers,\r\nKaren', NULL, '2025-11-29 06:17:33'),
(157, 'Karen B.', 'outreachseo56@yahoo.com', 'Quick F.ree Link Exchange For SEO Boost?', '2067091051', 'Hi,\r\n\r\nHope all is well. \r\n\r\nLong story short... I can link to your site fcma.gov.ae from 5x legit local business websites (>DR30) — all FOC, no money involved. In return, you’d link to 5 different of my client sites from your end for a mutual SEO boost.\r\n\r\nInterested? I can send you the site list to choose.\r\n\r\nCheers,\r\nKaren', NULL, '2025-11-29 15:25:07'),
(158, 'Daryl Pirkle', 'daryl.pirkle@gmail.com', 'Transform fcma.gov.ae\'s online presence with our AI traffic service.', '40270393', 'How much website traffic could your ideal keywords generate in your target locations—without paid ads? Run a free traffic volume report for your keywords in our AI powered system—then start your 7-day free trial, zero commitment: https://cutt.ly/PtwBzMG3', NULL, '2025-11-30 06:53:42'),
(159, 'Ivan Ramirez', 'susanne.gainey@hotmail.com', 'Get $10k Monthly of Free Advertising Credits', '5303367701', 'Hi there, here is a video which shows you how to get $10K monthly in free advertising credits on Google Ads.\r\n\r\nView the YouTube video here: http://10k-youtubevideo.xyz \r\n\r\nIf you\'re interested or have any questions private email me at: ivan@doneforyou-campaigns.com\r\n\r\nMuch Success!\r\n\r\nIvan Ramirez\r\n\r\nhttp://10k-ad-accounts.xyz \r\n\r\n\r\n\r\nIf you would like to opt-out of communication with us, visit:https://bit.ly/websiteoptout', NULL, '2025-11-30 15:48:43'),
(160, 'Leeteami', 'zekisuquc419@gmail.com', 'Hello, i write about     price', '86921518131', 'Xin chào, tôi muốn biết giá của bạn.', NULL, '2025-12-01 09:35:45'),
(161, 'Connor Shively', 'shively.connor@gmail.com', 'Hd stemtzl', '6363790519', 'Your fcma.gov.ae website could be missing out on thousands of visitors. Use our AI powered system to drive targeted traffic to your website and increase leads and sales for free: https://cutt.ly/Bty5skqS', NULL, '2025-12-01 18:17:48'),
(162, 'Simonteami', 'dinanikolskaya99@gmail.com', 'Hi  i writing about   the price for reseller', '87884739231', 'Hi, I wanted to know your price.', NULL, '2025-12-01 22:39:10'),
(163, 'Simonteami', 'dinanikolskaya99@gmail.com', 'Hello, i am writing about your the prices', '83771444337', 'Hej, jeg ønskede at kende din pris.', NULL, '2025-12-02 01:32:48'),
(164, 'Darnell Larkin', 'darnell.larkin@googlemail.com', 'Maximize Your Instagram Impact – AI Growth Service Inside', '626293567', 'Get additional leads for your fcma.gov.ae website by using AI on Instagram. If you\'re looking to boost greater traffic, produce leads, and expand your brand\'s reach, you can get more information and start a no-cost trial here: https://cutt.ly/FtegGgh6\r\n\r\nThis is an AI-powered Instagram growth service that:\r\n-Boosts followers with targeted, high-quality audiences.\r\n-Boosts engagement through intelligent AI algorithms.\r\n-Focuses on users based on hashtags and accounts they follow.\r\n-Eliminates effort by automating tedious Instagram tasks.\r\n\r\nOur service emphasizes on genuine, organic growth—no bots, without fake followers. It’s excellent for brands like yours that want to transform Instagram into a lead generation engine. Even better, our service is provided on a month-by-month subscription basis so you can stop whenever you like. No contracts and a 7-day no-cost trial.', NULL, '2025-12-02 18:19:17'),
(165, 'Zora Barkly', 'zora@zora.bangeshop.com', 'Zora Barkly', '9022720434', 'Hello, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nBest Wishes,\r\n\r\nZora', NULL, '2025-12-03 01:59:07'),
(166, 'Rafaela Laver', 'rafaela.laver18@hotmail.com', 'Dear fcma.gov.ae Administrator.', '745427254', 'Feel free to visit my website for details: http://sitesubmissionservice.top', NULL, '2025-12-03 02:45:57'),
(167, 'Philip Banks', 'philip.banks@outlook.com', 'Unlock expansion opportunities for fcma.gov.ae with a trial of our AI traffic tool.', '211478596', 'Your fcma.gov.ae website could be missing out on thousands of visitors. Use our AI powered system to drive targeted traffic to your website and increase leads and sales for free: https://cutt.ly/bty5sxJp', NULL, '2025-12-03 23:08:37'),
(168, 'Louvenia Banuelos', 'louvenia@louvenia.bangeshop.com', 'Louvenia Banuelos', '6995034193', 'Hey there, \r\n\r\nI hope this email finds you well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nTo your success,\r\n\r\nLouvenia', NULL, '2025-12-04 01:22:05'),
(169, 'Dean Smiley', 'dean.smiley59@hotmail.com', 'Get More Leads Fast – Watch This Now!', '97', 'Unlock more targeted leads with our AI! Watch this short video to get started: https://www.youtube.com/shorts/4yLatrV9v4A', NULL, '2025-12-04 16:15:34'),
(170, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo, i write about your   prices', '89789163644', 'Hallo, ek wou jou prys ken.', NULL, '2025-12-04 19:54:33'),
(171, 'Robertteami', 'dinanikolskaya99@gmail.com', 'Aloha  i am wrote about your the prices', '84152663126', 'Sveiki, es gribēju zināt savu cenu.', NULL, '2025-12-04 21:28:19'),
(172, 'Phil Ricks', 'phil9982@bestaitools.my', 'Quick Question', '6001999873', 'Can I see examples of past work?', NULL, '2025-12-05 18:58:00'),
(173, 'Leeteami', 'zekisuquc419@gmail.com', 'Hello, i am write about     price for reseller', '87761774696', 'Здравейте, исках да знам цената ви.', NULL, '2025-12-06 00:38:33'),
(174, 'Leeteami', 'zekisuquc419@gmail.com', 'Aloha, i am writing about   the price', '84953347154', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', NULL, '2025-12-06 18:16:10'),
(175, 'Leeteami', 'dinanikolskaya99@gmail.com', 'Hallo  i am wrote about     price', '86734172752', 'Ola, quería saber o seu prezo.', NULL, '2025-12-06 20:44:04'),
(176, 'Danial Killough', 'danial.killough@hotmail.com', 'See immediate results for fcma.gov.ae\'s traffic with our AI traffic tool.', '4761350315', 'Our AI-powered solution sends precise visitors to your site, costing significantly less than expensive paid ads. Learn how to increase your reach today.\r\n\r\nhttps://cutt.ly/6tiP7RJq', NULL, '2025-12-07 22:28:28'),
(177, 'Maya Timm', 'timm.maya@outlook.com', 'Boost fcma.gov.ae\'s traffic with our AI traffic service.', '7788874231', 'Our AI-powered service brings precise, keyword-driven traffic from your chosen locations to your website, all at a fraction of the cost of paid ads. Connect with us today.\r\n\r\nhttps://cutt.ly/ctiPP8Y1', NULL, '2025-12-08 03:42:46'),
(178, 'Bettie Caldwell', 'bettie.caldwell@msn.com', 'Dear fcma.gov.ae Owner!', '3654885097', 'Get free traffic for your website here: https://bit.ly/3KqNFFr', NULL, '2025-12-08 15:01:38'),
(179, 'Leeteami', 'zekisuquc419@gmail.com', 'Hallo    write about your   prices', '82192174312', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', NULL, '2025-12-09 08:59:08'),
(180, 'Prince Despeissis', 'despeissis.prince51@msn.com', 'Struggling with website traffic? Try Our 7-Day Free Trial', '2161251938', 'Our AI-driven solution sends high-quality, keyword-targeted traffic to your site, offering a budget-friendly alternative to paid advertising. Learn how to begin.\r\n\r\nhttps://ow.ly/PTSP50XFOcc', NULL, '2025-12-10 04:37:14'),
(181, 'Ali Treloar', 'treloar.ali@yahoo.com', 'query', '7821630240', 'Ever stop to think how much you\'re spending on marked-up CPMs for Connected TV ads?\r\nIf you\'re using “premium” audience segments without verifying who you\'re actually reaching, that money is likely feeding someone else\'s family.\r\nNo pressure. Here’s the site if you\'re open to see a revolutionary vision for digital advertising\r\ntopshelfaudience.com using real-time Intent data from an Integration in our platform to Lotame.com. You can reach me at marketing@mrmarketingres.com or 843-720-7301. And if this isn\'t a fit please feel free to email me and I\'ll be sure not to reach out again.  Thanks!', NULL, '2025-12-10 16:06:03'),
(182, 'Georgeteami', 'dinanikolskaya99@gmail.com', 'Hi    wrote about your   prices', '81462621543', 'Sveiki, es gribēju zināt savu cenu.', NULL, '2025-12-10 23:19:45'),
(183, 'Obus C', 'emil.treadway@googlemail.com', 'Request', '460597291', 'Hi, I found your website on Google and noticed your logo could be updated to match the quality of your brand. I’m a Fiverr Pro vetted logo designer with 6.4k reviews.\r\n\r\nIf you\'d like, I can create a new concept for you. No obligation you only pay if you feel it truly improves your brand.\r\n\r\nHere’s my work: https://tinyurl.com/portfolio-obus\r\n\r\nObus', NULL, '2025-12-11 11:27:29'),
(184, 'Myra Haveman', 'haveman.myra30@outlook.com', 'looking for answers', '3499343003', 'Hi there! This message reached you, right? Let me blast your ad to millions of websites too. Visit contactformpromotion.com to get started.', NULL, '2025-12-11 15:49:00'),
(185, 'Lashay Fitzsimmons', 'fitzsimmons.lashay@gmail.com', 'Opportunity worth considering', '5178809717', 'Here is my site: http://postyouradfree.top', NULL, '2025-12-11 15:49:05'),
(186, 'محمد عطية محمود', 'mohammadattia68@gmail.com', 'بخصوص مكافاة نشر مقال بالعدد 46 من مجلة الفحيرة', '00201011977699', 'تشرفت بنشر مقالي \"العقاد بين السيرة الذاتية والرواية \"\r\nفي العدد 47 من مجلتكم العامرة، ولم أحصل على مكافأة النشر حتى الآن \r\nعلما بأن الزملاء الكتاب تكرمتم بإرسال مكافآت مساهماتهم في العدد نفسه إليهم\r\nأرجو التكرم بالتوجيه نحو تحويل قيمة المكافأة الخاصة بي \r\nمرفق الحساب البنكي وجواز السفر الخاص بي\r\nمع تقديري لكم \r\nمحمد عطية محمود\r\nكاتب وناقد مصري \r\nعضو اتحاد كتاب مصر', NULL, '2025-12-11 16:31:18'),
(187, 'محمد عطية محمود', 'mohammadattia68@gmail.com', 'بخصوص مكافاة نشر مقال بالعدد 46 من مجلة الفحيرة', '00201011977699', 'تشرفت بنشر مقالي \"العقاد بين السيرة الذاتية والرواية \"\r\nفي العدد 46 الصادر في ابريل 2025 من مجلتكم العامرة، ولم أحصل على مكافأة النشر حتى الآن \r\nعلما بأن الزملاء الكتاب تكرمتم بإرسال مكافآت مساهماتهم في العدد نفسه إليهم\r\nأرجو التكرم بالتوجيه نحو تحويل قيمة المكافأة الخاصة بي \r\nمرفق الحساب البنكي وجواز السفر الخاص بي\r\nمع تقديري لكم \r\nمحمد عطية محمود\r\nكاتب وناقد مصري \r\nعضو اتحاد كتاب مصر', NULL, '2025-12-11 16:38:03'),
(188, 'Val Willison', 'willison.val43@hotmail.com', 'Transform fcma.gov.ae\'s online presence with our AI traffic service.', '318052240', 'Drive targeted traffic to your website with our AI-powered solution, costing far less than expensive paid advertising. Connect with us to boost your results.\r\n\r\nhttps://ow.ly/gObv50XGmSM', NULL, '2025-12-12 19:46:38'),
(189, 'Ladonna McCary', 'ladonna.mccary@gmail.com', 'Boost fcma.gov.ae\'s traffic with our AI traffic service.', '2532729992', 'Drive high-quality traffic to your website with our AI-powered solution, far more affordable than expensive paid ad campaigns. Ready to scale your site?\r\n\r\nhttps://ow.ly/wgLc50XHtwH', NULL, '2025-12-13 15:52:51'),
(190, 'Mellisa Farrell', 'sales@farrell.caredogbest.com', 'Mellisa Farrell', '6601583655', 'Hey \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nBest Wishes, \r\n\r\nMellisa', NULL, '2025-12-13 23:19:17'),
(191, 'Brian WRIGHT Eng.', 'newsletter@wexxon.com', 'What kind of events are in store for you in the new year?', '7209248652', 'Find out with your FUTURE FORECAST Ð TRANSTS report that describes your upcoming events for the new year. All events are fully interpreted, with insightful clues on how to navigate the challenges ahead, and the date range for each event is provided. You order your FUTURE FORECAST Ð TRANSTS for 2026 report at https://wexxon.com/en/home/10-future-forecast.html. Have a great day. Best regards Brian WRIGHT, Eng.', NULL, '2025-12-14 03:59:30'),
(192, 'Hollis Spady', 'spady.hollis@gmail.com', 'Low Leads? Watch This Quick AI Fix', '41522208', 'Unlock more targeted leads with our AI! Watch this short video to get started: https://www.youtube.com/shorts/r4BbPCUYx9M', NULL, '2025-12-14 09:29:07'),
(193, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(194, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(195, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(196, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(197, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(198, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(199, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(200, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '', NULL, NULL, '0000-00-00 00:00:00'),
(201, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(202, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(203, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(204, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(205, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(206, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(207, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(208, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(209, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', '0', '0000-00-00 00:00:00'),
(210, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(211, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(212, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '0000-00-00 00:00:00'),
(213, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:07:44'),
(214, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:07:45'),
(215, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:08:00'),
(216, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:08:03'),
(217, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:08:19'),
(218, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:08:22'),
(219, NULL, NULL, NULL, '', NULL, NULL, '2025-12-23 02:09:13'),
(220, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 10:49:48'),
(221, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 10:50:00'),
(222, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 11:22:48'),
(223, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 11:29:42'),
(224, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 11:36:35'),
(225, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 11:40:51'),
(226, 'basma', 'basma.gamaleldin100@gmail.com', 'test', '01064612545', 'bnbnb fddfd yyuyuyuyuyuyuyu', NULL, '2025-12-23 14:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_old`
--

CREATE TABLE `contact_us_old` (
  `id` int NOT NULL,
  `topic` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session_id` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ip_address` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_data` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_address1` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_address2` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_city` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_state` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_zip` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_country` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `add_date` date NOT NULL,
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `weapon` varchar(90) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(90) DEFAULT NULL,
  `code` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `code_date` date DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `phone2` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `mem_type` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us_old`
--

INSERT INTO `contact_us_old` (`id`, `topic`, `session_id`, `ip_address`, `user_data`, `user_name`, `user_email`, `user_phone`, `user_address1`, `user_address2`, `user_city`, `user_state`, `user_zip`, `user_country`, `add_date`, `notes`, `name`, `gender`, `weapon`, `dob`, `age`, `code`, `code_date`, `phone`, `phone2`, `pic`, `pic2`, `mem_type`) VALUES
(61, '', '', '', '', 'new', 'test10@test.com', '243234', 'new', '', '', '', '', '', '2023-07-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private'),
(62, '', '', '', '', 'test2', 'test2@test.com', '3245345343', 'test2', '', '', '', '', '', '2023-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private'),
(63, '', '', '', '', 'zzzzzzzz', 'test@test.com', '43423', 'zzz', '', '', '', '', '', '2023-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private'),
(64, '', '', '', '', 'aaaaaaa', 'test@test.com', '35345', 'aaaaaaa', '', '', '', '', '', '2023-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private'),
(65, '', '', '', '', 'test3', 'test3@test.com', '25442', 'test3', '', '', '', '', '', '2023-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private');

-- --------------------------------------------------------

--
-- Table structure for table `customized_permissions`
--

CREATE TABLE `customized_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `module_id` int UNSIGNED DEFAULT NULL,
  `add` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `print` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `list` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customized_permissions`
--

INSERT INTO `customized_permissions` (`id`, `module_id`, `add`, `edit`, `delete`, `print`, `active`, `show`, `list`, `created_at`, `updated_at`) VALUES
(25, 1, 0, 0, 1, 0, 0, 0, 0, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(26, 3, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(27, 28, 1, 1, 0, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(28, 33, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(29, 71, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(30, 77, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(31, 85, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(32, 86, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(33, 87, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(34, 88, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(35, 89, 1, 1, 1, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36'),
(36, 90, 1, 1, 0, 1, 1, 1, 1, '2026-04-19 20:08:37', '2026-04-19 20:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `customized_role_permissions`
--

CREATE TABLE `customized_role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `jopid` int NOT NULL,
  `module` varchar(255) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `add_date` varchar(11) DEFAULT NULL,
  `active` enum('yes','no','wait') DEFAULT 'wait',
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text,
  `univer` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL,
  `exper` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `descr` text,
  `cources` varchar(255) DEFAULT NULL,
  `seeker_id` int NOT NULL,
  `field` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `job_id` int NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pdf` varchar(255) NOT NULL,
  `note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `email2` varchar(255) NOT NULL,
  `add_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`id`, `name`, `job_id`, `position`, `email`, `phone`, `mobile`, `address`, `country`, `city`, `job_title`, `pdf`, `note`, `email2`, `add_date`) VALUES
(1, 'shimaa', 280, NULL, 'editor@gmail.com', '01117593045', '', 'test location', NULL, NULL, NULL, 'Cv67ffa8a4c433f.لائحة العمل-سمارت فيجن 2025.pdf', NULL, '', '2025-04-29'),
(10, 'user', 280, NULL, 'editor@gmail.com', '01117593045', '', 'test location', NULL, NULL, 'job-name', 'Cv67ffb061e616d.لائحة العمل-سمارت فيجن 2025.pdf', NULL, '', '2025-05-04'),
(16, 'مصطفى', 285, NULL, 'test22@test.com', '234324', '', 'يبليسلب ل', NULL, NULL, 'اسم الوظيفة', 'Cv681a031fecdb5.banner-img-3.png', NULL, '', '2025-05-04'),
(25, 'user', 283, NULL, 'user@gmail.com', '092345794', '', 'test location', NULL, NULL, 'اسم الوظيفة', 'Cv681b2c6366e32.ttt.txt', NULL, '', NULL),
(27, 'erer', 285, NULL, 'user@gmail.com', '454', '', 'test location', NULL, NULL, 'Job Name', 'Cv681b5227a6f94.23_POA_20241111_ChinaTour_6273_TRosenberg.webp', NULL, '', NULL),
(28, 'user@gmail.com', 284, NULL, 'user@gmail.com', '+97143445126', '', 'test location', NULL, NULL, 'Job Name', 'Cv681c94f43cff1.ttt.txt', NULL, '', NULL),
(29, 'editor', 284, NULL, 'editor@gmail.com', '01142994064', '', 'test location', NULL, NULL, 'Job Name', 'Cv681c9aeda932f.لائحة العمل-سمارت فيجن 2025.pdf', NULL, '', NULL),
(30, 'Bassem Aljaber', 285, NULL, 'bassemaljaber18@gmail.com', '00971559474426', '', 'Sports city, Dubai', NULL, NULL, 'Cello and Double Bass Instructor', 'Cv6870b70441712.Bassem-Aljaber-CV.pdf', NULL, '', NULL),
(31, 'Jennifer Ku', 284, NULL, 'kujennifer@hotmail.com', '+886978554779', '', 'Taiwan', NULL, NULL, 'Piano Instructor', 'Cv687dc37f88c81.Jennifer Ku C.V..docx', NULL, '', NULL),
(32, 'وسيم الشاهد', 286, NULL, 'wassim.chahed@gmail.com', '0021698287895', '', 'تونس', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv68949381069c4.inbound3649166621698697479.pdf', NULL, '', NULL),
(33, 'عاطف سليم', 286, NULL, 'atefslim1234@gmail.com', '28834122', '', 'Sousse-Tunisie', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv68949f5ec941b.IMG_2299.jpg', NULL, '', NULL),
(34, 'Anastasiia', 284, NULL, 'nasty.ponomareva@mail.ru', '+79223031343', '', 'Russia', NULL, NULL, 'Piano Instructor', 'Cv6894b1abb63ac.Anastasiia Ponomareva, CV (1).pdf', NULL, '', NULL),
(35, 'محمد أمين القاسمي', 286, NULL, 'mohamedamine.gasmi@laposte.net', '0021698462452', '', 'حي الوكالة العقارية كرنيش هرقلة 4012 سوسة تونس', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv6894d14d775f9.inbound6891009956234959771.pdf', NULL, '', NULL),
(36, 'خلود مراسي', 286, NULL, 'mrassikhouloud6@gmail.com', '26306135', '', 'AFH city, lot number 28 Hergla, 4012 Sousse (Tunisia)', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv6894d84f67250.Khouloud Mrassi_1100795237-1 (1).pdf', NULL, '', NULL),
(37, 'Yulia Grosheva', 284, NULL, 'grosheva@nnovcons.ru', '+7 (920) 024 53 23', '', 'Zhukovskiy, Moscow region, Russia', NULL, NULL, 'Piano Instructor', 'Cv6899a4e37f47e.CV and Motivation letter Yulia Grosheva piano.docx', NULL, '', NULL),
(38, 'Mateus Belloni', 286, NULL, 'mateusbelloniconductor@gmail.com', '+393500419888', '', 'Italy', NULL, NULL, 'Violin Instructor', 'Cv689a640951c00.IMG_2165.jpg', NULL, '', NULL),
(39, 'farhad.poupel@gmail.com', 284, NULL, 'farhad.poupel@gmail.com', '+447984534592', '', 'United Kingdom', NULL, NULL, 'Piano Instructor', 'Cv689afda616813.Farhad_Poupel_CV_Music_Tutor.pdf', NULL, '', NULL),
(40, 'Chingiz Osmanov', 286, NULL, 'osmnvchngz@gmail.com', '+905518881271', '', 'Deniz neighbourhood 49238 street  Elza site building no2 apt.16  Tece Mezitli Mersin Türkiye', NULL, NULL, 'Violin Instructor', 'Cv689deac47842f.Osmanov_CV_Violin .pdf', NULL, '', NULL),
(41, 'Febo Gianluca', 286, NULL, 'febogianluca@innovarte.ch', '+41792877502', '', 'Lugano - Switzerland', NULL, NULL, 'Violin Instructor', 'Cv68a05b9055157.Gianluca Febo - E - biography.pdf', NULL, '', NULL),
(42, 'atlee.d716@gmail.com', 286, NULL, 'atlee.d716@gmail.com', '0427416476', '', 'Unit 29 361-363 KENT ST', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv68a3ec801906d.ATLEE DANIEL RESUME JULY 2025.pdf', NULL, '', NULL),
(43, 'Diego Cembrola', 284, NULL, 'diego.cembrola@gmail.com', '+393299637309', '', 'Venice, Italy', NULL, NULL, 'Piano Instructor', 'Cv68a6425ab562e.Cover Letter and CV.pdf', NULL, '', NULL),
(44, 'Flavia Salemme', 284, NULL, 'flaviasalemme@gmail.com', '+393809028432', '', 'Italy', NULL, NULL, 'Piano Instructor', 'Cv68a992a5e87db.Bio Flavia Salemme.pdf', NULL, '', NULL),
(45, 'Tomás Alegre', 284, NULL, 'tommyalegrepiano@gmail.com', '34685555265+', '', 'Madrid, Spain', NULL, NULL, 'مدرس عازف آلة البيانو', 'Cv68ac66be7b88a.Dossier Tomás ALEGRE.pdf', NULL, '', NULL),
(46, 'Andrea Chenna', 283, NULL, 'andrea.chenna@consno.it', '3200243120', '', 'Torino (Italy)', NULL, NULL, 'Oboe Instructor', 'Cv68adbbc1a4791.Andrea Chenna CV.pdf', NULL, '', NULL),
(47, 'Peshraw  J S Baban', 286, NULL, 'peshrawbaban@gmail.com', '00447401263926', '', 'London', NULL, NULL, 'Violin Instructor', 'Cv68b041092f328.CV Peshraw J S Baban 06 March 2025.pdf', NULL, '', NULL),
(48, 'بیشرو  جمال صالح بابان', 286, NULL, 'peshrawbaban@gmail.com', '00447401263926', '', 'Pipistrelle House 303, Hale Wharf, London N179BNN', NULL, NULL, 'مدرس عازف آلة الكمان', 'Cv68b0460fb3f7d.CV Peshraw J S Baban 06 March 2025.pdf', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='id';

-- --------------------------------------------------------

--
-- Table structure for table `feedback_suggestions`
--

CREATE TABLE `feedback_suggestions` (
  `id` int NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mail` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `add_date` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(6) NOT NULL,
  `level` int NOT NULL COMMENT '1 = private or 2 = company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `username`, `password`, `level`) VALUES
(5, 'yasmin@gmail.com', '123', 1),
(6, 'sarah@gmail.com', '123', 2),
(37, '', '123', 0),
(38, '', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `post_type` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name_ar` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pic` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `embed` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `post_id`, `post_type`, `name`, `name_ar`, `pic`, `embed`) VALUES
(4, 50, 'projects', '0', '0', '1733758998.jpg', '0'),
(5, 58, 'projects', '0', '0', '1733763295.jpg', '0'),
(6, 58, 'projects', '0', '0', '1733763364.jpg', '0'),
(8, 64, 'projects', '0', '0', '1734504771.jpg', '0'),
(10, 64, 'projects', '0', '0', '1734505156.jpg', '0'),
(11, 64, 'projects', '0', '0', '1734505171.jpg', '0'),
(12, 64, 'projects', '0', '0', '1734505193.jpg', '0'),
(13, 64, 'projects', '0', '0', '1734505211.jpg', '0'),
(14, 64, 'projects', '0', '0', '1734505243.jpg', '0'),
(15, 64, 'projects', '0', '0', '1734505264.jpg', '0'),
(16, 64, 'projects', '0', '0', '1734505282.jpg', '0'),
(17, 64, 'projects', '0', '0', '1734505309.jpg', '0'),
(18, 64, 'projects', '0', '0', '1734505345.jpg', '0'),
(19, 64, 'projects', '0', '0', '1734505365.jpg', '0'),
(20, 64, 'projects', '0', '0', '1734505410.jpg', '0'),
(22, 64, 'projects', '0', '0', '1734505634.jpg', '0'),
(23, 64, 'projects', '0', '0', '1734505665.jpg', '0'),
(24, 64, 'projects', '0', '0', '1734505692.jpg', '0'),
(25, 64, 'projects', '0', '0', '1734505716.jpg', '0'),
(26, 64, 'projects', '0', '0', '1734505732.jpg', '0'),
(27, 64, 'projects', '0', '0', '1734505747.jpg', '0'),
(28, 64, 'projects', '0', '0', '1734505763.jpg', '0'),
(29, 64, 'projects', '0', '0', '1734505784.jpg', '0'),
(30, 64, 'projects', '0', '0', '1734505805.jpg', '0'),
(31, 64, 'projects', '0', '0', '1734505830.jpg', '0'),
(32, 64, 'projects', '0', '0', '1734505845.jpg', '0'),
(33, 64, 'projects', '0', '0', '1734505879.jpg', '0'),
(34, 64, 'projects', '0', '0', '1734505901.jpg', '0'),
(35, 64, 'projects', '0', '0', '1734505930.jpg', '0'),
(36, 64, 'projects', '0', '0', '1734505954.jpg', '0'),
(37, 64, 'projects', '0', '0', '1734505988.jpg', '0'),
(38, 64, 'projects', '0', '0', '1734506006.jpg', '0'),
(39, 64, 'projects', '0', '0', '1734506031.jpg', '0'),
(40, 64, 'projects', '0', '0', '1734506055.jpg', '0'),
(42, 51, 'projects', '0', '0', '1734507146.jpg', '0'),
(43, 51, 'projects', '0', '0', '1734507164.jpg', '0'),
(44, 51, 'projects', '0', '0', '1734507218.jpg', '0'),
(45, 51, 'projects', '0', '0', '1734507236.jpg', '0'),
(46, 51, 'projects', '0', '0', '1734507257.jpg', '0'),
(47, 51, 'projects', '0', '0', '1734507274.jpg', '0'),
(48, 51, 'projects', '0', '0', '1734507289.jpg', '0'),
(49, 51, 'projects', '0', '0', '1734507328.jpg', '0'),
(50, 51, 'projects', '0', '0', '1734507346.jpg', '0'),
(51, 51, 'projects', '0', '0', '1734507362.jpg', '0'),
(52, 51, 'projects', '0', '0', '1734507404.jpg', '0'),
(53, 51, 'projects', '0', '0', '1734507428.jpg', '0'),
(54, 51, 'projects', '0', '0', '1734507445.jpg', '0'),
(55, 49, 'projects', '0', '0', '1734508333.jpg', '0'),
(56, 49, 'projects', '0', '0', '1734508608.jpg', '0'),
(57, 49, 'projects', '0', '0', '1734508629.jpg', '0'),
(58, 49, 'projects', '0', '0', '1734508843.jpg', '0'),
(59, 49, 'projects', '0', '0', '1734508932.jpg', '0'),
(60, 49, 'projects', '0', '0', '1734508967.jpg', '0'),
(61, 49, 'projects', '0', '0', '1734509009.jpg', '0'),
(62, 49, 'projects', '0', '0', '1734509030.jpg', '0'),
(63, 49, 'projects', '0', '0', '1734509057.jpg', '0'),
(64, 49, 'projects', '0', '0', '1734509087.jpg', '0'),
(65, 49, 'projects', '0', '0', '1734509111.jpg', '0'),
(66, 49, 'projects', '0', '0', '1734509170.jpg', '0'),
(67, 49, 'projects', '0', '0', '1734509191.jpg', '0'),
(68, 49, 'projects', '0', '0', '1734509213.jpg', '0'),
(69, 49, 'projects', '0', '0', '1734509240.jpg', '0'),
(70, 49, 'projects', '0', '0', '1734509258.jpg', '0'),
(71, 20, 'projects', '0', '0', '1734510073.jpg', '0'),
(72, 20, 'projects', '0', '0', '1734511089.jpg', '0'),
(73, 20, 'projects', '0', '0', '1734511105.jpg', '0'),
(74, 20, 'projects', '0', '0', '1734511137.jpg', '0'),
(75, 20, 'projects', '0', '0', '1734511152.jpg', '0'),
(76, 20, 'projects', '0', '0', '1734511184.jpg', '0'),
(77, 20, 'projects', '0', '0', '1734511198.jpg', '0'),
(78, 20, 'projects', '0', '0', '1734511225.jpg', '0'),
(79, 20, 'projects', '0', '0', '1734511257.jpg', '0'),
(80, 20, 'projects', '0', '0', '1734511289.jpg', '0'),
(81, 20, 'projects', '0', '0', '1734511326.jpg', '0'),
(82, 20, 'projects', '0', '0', '1734511360.jpg', '0'),
(83, 20, 'projects', '0', '0', '1734511378.jpg', '0'),
(84, 20, 'projects', '0', '0', '1734511416.jpg', '0'),
(85, 20, 'projects', '0', '0', '1734511439.jpg', '0'),
(86, 20, 'projects', '0', '0', '1734511471.jpg', '0'),
(87, 20, 'projects', '0', '0', '1734511492.jpg', '0'),
(88, 20, 'projects', '0', '0', '1734511517.jpg', '0'),
(89, 20, 'projects', '0', '0', '1734511539.jpg', '0'),
(90, 19, 'projects', '0', '0', '1734512056.jpg', '0'),
(91, 19, 'projects', '0', '0', '1734512080.jpg', '0'),
(92, 19, 'projects', '0', '0', '1734512103.jpg', '0'),
(93, 19, 'projects', '0', '0', '1734512126.jpg', '0'),
(94, 19, 'projects', '0', '0', '1734512150.jpg', '0'),
(95, 19, 'projects', '0', '0', '1734512174.jpg', '0'),
(96, 19, 'projects', '0', '0', '1734512212.jpg', '0'),
(97, 19, 'projects', '0', '0', '1734512254.jpg', '0'),
(98, 19, 'projects', '0', '0', '1734512275.jpg', '0'),
(99, 19, 'projects', '0', '0', '1734512301.jpg', '0'),
(100, 19, 'projects', '0', '0', '1734512328.jpg', '0'),
(101, 19, 'projects', '0', '0', '1734512348.jpg', '0'),
(102, 19, 'projects', '0', '0', '1734512368.jpg', '0'),
(103, 19, 'projects', '0', '0', '1734512403.jpg', '0'),
(104, 19, 'projects', '0', '0', '1734512424.jpg', '0'),
(105, 19, 'projects', '0', '0', '1734512446.jpg', '0'),
(106, 19, 'projects', '0', '0', '1734512507.jpg', '0'),
(107, 19, 'projects', '0', '0', '1734512583.jpg', '0'),
(108, 19, 'projects', '0', '0', '1734512633.jpg', '0'),
(109, 19, 'projects', '0', '0', '1734512653.jpg', '0'),
(110, 19, 'projects', '0', '0', '1734512678.jpg', '0'),
(111, 19, 'projects', '0', '0', '1734512698.jpg', '0'),
(112, 19, 'projects', '0', '0', '1734512727.jpg', '0'),
(113, 19, 'projects', '0', '0', '1734512749.jpg', '0'),
(114, 19, 'projects', '0', '0', '1734512774.jpg', '0'),
(115, 19, 'projects', '0', '0', '1734512794.jpg', '0'),
(116, 19, 'projects', '0', '0', '1734512821.jpg', '0'),
(117, 19, 'projects', '0', '0', '1734512841.jpg', '0'),
(118, 19, 'projects', '0', '0', '1734512870.jpg', '0'),
(119, 19, 'projects', '0', '0', '1734513037.jpg', '0'),
(120, 19, 'projects', '0', '0', '1734513062.jpg', '0'),
(121, 19, 'projects', '0', '0', '1734513083.jpg', '0'),
(122, 19, 'projects', '0', '0', '1734513342.jpg', '0'),
(123, 19, 'projects', '0', '0', '1734513368.jpg', '0'),
(124, 19, 'projects', '0', '0', '1734513389.jpg', '0'),
(125, 19, 'projects', '0', '0', '1734513410.jpg', '0'),
(126, 19, 'projects', '0', '0', '1734513431.jpg', '0'),
(127, 19, 'projects', '0', '0', '1734513452.jpg', '0'),
(128, 19, 'projects', '0', '0', '1734513591.jpg', '0'),
(129, 19, 'projects', '0', '0', '1734513621.jpg', '0'),
(130, 19, 'projects', '0', '0', '1734513640.jpg', '0'),
(131, 19, 'projects', '0', '0', '1734513661.jpg', '0'),
(132, 19, 'projects', '0', '0', '1734513690.jpg', '0'),
(133, 19, 'projects', '0', '0', '1734513741.jpg', '0'),
(134, 19, 'projects', '0', '0', '1734513770.jpg', '0'),
(135, 19, 'projects', '0', '0', '1734513791.jpg', '0'),
(136, 19, 'projects', '0', '0', '1734513829.jpg', '0'),
(137, 18, 'projects', '0', '0', '1734514034.jpg', '0'),
(138, 18, 'projects', '0', '0', '1734514052.jpg', '0'),
(139, 18, 'projects', '0', '0', '1734514067.jpg', '0'),
(140, 18, 'projects', '0', '0', '1734514170.jpg', '0'),
(141, 18, 'projects', '0', '0', '1734514199.jpg', '0'),
(142, 18, 'projects', '0', '0', '1734514218.jpg', '0'),
(143, 72, 'projects', '0', '0', '1734515798.jpg', '0'),
(144, 72, 'projects', '0', '0', '1734515816.jpg', '0'),
(145, 72, 'projects', '0', '0', '1734515836.jpg', '0'),
(146, 72, 'projects', '0', '0', '1734516026.jpg', '0'),
(147, 72, 'projects', '0', '0', '1734516054.jpg', '0'),
(148, 73, 'projects', '0', '0', '1734516278.jpg', '0'),
(149, 73, 'projects', '0', '0', '1734516300.jpg', '0'),
(150, 73, 'projects', '0', '0', '1734516437.jpg', '0'),
(151, 73, 'projects', '0', '0', '1734516460.jpg', '0'),
(152, 73, 'projects', '0', '0', '1734516486.jpg', '0'),
(153, 73, 'projects', '0', '0', '1734516514.jpg', '0'),
(154, 74, 'projects', '0', '0', '1734516827.jpg', '0'),
(155, 74, 'projects', '0', '0', '1734516863.jpg', '0'),
(158, 74, 'projects', '0', '0', '1734516920.jpg', '0'),
(159, 74, 'projects', '0', '0', '1734516959.jpg', '0'),
(160, 74, 'projects', '0', '0', '1734516974.jpg', '0'),
(161, 74, 'projects', '0', '0', '1734516990.jpg', '0'),
(162, 74, 'projects', '0', '0', '1734517034.jpg', '0'),
(163, 74, 'projects', '0', '0', '1734517055.jpg', '0'),
(164, 74, 'projects', '0', '0', '1734517101.jpg', '0'),
(165, 74, 'projects', '0', '0', '1734517120.jpg', '0'),
(166, 74, 'projects', '0', '0', '1734517155.jpg', '0'),
(168, 250, 'products', '0', '0', '1740382861.jpeg', '0'),
(169, 263, 'Album', '0', '0', '1742806664.png', '0'),
(170, 263, 'Album', '0', '0', '1742806672.png', '0'),
(171, 263, 'Album', '0', '0', '1742806684.png', '0'),
(172, 288, 'Workshops', '0', '0', '1744014718.png', '0'),
(173, 312, 'Album', '0', '0', '1746535044.jpg', '0'),
(174, 312, 'Album', '0', '0', '1746535059.png', '0'),
(175, 270, 'Album', '0', '0', '1746604448.png', '0'),
(177, 333, 'Album', '0', '0', '1750151702.jpeg', '0'),
(178, 333, 'Album', '0', '0', '1750152070.jpeg', '0'),
(179, 333, 'Album', '0', '0', '1750152101.jpeg', '0'),
(180, 333, 'Album', '0', '0', '1750152170.jpeg', '0'),
(181, 333, 'Album', '0', '0', '1750152205.jpeg', '0'),
(183, 338, 'Album', '0', '0', '1750240814.png', '0'),
(186, 338, 'Album', '0', '0', '1750240926.png', '0'),
(187, 338, 'Album', '0', '0', '1750240948.png', '0'),
(188, 338, 'Album', '0', '0', '1750241047.png', '0'),
(191, 338, 'Album', '0', '0', '1750241230.png', '0'),
(192, 342, 'Album', '0', '0', '1750313259.png', '0'),
(194, 342, 'Album', '0', '0', '1750313316.jpg', '0'),
(195, 342, 'Album', '0', '0', '1750313348.jpg', '0'),
(196, 342, 'Album', '0', '0', '1750313511.jpg', '0'),
(197, 342, 'Album', '0', '0', '1750313533.jpg', '0'),
(198, 333, 'Album', '0', '0', '1750753560.jpeg', '0'),
(199, 333, 'Album', '0', '0', '1750753651.jpeg', '0'),
(201, 333, 'Album', '0', '0', '1750753745.jpeg', '0'),
(202, 333, 'Album', '0', '0', '1750753801.jpeg', '0'),
(203, 333, 'Album', '0', '0', '1750753841.jpeg', '0'),
(204, 332, 'Album', '0', '0', '1751524024.jpeg', '0'),
(205, 332, 'Album', '0', '0', '1751524176.jpeg', '0'),
(206, 332, 'Album', '0', '0', '1751524267.jpeg', '0'),
(207, 358, 'Album', '0', '0', '1753431023.jpeg', '0'),
(208, 358, 'Album', '0', '0', '1753431169.jpeg', '0'),
(209, 358, 'Album', '0', '0', '1753431197.jpeg', '0'),
(210, 358, 'Album', '0', '0', '1753431221.jpeg', '0'),
(211, 358, 'Album', '0', '0', '1753431507.jpeg', '0'),
(212, 358, 'Album', '0', '0', '1753684394.jpeg', '0'),
(213, 358, 'Album', '0', '0', '1753684411.jpeg', '0'),
(214, 358, 'Album', '0', '0', '1753684470.jpeg', '0'),
(216, 358, 'Album', '0', '0', '1753942560.jpeg', '0'),
(217, 358, 'Album', '0', '0', '1753942579.jpeg', '0'),
(218, 358, 'Album', '0', '0', '1753942594.jpeg', '0'),
(219, 358, 'Album', '0', '0', '1753942610.jpeg', '0'),
(220, 358, 'Album', '0', '0', '1753942632.jpeg', '0'),
(221, 358, 'Album', '0', '0', '1753942650.jpeg', '0'),
(222, 358, 'Album', '0', '0', '1753942677.jpeg', '0'),
(223, 358, 'Album', '0', '0', '1753942742.jpeg', '0'),
(224, 358, 'Album', '0', '0', '1753942757.jpeg', '0'),
(225, 358, 'Album', '0', '0', '1753942770.jpeg', '0'),
(226, 358, 'Album', '0', '0', '1753942796.jpeg', '0'),
(227, 358, 'Album', '0', '0', '1753942827.jpeg', '0'),
(228, 358, 'Album', '0', '0', '1753942860.jpeg', '0'),
(229, 358, 'Album', '0', '0', '1753942875.jpeg', '0'),
(230, 366, 'Album', '0', '0', '1754646760.jpeg', '0'),
(232, 366, 'Album', '0', '0', '1754647603.png', '0'),
(233, 366, 'Album', '0', '0', '1754647657.png', '0'),
(234, 366, 'Album', '0', '0', '1754647703.png', '0'),
(235, 366, 'Album', '0', '0', '1754647790.jpeg', '0'),
(236, 366, 'Album', '0', '0', '1754647846.jpeg', '0'),
(237, 366, 'Album', '0', '0', '1754647886.jpeg', '0'),
(238, 366, 'Album', '0', '0', '1754647920.jpeg', '0'),
(239, 366, 'Album', '0', '0', '1754648027.jpeg', '0'),
(240, 366, 'Album', '0', '0', '1754649202.png', '0'),
(241, 366, 'Album', '0', '0', '1754649276.jpeg', '0'),
(243, 366, 'Album', '0', '0', '1754649312.jpeg', '0'),
(244, 366, 'Album', '0', '0', '1754649351.jpeg', '0'),
(246, 366, 'Album', '0', '0', '1754649451.png', '0'),
(247, 332, 'Album', '0', '0', '1754649967.jpeg', '0'),
(248, 332, 'Album', '0', '0', '1754650000.jpeg', '0'),
(249, 332, 'Album', '0', '0', '1754650073.jpeg', '0'),
(251, 381, 'Album', '0', '0', '1755777832.png', '0'),
(252, 24, 'our_events', '0', '0', '1757229180.png', '0'),
(253, 23, 'our_events', '0', '0', '1758116579.jpg', '0'),
(255, 102, 'our_events', '0', '0', '1758541901.jpg', '0'),
(256, 102, 'our_events', '0', '0', '1758542046.jpg', '0'),
(258, 103, 'our_events', '0', '0', '1758542282.jpg', '0'),
(259, 103, 'our_events', '0', '0', '1758542307.jpg', '0'),
(260, 121, 'our_events', '0', '0', '1758794211.jpg', '0'),
(261, 7, 'properties', '0', '0', '1765801276.jfif', '0'),
(262, 7, 'properties', '0', '0', '1765801288.jfif', '0'),
(321, 11, 'News', '0', '0', '/uploads/gallery/17759836490.jpg', '0'),
(322, 11, 'News', '0', '0', '/uploads/gallery/17759836491.png', '0'),
(323, 11, 'News', '0', '0', '/uploads/gallery/17759836550.png', '0'),
(324, 11, 'News', '0', '0', '/uploads/gallery/17759836660.png', '0'),
(325, 11, 'News', '0', '0', '/uploads/gallery/17759839270.png', '0'),
(326, 71, 'Offers', '0', '0', '/uploads/gallery/17759843960.jpg', '0'),
(327, 71, 'Offers', '0', '0', '/uploads/gallery/17759843961.png', '0'),
(328, 71, 'Offers', '0', '0', '/uploads/gallery/17759844160.jpg', '0'),
(329, 71, 'Offers', '0', '0', '/uploads/gallery/17759844540.png', '0'),
(330, 27, 'News', '0', '0', '/uploads/gallery/17759995380.jpg', '0'),
(331, 71, 'Offers', '0', '0', '/uploads/gallery/17760025410.jpg', '0'),
(332, 11, 'News', '0', '0', '/uploads/gallery/17760759570.png', '0'),
(333, 11, 'News', '0', '0', '/uploads/gallery/17760759571.jpg', '0'),
(334, 11, 'News', '0', '0', '/uploads/gallery/17760759572.png', '0'),
(335, 11, 'News', '0', '0', '/uploads/gallery/17760853880.png', '0'),
(336, 11, 'News', '0', '0', '/uploads/gallery/17760856460.jpg', '0'),
(337, 11, 'News', '0', '0', '/uploads/gallery/17760856740.jpg', '0'),
(338, 11, 'News', '0', '0', '/uploads/gallery/17760857440.jpg', '0'),
(339, 11, 'News', '0', '0', '/uploads/gallery/17760857580.jpeg', '0'),
(340, 11, 'News', '0', '0', '/uploads/gallery/17760857581.jpg', '0'),
(341, 10, 'News', '0', '0', '/uploads/gallery/17760857790.jpg', '0'),
(342, 10, 'News', '0', '0', '/uploads/gallery/17760857860.png', '0'),
(343, 10, 'News', '0', '0', '/uploads/gallery/17760858670.webp', '0'),
(344, 10, 'News', '0', '0', '/uploads/gallery/17760860600.png', '0'),
(345, 10, 'News', '0', '0', '/uploads/gallery/17760860720.png', '0'),
(346, 10, 'News', '0', '0', '/uploads/gallery/17760860721.jpg', '0'),
(355, 1, 'our_services', '0', '0', '/uploads/gallery/17760943000.jpeg', '0'),
(356, 72, 'contact_us', '0', '0', '/uploads/gallery/17761657600.png', '0'),
(357, 101, 'events', '0', '0', '/uploads/gallery/17768518330.jpg', '0'),
(358, 101, 'events', '0', '0', '/uploads/gallery/17768518400.png', '0'),
(359, 101, 'events', '0', '0', '/uploads/gallery/17768518401.jpeg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int NOT NULL,
  `company` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `location` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `area` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `st` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `box` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone2` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fax` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `site` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nath` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email2` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mob` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `activity` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `exp` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_counter`
--

CREATE TABLE `ip_counter` (
  `ip_counter_id` int NOT NULL,
  `ip_counter_IP` varchar(255) NOT NULL,
  `ip_counter_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ip_counter`
--

INSERT INTO `ip_counter` (`ip_counter_id`, `ip_counter_IP`, `ip_counter_date`) VALUES
(1, '156.205.202.196', '2018-02-14'),
(2, '138.197.26.255', '2018-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `visitor_id` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `f_p_time` varchar(50) NOT NULL,
  `r_t_type` varchar(50) NOT NULL,
  `band` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int NOT NULL,
  `ip_address` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Table structure for table `mail_list`
--

CREATE TABLE `mail_list` (
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `job` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `add_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `country` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `notes` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `reg_date` date NOT NULL,
  `active_status` enum('no','yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agree_term` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'no',
  `agree_policy` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'no',
  `industry` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_data` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `business_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website_fb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avg_orders` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'no',
  `remember_me` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `username`, `phone1`, `phone2`, `email`, `address`, `country`, `password`, `notes`, `reg_date`, `active_status`, `agree_term`, `agree_policy`, `industry`, `other_data`, `business_name`, `website_fb`, `avg_orders`, `login`, `remember_me`) VALUES
(12, 'yasmin ashraf', 'yasmin-ashraf', '01022406178', '', 'yasmin@gmail.com', '', 'egypt', '541545345', '', '2024-05-28', 'no', 'no', 'no', '49', NULL, 'test', 'https://www.facebook.com/', '50-100', 'no', 'no'),
(30, 'radwa mohammed', 'radwa-mohammed', '251354', '', 'radwa@gmail.com', '', 'egypt', '$2y$10$w1qcX0dV4QZBCAgYzvdGRuzl7n91E6lD.V0OnRlUVHrmH1lpSrVOG', '', '2024-05-29', 'no', 'yes', 'yes', '52', NULL, 'test', 'https://www.facebook.com/', '50-100', 'no', 'no'),
(31, 'sarah ashraf', 'sarah-ashraf', '251354', '', 'sarah@gmail.com', '', 'egypt', '$2y$10$qhUwT8bT93kgmaWmtVnFce2ylfV/8BT30QoCkXiE2Q3A3kzPtAsJS', '', '2024-05-29', 'no', 'yes', 'yes', '53', NULL, 'test', 'https://www.facebook.com/', '50-100', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_21_130417_create_admin_table', 0),
(6, '2023_08_21_130417_create_adminuservisitor_table', 0),
(7, '2023_08_21_130417_create_categories_table', 0),
(8, '2023_08_21_130417_create_ci_sessions_table', 0),
(9, '2023_08_21_130417_create_city_table', 0),
(10, '2023_08_21_130417_create_comments_table', 0),
(11, '2023_08_21_130417_create_consultancy_table', 0),
(12, '2023_08_21_130417_create_contact_us_table', 0),
(13, '2023_08_21_130417_create_contacts_table', 0),
(14, '2023_08_21_130417_create_contucts_orders_table', 0),
(15, '2023_08_21_130417_create_cv_table', 0),
(16, '2023_08_21_130417_create_demands_table', 0),
(17, '2023_08_21_130417_create_failed_jobs_table', 0),
(18, '2023_08_21_130417_create_feedback_table', 0),
(19, '2023_08_21_130417_create_feedback_suggestions_table', 0),
(20, '2023_08_21_130417_create_form_table', 0),
(21, '2023_08_21_130417_create_gallery_table', 0),
(22, '2023_08_21_130417_create_imports_table', 0),
(23, '2023_08_21_130417_create_ip_counter_table', 0),
(24, '2023_08_21_130417_create_jobs_table', 0),
(25, '2023_08_21_130417_create_login_attempts_table', 0),
(26, '2023_08_21_130417_create_mail_list_table', 0),
(27, '2023_08_21_130417_create_modules_table', 0),
(28, '2023_08_21_130417_create_orders_table', 0),
(29, '2023_08_21_130417_create_password_resets_table', 0),
(30, '2023_08_21_130417_create_permissions_table', 0),
(31, '2023_08_21_130417_create_personal_access_tokens_table', 0),
(32, '2023_08_21_130417_create_poll_table', 0),
(33, '2023_08_21_130417_create_poll00_table', 0),
(34, '2023_08_21_130417_create_poll_answer_table', 0),
(35, '2023_08_21_130417_create_poll_answer00_table', 0),
(36, '2023_08_21_130417_create_poll_user_table', 0),
(37, '2023_08_21_130417_create_posts_table', 0),
(38, '2023_08_21_130417_create_posts_comments_table', 0),
(39, '2023_08_21_130417_create_posts_items_table', 0),
(40, '2023_08_21_130417_create_posts_lang_table', 0),
(41, '2023_08_21_130417_create_posts_more_fields_table', 0),
(42, '2023_08_21_130417_create_quote_table', 0),
(43, '2023_08_21_130417_create_regandlog_table', 0),
(44, '2023_08_21_130417_create_roles_table', 0),
(45, '2023_08_21_130417_create_roles_permissions_table', 0),
(46, '2023_08_21_130417_create_seen_table', 0),
(47, '2023_08_21_130417_create_settings_table', 0),
(48, '2023_08_21_130417_create_user_autologin_table', 0),
(49, '2023_08_21_130417_create_user_profile_table', 0),
(50, '2023_08_21_130417_create_user_temp_table', 0),
(51, '2023_08_21_130417_create_users_table', 0),
(52, '2023_09_03_105803_create_admin_table', 0),
(53, '2023_09_03_105803_create_adminuservisitor_table', 0),
(54, '2023_09_03_105803_create_categories_table', 0),
(55, '2023_09_03_105803_create_ci_sessions_table', 0),
(56, '2023_09_03_105803_create_city_table', 0),
(57, '2023_09_03_105803_create_comments_table', 0),
(58, '2023_09_03_105803_create_consultancy_table', 0),
(59, '2023_09_03_105803_create_contact_us_table', 0),
(60, '2023_09_03_105803_create_contacts_table', 0),
(61, '2023_09_03_105803_create_contucts_orders_table', 0),
(62, '2023_09_03_105803_create_cv_table', 0),
(63, '2023_09_03_105803_create_demands_table', 0),
(64, '2023_09_03_105803_create_failed_jobs_table', 0),
(65, '2023_09_03_105803_create_feedback_table', 0),
(66, '2023_09_03_105803_create_feedback_suggestions_table', 0),
(67, '2023_09_03_105803_create_form_table', 0),
(68, '2023_09_03_105803_create_gallery_table', 0),
(69, '2023_09_03_105803_create_imports_table', 0),
(70, '2023_09_03_105803_create_ip_counter_table', 0),
(71, '2023_09_03_105803_create_jobs_table', 0),
(72, '2023_09_03_105803_create_login_attempts_table', 0),
(73, '2023_09_03_105803_create_mail_list_table', 0),
(74, '2023_09_03_105803_create_modules_table', 0),
(75, '2023_09_03_105803_create_orders_table', 0),
(76, '2023_09_03_105803_create_password_resets_table', 0),
(77, '2023_09_03_105803_create_permissions_table', 0),
(78, '2023_09_03_105803_create_personal_access_tokens_table', 0),
(79, '2023_09_03_105803_create_poll_table', 0),
(80, '2023_09_03_105803_create_poll00_table', 0),
(81, '2023_09_03_105803_create_poll_answer_table', 0),
(82, '2023_09_03_105803_create_poll_answer00_table', 0),
(83, '2023_09_03_105803_create_poll_user_table', 0),
(84, '2023_09_03_105803_create_posts_table', 0),
(85, '2023_09_03_105803_create_posts_comments_table', 0),
(86, '2023_09_03_105803_create_posts_items_table', 0),
(87, '2023_09_03_105803_create_posts_lang_table', 0),
(88, '2023_09_03_105803_create_posts_more_fields_table', 0),
(89, '2023_09_03_105803_create_quote_table', 0),
(90, '2023_09_03_105803_create_regandlog_table', 0),
(91, '2023_09_03_105803_create_roles_table', 0),
(92, '2023_09_03_105803_create_roles_permissions_table', 0),
(93, '2023_09_03_105803_create_seen_table', 0),
(94, '2023_09_03_105803_create_settings_table', 0),
(95, '2023_09_03_105803_create_user_autologin_table', 0),
(96, '2023_09_03_105803_create_user_profile_table', 0),
(97, '2023_09_03_105803_create_user_temp_table', 0),
(98, '2023_09_03_105803_create_users_table', 0),
(99, '2023_09_05_092202_create_admin_table', 0),
(100, '2023_09_05_092202_create_adminuservisitor_table', 0),
(101, '2023_09_05_092202_create_categories_table', 0),
(102, '2023_09_05_092202_create_ci_sessions_table', 0),
(103, '2023_09_05_092202_create_city_table', 0),
(104, '2023_09_05_092202_create_comments_table', 0),
(105, '2023_09_05_092202_create_consultancy_table', 0),
(106, '2023_09_05_092202_create_contact_us_table', 0),
(107, '2023_09_05_092202_create_contacts_table', 0),
(108, '2023_09_05_092202_create_contucts_orders_table', 0),
(109, '2023_09_05_092202_create_cv_table', 0),
(110, '2023_09_05_092202_create_demands_table', 0),
(111, '2023_09_05_092202_create_failed_jobs_table', 0),
(112, '2023_09_05_092202_create_feedback_table', 0),
(113, '2023_09_05_092202_create_feedback_suggestions_table', 0),
(114, '2023_09_05_092202_create_form_table', 0),
(115, '2023_09_05_092202_create_gallery_table', 0),
(116, '2023_09_05_092202_create_imports_table', 0),
(117, '2023_09_05_092202_create_ip_counter_table', 0),
(118, '2023_09_05_092202_create_jobs_table', 0),
(119, '2023_09_05_092202_create_login_attempts_table', 0),
(120, '2023_09_05_092202_create_mail_list_table', 0),
(121, '2023_09_05_092202_create_modules_table', 0),
(122, '2023_09_05_092202_create_orders_table', 0),
(123, '2023_09_05_092202_create_password_resets_table', 0),
(124, '2023_09_05_092202_create_permissions_table', 0),
(125, '2023_09_05_092202_create_personal_access_tokens_table', 0),
(126, '2023_09_05_092202_create_poll_table', 0),
(127, '2023_09_05_092202_create_poll00_table', 0),
(128, '2023_09_05_092202_create_poll_answer_table', 0),
(129, '2023_09_05_092202_create_poll_answer00_table', 0),
(130, '2023_09_05_092202_create_poll_user_table', 0),
(131, '2023_09_05_092202_create_posts_table', 0),
(132, '2023_09_05_092202_create_posts_comments_table', 0),
(133, '2023_09_05_092202_create_posts_items_table', 0),
(134, '2023_09_05_092202_create_posts_lang_table', 0),
(135, '2023_09_05_092202_create_posts_more_fields_table', 0),
(136, '2023_09_05_092202_create_quote_table', 0),
(137, '2023_09_05_092202_create_regandlog_table', 0),
(138, '2023_09_05_092202_create_roles_table', 0),
(139, '2023_09_05_092202_create_roles_permissions_table', 0),
(140, '2023_09_05_092202_create_seen_table', 0),
(141, '2023_09_05_092202_create_settings_table', 0),
(142, '2023_09_05_092202_create_user_autologin_table', 0),
(143, '2023_09_05_092202_create_user_profile_table', 0),
(144, '2023_09_05_092202_create_user_temp_table', 0),
(145, '2023_09_05_092202_create_users_table', 0),
(146, '2023_09_21_094910_create_admin_table', 0),
(147, '2023_09_21_094910_create_adminuservisitor_table', 0),
(148, '2023_09_21_094910_create_categories_table', 0),
(149, '2023_09_21_094910_create_ci_sessions_table', 0),
(150, '2023_09_21_094910_create_city_table', 0),
(151, '2023_09_21_094910_create_comments_table', 0),
(152, '2023_09_21_094910_create_consultancy_table', 0),
(153, '2023_09_21_094910_create_contact_us_table', 0),
(154, '2023_09_21_094910_create_contacts_table', 0),
(155, '2023_09_21_094910_create_contucts_orders_table', 0),
(156, '2023_09_21_094910_create_cv_table', 0),
(157, '2023_09_21_094910_create_demands_table', 0),
(158, '2023_09_21_094910_create_failed_jobs_table', 0),
(159, '2023_09_21_094910_create_feedback_table', 0),
(160, '2023_09_21_094910_create_feedback_suggestions_table', 0),
(161, '2023_09_21_094910_create_form_table', 0),
(162, '2023_09_21_094910_create_gallery_table', 0),
(163, '2023_09_21_094910_create_imports_table', 0),
(164, '2023_09_21_094910_create_ip_counter_table', 0),
(165, '2023_09_21_094910_create_jobs_table', 0),
(166, '2023_09_21_094910_create_login_attempts_table', 0),
(167, '2023_09_21_094910_create_mail_list_table', 0),
(168, '2023_09_21_094910_create_modules_table', 0),
(169, '2023_09_21_094910_create_orders_table', 0),
(170, '2023_09_21_094910_create_password_resets_table', 0),
(171, '2023_09_21_094910_create_permissions_table', 0),
(172, '2023_09_21_094910_create_personal_access_tokens_table', 0),
(173, '2023_09_21_094910_create_poll_table', 0),
(174, '2023_09_21_094910_create_poll00_table', 0),
(175, '2023_09_21_094910_create_poll_answer_table', 0),
(176, '2023_09_21_094910_create_poll_answer00_table', 0),
(177, '2023_09_21_094910_create_poll_user_table', 0),
(178, '2023_09_21_094910_create_posts_table', 0),
(179, '2023_09_21_094910_create_posts_comments_table', 0),
(180, '2023_09_21_094910_create_posts_items_table', 0),
(181, '2023_09_21_094910_create_posts_lang_table', 0),
(182, '2023_09_21_094910_create_posts_more_fields_table', 0),
(183, '2023_09_21_094910_create_quote_table', 0),
(184, '2023_09_21_094910_create_regandlog_table', 0),
(185, '2023_09_21_094910_create_roles_table', 0),
(186, '2023_09_21_094910_create_roles_permissions_table', 0),
(187, '2023_09_21_094910_create_seen_table', 0),
(188, '2023_09_21_094910_create_settings_table', 0),
(189, '2023_09_21_094910_create_user_autologin_table', 0),
(190, '2023_09_21_094910_create_user_profile_table', 0),
(191, '2023_09_21_094910_create_user_temp_table', 0),
(192, '2023_09_21_094910_create_users_table', 0),
(193, '2023_09_21_095650_create_admin_table', 0),
(194, '2023_09_21_095650_create_adminuservisitor_table', 0),
(195, '2023_09_21_095650_create_categories_table', 0),
(196, '2023_09_21_095650_create_ci_sessions_table', 0),
(197, '2023_09_21_095650_create_city_table', 0),
(198, '2023_09_21_095650_create_comments_table', 0),
(199, '2023_09_21_095650_create_consultancy_table', 0),
(200, '2023_09_21_095650_create_contact_us_table', 0),
(201, '2023_09_21_095650_create_contacts_table', 0),
(202, '2023_09_21_095650_create_contucts_orders_table', 0),
(203, '2023_09_21_095650_create_cv_table', 0),
(204, '2023_09_21_095650_create_demands_table', 0),
(205, '2023_09_21_095650_create_failed_jobs_table', 0),
(206, '2023_09_21_095650_create_feedback_table', 0),
(207, '2023_09_21_095650_create_feedback_suggestions_table', 0),
(208, '2023_09_21_095650_create_form_table', 0),
(209, '2023_09_21_095650_create_gallery_table', 0),
(210, '2023_09_21_095650_create_imports_table', 0),
(211, '2023_09_21_095650_create_ip_counter_table', 0),
(212, '2023_09_21_095650_create_jobs_table', 0),
(213, '2023_09_21_095650_create_login_attempts_table', 0),
(214, '2023_09_21_095650_create_mail_list_table', 0),
(215, '2023_09_21_095650_create_modules_table', 0),
(216, '2023_09_21_095650_create_orders_table', 0),
(217, '2023_09_21_095650_create_password_resets_table', 0),
(218, '2023_09_21_095650_create_permissions_table', 0),
(219, '2023_09_21_095650_create_personal_access_tokens_table', 0),
(220, '2023_09_21_095650_create_poll_table', 0),
(221, '2023_09_21_095650_create_poll00_table', 0),
(222, '2023_09_21_095650_create_poll_answer_table', 0),
(223, '2023_09_21_095650_create_poll_answer00_table', 0),
(224, '2023_09_21_095650_create_poll_user_table', 0),
(225, '2023_09_21_095650_create_posts_table', 0),
(226, '2023_09_21_095650_create_posts_comments_table', 0),
(227, '2023_09_21_095650_create_posts_items_table', 0),
(228, '2023_09_21_095650_create_posts_lang_table', 0),
(229, '2023_09_21_095650_create_posts_more_fields_table', 0),
(230, '2023_09_21_095650_create_quote_table', 0),
(231, '2023_09_21_095650_create_regandlog_table', 0),
(232, '2023_09_21_095650_create_roles_table', 0),
(233, '2023_09_21_095650_create_roles_permissions_table', 0),
(234, '2023_09_21_095650_create_seen_table', 0),
(235, '2023_09_21_095650_create_settings_table', 0),
(236, '2023_09_21_095650_create_user_autologin_table', 0),
(237, '2023_09_21_095650_create_user_profile_table', 0),
(238, '2023_09_21_095650_create_user_temp_table', 0),
(239, '2023_09_21_095650_create_users_table', 0),
(240, '2023_09_21_100148_create_admin_table', 0),
(241, '2023_09_21_100148_create_adminuservisitor_table', 0),
(242, '2023_09_21_100148_create_categories_table', 0),
(243, '2023_09_21_100148_create_ci_sessions_table', 0),
(244, '2023_09_21_100148_create_city_table', 0),
(245, '2023_09_21_100148_create_comments_table', 0),
(246, '2023_09_21_100148_create_consultancy_table', 0),
(247, '2023_09_21_100148_create_contact_us_table', 0),
(248, '2023_09_21_100148_create_contacts_table', 0),
(249, '2023_09_21_100148_create_contucts_orders_table', 0),
(250, '2023_09_21_100148_create_cv_table', 0),
(251, '2023_09_21_100148_create_demands_table', 0),
(252, '2023_09_21_100148_create_failed_jobs_table', 0),
(253, '2023_09_21_100148_create_feedback_table', 0),
(254, '2023_09_21_100148_create_feedback_suggestions_table', 0),
(255, '2023_09_21_100148_create_form_table', 0),
(256, '2023_09_21_100148_create_gallery_table', 0),
(257, '2023_09_21_100148_create_imports_table', 0),
(258, '2023_09_21_100148_create_ip_counter_table', 0),
(259, '2023_09_21_100148_create_jobs_table', 0),
(260, '2023_09_21_100148_create_login_attempts_table', 0),
(261, '2023_09_21_100148_create_mail_list_table', 0),
(262, '2023_09_21_100148_create_modules_table', 0),
(263, '2023_09_21_100148_create_orders_table', 0),
(264, '2023_09_21_100148_create_password_resets_table', 0),
(265, '2023_09_21_100148_create_permissions_table', 0),
(266, '2023_09_21_100148_create_personal_access_tokens_table', 0),
(267, '2023_09_21_100148_create_poll_table', 0),
(268, '2023_09_21_100148_create_poll00_table', 0),
(269, '2023_09_21_100148_create_poll_answer_table', 0),
(270, '2023_09_21_100148_create_poll_answer00_table', 0),
(271, '2023_09_21_100148_create_poll_user_table', 0),
(272, '2023_09_21_100148_create_posts_table', 0),
(273, '2023_09_21_100148_create_posts_comments_table', 0),
(274, '2023_09_21_100148_create_posts_items_table', 0),
(275, '2023_09_21_100148_create_posts_lang_table', 0),
(276, '2023_09_21_100148_create_posts_more_fields_table', 0),
(277, '2023_09_21_100148_create_quote_table', 0),
(278, '2023_09_21_100148_create_regandlog_table', 0),
(279, '2023_09_21_100148_create_roles_table', 0),
(280, '2023_09_21_100148_create_roles_permissions_table', 0),
(281, '2023_09_21_100148_create_seen_table', 0),
(282, '2023_09_21_100148_create_settings_table', 0),
(283, '2023_09_21_100148_create_user_autologin_table', 0),
(284, '2023_09_21_100148_create_user_profile_table', 0),
(285, '2023_09_21_100148_create_user_temp_table', 0),
(286, '2023_09_21_100148_create_users_table', 0),
(287, '2023_09_21_104729_create_admin_table', 0),
(288, '2023_09_21_104729_create_adminuservisitor_table', 0),
(289, '2023_09_21_104729_create_categories_table', 0),
(290, '2023_09_21_104729_create_ci_sessions_table', 0),
(291, '2023_09_21_104729_create_city_table', 0),
(292, '2023_09_21_104729_create_comments_table', 0),
(293, '2023_09_21_104729_create_consultancy_table', 0),
(294, '2023_09_21_104729_create_contact_us_table', 0),
(295, '2023_09_21_104729_create_contacts_table', 0),
(296, '2023_09_21_104729_create_contucts_orders_table', 0),
(297, '2023_09_21_104729_create_cv_table', 0),
(298, '2023_09_21_104729_create_demands_table', 0),
(299, '2023_09_21_104729_create_failed_jobs_table', 0),
(300, '2023_09_21_104729_create_feedback_table', 0),
(301, '2023_09_21_104729_create_feedback_suggestions_table', 0),
(302, '2023_09_21_104729_create_form_table', 0),
(303, '2023_09_21_104729_create_gallery_table', 0),
(304, '2023_09_21_104729_create_imports_table', 0),
(305, '2023_09_21_104729_create_ip_counter_table', 0),
(306, '2023_09_21_104729_create_jobs_table', 0),
(307, '2023_09_21_104729_create_login_attempts_table', 0),
(308, '2023_09_21_104729_create_mail_list_table', 0),
(309, '2023_09_21_104729_create_modules_table', 0),
(310, '2023_09_21_104729_create_orders_table', 0),
(311, '2023_09_21_104729_create_password_resets_table', 0),
(312, '2023_09_21_104729_create_permissions_table', 0),
(313, '2023_09_21_104729_create_personal_access_tokens_table', 0),
(314, '2023_09_21_104729_create_poll_table', 0),
(315, '2023_09_21_104729_create_poll00_table', 0),
(316, '2023_09_21_104729_create_poll_answer_table', 0),
(317, '2023_09_21_104729_create_poll_answer00_table', 0),
(318, '2023_09_21_104729_create_poll_user_table', 0),
(319, '2023_09_21_104729_create_posts_table', 0),
(320, '2023_09_21_104729_create_posts_comments_table', 0),
(321, '2023_09_21_104729_create_posts_items_table', 0),
(322, '2023_09_21_104729_create_posts_lang_table', 0),
(323, '2023_09_21_104729_create_posts_more_fields_table', 0),
(324, '2023_09_21_104729_create_quote_table', 0),
(325, '2023_09_21_104729_create_regandlog_table', 0),
(326, '2023_09_21_104729_create_roles_table', 0),
(327, '2023_09_21_104729_create_roles_permissions_table', 0),
(328, '2023_09_21_104729_create_seen_table', 0),
(329, '2023_09_21_104729_create_settings_table', 0),
(330, '2023_09_21_104729_create_user_autologin_table', 0),
(331, '2023_09_21_104729_create_user_profile_table', 0),
(332, '2023_09_21_104729_create_user_temp_table', 0),
(333, '2023_09_21_104729_create_users_table', 0),
(334, '2024_01_18_094400_create_permission_tables', 2),
(335, '2025_09_01_070942_create_visitors_table', 3),
(338, '2025_09_01_082823_create_pages_table', 4),
(339, '2025_09_08_132559_create_applications_table', 5),
(340, '2026_04_19_114222_create_role_permissions_table', 6),
(341, '2026_04_19_114842_add_name_ar_to_table_roles', 7),
(342, '2026_04_19_140424_add_permissions_to_role_permissions', 8),
(343, '2026_04_19_150126_create_role_modules_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(5, 'App\\Models\\admin\\User', 1),
(47, 'App\\Models\\admin\\User', 124),
(47, 'App\\Models\\admin\\User', 125),
(5, 'App\\Models\\admin\\User', 126),
(5, 'App\\Models\\admin\\User', 127),
(49, 'App\\Models\\admin\\User', 128),
(50, 'App\\Models\\admin\\User', 129),
(51, 'App\\Models\\admin\\User', 130),
(52, 'App\\Models\\admin\\User', 131);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name_ar` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `have_name` enum('no','yes') NOT NULL DEFAULT 'no',
  `have_short` enum('no','yes') NOT NULL DEFAULT 'no',
  `have_details` enum('no','yes') NOT NULL DEFAULT 'no',
  `have_pic` enum('yes','no') NOT NULL DEFAULT 'no',
  `have_gallery` enum('no','yes') NOT NULL DEFAULT 'no',
  `have_cats` enum('no','yes') NOT NULL DEFAULT 'no',
  `txts` int NOT NULL,
  `txts_names` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `areas` int NOT NULL,
  `areas_names` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `up` varchar(50) NOT NULL,
  `up_names` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `have_add` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_edit` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_delete` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_order` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_url` enum('yes','no') NOT NULL DEFAULT 'yes',
  `in_menu` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_activation` enum('yes','no') NOT NULL DEFAULT 'yes',
  `have_comments` enum('no','yes') NOT NULL DEFAULT 'no',
  `pic_size` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `more_fields` int NOT NULL,
  `more_fields_names` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `more_fields_titles` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `home_option` enum('no','yes') NOT NULL,
  `in_slider` enum('no','yes') NOT NULL DEFAULT 'no',
  `in_lite` enum('no','yes') NOT NULL DEFAULT 'no',
  `in_mobile` enum('no','yes') NOT NULL DEFAULT 'no',
  `icon` varchar(100) DEFAULT NULL,
  `details_Req` enum('no','yes') NOT NULL,
  `cat_Req` enum('no','yes') NOT NULL,
  `pic_Req` enum('no','yes') NOT NULL,
  `name_Req` enum('no','yes') NOT NULL,
  `have_more_fields` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `name_ar`, `title`, `have_name`, `have_short`, `have_details`, `have_pic`, `have_gallery`, `have_cats`, `txts`, `txts_names`, `areas`, `areas_names`, `up`, `up_names`, `have_add`, `have_edit`, `have_delete`, `have_order`, `have_url`, `in_menu`, `have_activation`, `have_comments`, `pic_size`, `more_fields`, `more_fields_names`, `more_fields_titles`, `home_option`, `in_slider`, `in_lite`, `in_mobile`, `icon`, `details_Req`, `cat_Req`, `pic_Req`, `name_Req`, `have_more_fields`) VALUES
(1, 'Slider', 'صور الهيدر', 'Album', 'yes', 'no', 'no', 'no', 'no', 'no', 1, 'short_description', 0, '', '', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'allowed jpg,png 1350*400px , max size 2MB', 0, '', '', 'no', 'no', 'no', 'no', NULL, '', '', '', '', ''),
(3, 'Static Pages', 'الصفحات الثابته', 'staticpages', 'yes', 'no', 'yes', 'no', 'no', 'no', 0, '', 0, '', '', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no', '', 0, '', '', 'no', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(28, 'About ', 'عن الهيئة', 'About_academy', 'yes', 'yes', 'yes', 'no', 'no', 'no', 0, '', 0, '', '', '', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'allowed jpg,png 550*480px , max size 2MB', 0, '', '', '', 'no', 'no', 'no', NULL, '', '', '', '', ''),
(33, 'News', 'الاخبار', 'News', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 1, 'add_date', 0, '0', '0', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'allowed jpg,png 1290*480px , max size 2MB', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'yes', 'yes', 'yes', 'yes', ''),
(71, 'Careers', 'وظائفنا', 'careers', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 1, 'add_date', 0, '', '', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', '', 0, '', '', 'no', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(77, 'contact us', 'اتصل بنا', 'contact_us', 'no', 'no', 'no', 'yes', 'no', 'no', 0, '', 1, 'map', '', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', '', 0, '', '', 'no', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(85, 'services', 'خدمات', 'our_services', 'yes', 'no', 'yes', 'no', 'no', 'no', 0, '', 0, '', '0', '', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', '', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(86, 'Properties', 'العقارات', 'properties', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 4, 'location,price,perimeter,property_type', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', '', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(87, 'Projects', 'المشاريع', 'projects', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 2, 'price,location', 0, '', '1', 'planing', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', '', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(88, 'offers', 'العروض', 'Offers', 'yes', 'no', 'yes', 'no', 'no', 'yes', 0, '', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', '', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(89, 'Team Work', 'فريق العمل', 'team_work', 'yes', 'no', 'no', 'no', 'no', 'no', 1, 'job_title', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', '', 0, '', '', 'no', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(90, 'Certificates', 'الشهادات و الاعتمادات', 'certificates', 'yes', 'no', 'no', 'no', 'no', 'no', 0, '', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', '', 0, '', '', 'no', 'no', 'no', 'no', NULL, 'no', 'no', 'no', 'no', 'no'),
(91, 'Events', 'الفعاليات', 'events', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 2, 'add_date,add_date2', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'pic_size', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'yes', 'no', 'yes', 'yes', 'no'),
(92, 'Releases', 'الاصدارات', 'releases', 'yes', 'no', 'yes', 'no', 'no', 'yes', 2, 'add_date,name_of_author', 0, '', '0', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'pic size is big', 0, '', '', 'yes', 'no', 'no', 'no', NULL, 'yes', 'yes', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `module_more_fields`
--

CREATE TABLE `module_more_fields` (
  `id` int NOT NULL,
  `mid` int NOT NULL,
  `fieldName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fType` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'checkbox,radio,dropdown,textbox,fileupload',
  `fValues` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module_more_fields`
--

INSERT INTO `module_more_fields` (`id`, `mid`, `fieldName`, `fType`, `fValues`) VALUES
(32, 34, 'colors', 'checkbox', 'a:4:{i:0;s:3:\"red\";i:1;s:6:\"orange\";i:2;s:5:\"black\";i:3;s:4:\"blue\";}'),
(33, 34, 'sizes', 'checkbox', 'a:5:{i:0;s:3:\"XXL\";i:1;s:2:\"XL\";i:2;s:1:\"L\";i:3;s:1:\"M\";i:4;s:1:\"S\";}'),
(34, 34, 'price', 'textbox', 'a:1:{i:0;s:2:\"50\";}'),
(35, 34, 'offer_price', 'textbox', 'a:1:{i:0;s:0:\"\";}'),
(36, 34, 'colors2', 'radio', 'a:3:{i:0;s:3:\"red\";i:1;s:6:\"orange\";i:2;s:5:\"black\";}'),
(37, 34, 'upload', 'fileupload', 'a:1:{i:0;s:0:\"\";}'),
(38, 33, 'color', 'radio', 'a:3:{i:0;s:3:\"red\";i:1;s:6:\"orange\";i:2;s:5:\"black\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `mem_id` int NOT NULL,
  `send_date` date NOT NULL,
  `payment_type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('pending','progress','closed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `mem_id`, `send_date`, `payment_type`, `status`) VALUES
(1, 12, '2023-09-26', 'cash', 'pending'),
(2, 12, '2023-10-01', 'cash', 'progress');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int NOT NULL,
  `oid` int NOT NULL,
  `pid` int NOT NULL,
  `pname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `oid`, `pid`, `pname`, `qty`, `price`, `add_date`) VALUES
(1, 1, 189, 'prod3', 1, 50, '2023-10-26'),
(2, 2, 73, 'prod 2', 2, 50, '2023-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@localhost.com', '$2y$10$d38dgNgOu7rcW7SVOrWEKeDxEi8yT2asUG85bUD.KOjMRwc4Vv0Ky', '2024-07-04 11:10:47'),
('sarahashaher0@gmail.com', '$2y$10$t9cc.Q4lQ/U5aRND2ypcpe0tPPbI0IydaT1BC5cLHHQLkazPnIGLm', '2024-07-04 11:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'post-view - عرض البوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(3, 'post-edit - تعديل البوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(4, 'post-delete - حذف البوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(5, 'post-activation - تفعيل البوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(6, 'post-order - ترتيب البوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(11, 'post-add - إضافة بوست', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(12, 'settings-view - عرض الإعدادات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(13, 'settings-edit - تعديل الإعدادات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(14, 'contacts-view - عرض التواصل', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(15, 'contacts-edit - تعديل التواصل', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(16, 'contacts-delete - حذف التواصل', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(17, 'orders-view - عرض الاوردر', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(18, 'orders-edit - تعديل الاوردر', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(19, 'orders-delete - حذف الاوردر', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(20, 'users-view - عرض المستخدمين', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(21, 'users-add - إضافة مستخدمين', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(22, 'users-edit - تعديل مستخدمين', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(23, 'users-delete - حذف مستخدمين', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(24, 'permissions-view - عرض الأذونات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(25, 'permissions-edit - تعديل الأذونات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(26, 'permissions-delete - حذف الأذونات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(28, 'category-view - عرض قسم', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(29, 'category-add - إضافة قسم', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(30, 'category-edit - تعديل قسم', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(31, 'category-delete - حذف قسم', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(32, 'group-view - عرض المجموعات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(33, 'group-add - إضافة مجموعة', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(34, 'group-edit - تعديل مجموعة', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(35, 'group-delete - حذف مجموعة', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(36, 'gallery-view - عرض الجالارى', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(37, 'gallery-add - إضافة جالارى', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(38, 'gallery-edit - تعديل جالارى', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(39, 'gallery-delete - حذف جالارى', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(40, 'members-view - عرض الأعضاء', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(41, 'members-add - إضافة عضو', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(42, 'members-edit - تعديل عضو', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(43, 'members-delete - حذف عضو', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(44, 'members-activate - تفعيل عضو', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(45, 'module-view - عرض موديول', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(46, 'module-add - إضافة موديول', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(47, 'module-edit - تعديل موديول', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(50, 'post-at-home - عرض بوست فى الرئيسية', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(52, 'post-top - وضع بوست فى القمة', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(53, 'print - طباعة', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(54, 'comments - تعليقات', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(55, 'logs-view', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45'),
(57, 'edit articles', 'web', '2024-10-15 09:53:35', '2024-10-15 09:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `permissionsxxx`
--

CREATE TABLE `permissionsxxx` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionsxxx`
--

INSERT INTO `permissionsxxx` (`id`, `name`, `module`, `guard_name`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'post-view - عرض البوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(3, 'post-edit - تعديل البوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(4, 'post-delete - حذف البوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 3),
(5, 'post-activation - تفعيل البوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(6, 'post-order - ترتيب البوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 3),
(11, 'post-add - إضافة بوست', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 3),
(12, 'settings-view - عرض الإعدادات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(13, 'settings-edit - تعديل الإعدادات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 3),
(14, 'contacts-view - عرض التواصل', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(15, 'contacts-edit - تعديل التواصل', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(16, 'contacts-delete - حذف التواصل', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(18, 'orders-edit - تعديل الاوردر', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 4),
(19, 'orders-delete - حذف الاوردر', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(20, 'users-view - عرض المستخدمين', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 3),
(21, 'users-add - إضافة مستخدمين', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(22, 'users-edit - تعديل مستخدمين', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(23, 'users-delete - حذف مستخدمين', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(24, 'permissions-view - عرض الأذونات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(25, 'permissions-edit - تعديل الأذونات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(26, 'permissions-delete - حذف الأذونات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(28, 'category-view - عرض قسم', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(29, 'category-add - إضافة قسم', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(30, 'category-edit - تعديل قسم', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(31, 'category-delete - حذف قسم', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 2),
(32, 'group-view - عرض المجموعات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(33, 'group-add - إضافة مجموعة', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(34, 'group-edit - تعديل مجموعة', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(35, 'group-delete - حذف مجموعة', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(36, 'gallery-view - عرض الجالارى', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(37, 'gallery-add - إضافة جالارى', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(38, 'gallery-edit - تعديل جالارى', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(39, 'gallery-delete - حذف جالارى', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(40, 'members-view - عرض الأعضاء', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(41, 'members-add - إضافة عضو', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(42, 'members-edit - تعديل عضو', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(43, 'members-delete - حذف عضو', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(44, 'members-activate - تفعيل عضو', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(45, 'module-view - عرض موديول', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(46, 'module-add - إضافة موديول', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(47, 'module-edit - تعديل موديول', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(50, 'post-at-home - عرض بوست فى الرئيسية', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(52, 'post-top - وضع بوست فى القمة', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(53, 'print - طباعة', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(54, 'comments - تعليقات', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(55, 'logs-view', '', 'web', '2024-02-25 13:12:45', '2024-02-25 13:12:45', 0),
(132, 'pages__view', 'pages', 'web', NULL, NULL, 5),
(133, 'pages__add', 'pages', 'web', NULL, NULL, 5),
(134, 'pages__edit', 'pages', 'web', NULL, NULL, 5),
(135, 'About__view', 'About', 'web', NULL, NULL, 5),
(136, 'About__edit', 'About', 'web', NULL, NULL, 5),
(137, 'About__order', 'About', 'web', NULL, NULL, 5),
(138, 'About__activation', 'About', 'web', NULL, NULL, 5),
(139, 'Video__view', 'Video', 'web', NULL, NULL, 5),
(140, 'Video__add', 'Video', 'web', NULL, NULL, 5),
(141, 'Video__edit', 'Video', 'web', NULL, NULL, 5),
(142, 'Video__delete', 'Video', 'web', NULL, NULL, 5),
(143, 'Video__order', 'Video', 'web', NULL, NULL, 5),
(144, 'Video__activation', 'Video', 'web', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name_ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dat` date NOT NULL,
  `active` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poll00`
--

CREATE TABLE `poll00` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dat` date NOT NULL,
  `active` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE `poll_answer` (
  `id` int NOT NULL,
  `pollid` int NOT NULL,
  `answer` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `answer_ar` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer00`
--

CREATE TABLE `poll_answer00` (
  `id` int NOT NULL,
  `pollid` int NOT NULL,
  `answer` varchar(99) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `poll_user`
--

CREATE TABLE `poll_user` (
  `id` int NOT NULL,
  `pollid` int NOT NULL,
  `answerid` int NOT NULL,
  `ip` varchar(30) NOT NULL,
  `dat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `p_order` int DEFAULT '1',
  `module` varchar(50) NOT NULL DEFAULT '',
  `module_id` int UNSIGNED NOT NULL,
  `cat` int DEFAULT '0',
  `cat2` int DEFAULT NULL,
  `brand` int DEFAULT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes',
  `up1` varchar(80) DEFAULT NULL,
  `up2` varchar(90) DEFAULT NULL,
  `up3` varchar(90) DEFAULT NULL,
  `add_date` varchar(90) NOT NULL,
  `views` int DEFAULT NULL,
  `downloads` int DEFAULT NULL,
  `comments` int DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title_url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `real_url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url_ar` varchar(170) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `title_url_ar` varchar(170) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `real_url_ar` varchar(170) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `embed` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `at_home` enum('no','yes') NOT NULL DEFAULT 'no',
  `has_offer` enum('no','yes') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'no',
  `product_of_day` enum('no','yes') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'no',
  `month` int DEFAULT NULL,
  `city` int DEFAULT NULL,
  `country` int DEFAULT NULL,
  `region` int DEFAULT NULL,
  `news_date` date DEFAULT NULL,
  `source` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rate_no` int NOT NULL DEFAULT '1',
  `rate_value` int NOT NULL DEFAULT '1',
  `rate` varchar(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `file_type` enum('pdf','word','excel','web_url') CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `num_of_likes` int DEFAULT '0',
  `is_volunteer` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `p_order`, `module`, `module_id`, `cat`, `cat2`, `brand`, `name_en`, `name_ar`, `sub_name`, `pic`, `active`, `up1`, `up2`, `up3`, `add_date`, `views`, `downloads`, `comments`, `url`, `title_url`, `real_url`, `url_ar`, `title_url_ar`, `real_url_ar`, `embed`, `at_home`, `has_offer`, `product_of_day`, `month`, `city`, `country`, `region`, `news_date`, `source`, `rate_no`, `rate_value`, `rate`, `start_date`, `end_date`, `code`, `file_type`, `num_of_likes`, `is_volunteer`) VALUES
(1, 1, 'our_services', 85, NULL, 0, NULL, 'الوساطة في البيع والشراء', 'الوساطة في البيع والشراء', NULL, '1765978412.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'alosat-fy-albyaa-oalshraaa', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(2, 1, 'our_services', 85, NULL, 0, NULL, 'about us', 'إدارة الأملاك', NULL, '1765978384.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'adar-alamlak', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(3, 1, 'our_services', 85, NULL, 0, NULL, 'quality', 'الاستشارات العقارية', NULL, '1765978350.jpg', 'no', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'alastsharat-alaakary', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(4, 3, 'our_services', 85, NULL, 0, NULL, 'Our Strategy', 'التسويق العقاري', NULL, '1765978333.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'altsoyk-alaakary', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(5, 2, 'our_services', 85, NULL, 0, NULL, 'test video', 'خدمات ما بعد البيع', NULL, '1765978305.jpg', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'khdmat-ma-baad-albyaa', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(6, 1, 'properties', 0, 11, 0, NULL, 'gdf', 'شقق للبيع', NULL, '1765792622.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'shkk-llbyaa', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(7, 1, 'properties', 0, 11, 0, NULL, 'gdf', 'شقق 2 شقق متشطبة فاخرة', NULL, '1765798906.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'flats-high-decorated', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(8, 1, 'staticpages', 0, NULL, 0, NULL, 'brief about company', 'نبذة عن الشركة', NULL, '1766044279.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'br', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(9, 1, 'staticpages', 0, NULL, 0, NULL, 'Chairman’s Speech', 'كلمة الرئيس التفيذي', NULL, '1766044322.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'diretors-speech', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(13, 1, 'projects', 0, 1, 0, NULL, 'project one', 'المشروع الاول', NULL, NULL, 'yes', '1766071383_0.jfif', NULL, NULL, '0', 0, 0, 0, '0', 'project-one', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(14, 1, 'projects', 0, 2, 0, NULL, 'project two', 'المشروع الثاني', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'project-two', '0', NULL, NULL, NULL, NULL, 'yes', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(15, 1, 'careers', 0, NULL, 0, NULL, 'Latest company news and projects career', 'آخر أخبار الشركة والمشاريع وظيفة', NULL, NULL, 'yes', '', '', '', '0', 0, 0, 0, '0', 'latest-company-news-and-projects-career', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(16, 1, 'Album', 0, NULL, 0, NULL, 'اساس', 'اساس', NULL, '1766585051.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'rtrtr', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(17, 1, 'Album', 0, NULL, 0, NULL, 'اساس', 'اساس', NULL, '1766589482.jfif', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '6767767', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(18, 1, 'About_academy', 0, NULL, 0, NULL, 'شريكك الموثوق في العقارات الفاخرة', 'شريكك الموثوق في العقارات الفاخرة en', NULL, '1766590702.jfif', 'yes', '', '', '', '0', 0, 0, 0, '0', 'shrykk-almothok-fy-alaakarat-alfakhr', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(19, 1, 'staticpages', 0, NULL, 0, NULL, 'roles', 'الشروط و الاحكام', NULL, NULL, 'yes', '', '', '', '0', 0, 0, 0, '0', 'roles', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(20, 1, 'team_work', 0, NULL, 0, NULL, 'person one', 'شخص 1', NULL, '1767003206.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'person-one', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(21, 1, 'team_work', 0, NULL, 0, NULL, 'person two', 'شخص2', NULL, '1767003248.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'person-two', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(22, 1, 'team_work', 0, NULL, 0, NULL, 'person three', 'شخص3', NULL, '1767003292.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'person-three', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(23, 1, 'certificates', 0, NULL, 0, NULL, 'certificate one', 'شهادة اولي', NULL, '1767003336.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'certificate-one', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(24, 1, 'certificates', 0, NULL, 0, NULL, 'certificate two', 'شهادة ثانية', NULL, '1767003379.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'certificate-two', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(25, 1, 'certificates', 0, NULL, 0, NULL, 'certificate three', 'شهادة ثالثة', NULL, '1767003440.png', 'yes', '', '', '', '0', 0, 0, 0, '0', 'certificate-three', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(69, 1, 'careers', 71, NULL, 0, NULL, NULL, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', NULL, '/uploads/posts/images//17757212140.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(70, 1, 'careers', 71, NULL, 0, NULL, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'ooooooooooooooooooooooooooooooooooooooooooooooo', NULL, '/uploads/posts/images//17757213120.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(71, 1, 'Offers', 88, NULL, 0, NULL, '555555555555555555', '5555555555555555', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(72, 1, 'contact_us', 77, NULL, 0, NULL, 'sssssssssssssss', 'sssssssssssss', NULL, '/uploads/posts/images/17761586220.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(73, 1, 'contact_us', 77, NULL, 0, NULL, 'yyyyyyyyyyyyyyyyy', 'yyyyyyyyyyyyy', NULL, '/uploads/posts/images/17761659340.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(74, 1, 'careers', 71, NULL, 0, NULL, 'gggggggggggg', 'ggggggggggggggggggggg', NULL, '/uploads/posts/images/17761753200.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(75, 1, 'About_academy', 28, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(85, 1, 'projects', 87, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(90, 1, 'projects', 87, 1, 0, NULL, '111111111111111111111111111111111', '1111111111111111111111111111111', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(91, 2, 'About_academy', 28, NULL, 0, NULL, NULL, 'hghghghgh', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(93, 2, 'projects', 87, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(94, 2, 'properties', 86, 11, 0, NULL, '66666666666666', '666666666666', NULL, NULL, 'no', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(95, 4, 'our_services', 85, NULL, 0, NULL, NULL, 'arararararar', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(96, 2, 'careers', 71, NULL, 0, NULL, NULL, 'ararara', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(97, 3, 'projects', 87, 1, 0, NULL, '2222222222222', '111111111111111111', NULL, '/uploads/posts/images//17762526800.png', 'yes', '/uploads/posts/17762526800.jpg', NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(99, 2, 'staticpages', 3, NULL, 0, NULL, NULL, '444444444444444444444444', NULL, NULL, 'no', NULL, NULL, NULL, '0', 0, 0, 0, '0', '', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(100, 1, 'News', 33, 15, 0, NULL, 'new one en', 'new one ar', NULL, '/uploads/posts/images//17766992550.jpeg', 'yes', '/uploads/posts/17766992550.png', NULL, NULL, '0', 0, 0, 0, '0', 'new-one-en', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(101, 1, 'events', 91, NULL, 0, NULL, 'test event en', 'test event ar', NULL, '/uploads/posts/images//17767847490.jpg', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'test-event-en', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(102, 2, 'News', 33, 16, 0, NULL, 'ssssssssssssssssssss en', 'fffffffffff ar', NULL, '/uploads/posts/images//17768580620.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'ssssssssssssssssssss-en', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(103, 2, 'events', 91, NULL, 0, NULL, 'fffffffffffffff en', '3333333333333333333 ar', NULL, '/uploads/posts/images//17768600100.jpg', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'fffffffffffffff-en', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(104, 3, 'events', 91, NULL, 0, NULL, 'gggggg en', 'jjjjjjjjjjjjjjjjjjjjjjjj ar', NULL, '/uploads/posts/images//17768600760.png', 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', 'gggggg-en', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0),
(105, 1, 'releases', 92, 23, 0, NULL, '22222222222222', '111111111111111', NULL, NULL, 'yes', NULL, NULL, NULL, '0', 0, 0, 0, '0', '22222222222222', '0', NULL, NULL, NULL, NULL, 'no', 'no', 'no', NULL, NULL, 0, 0, NULL, NULL, 1, 1, '0', NULL, NULL, '0', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments`
--

CREATE TABLE `posts_comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `add_date` date NOT NULL,
  `active` enum('no','yes') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_comments`
--

INSERT INTO `posts_comments` (`id`, `post_id`, `name`, `email`, `comment`, `add_date`, `active`) VALUES
(2, 26, 'sarah', 'sarah@gmail.com', 'test', '2024-05-20', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts_items`
--

CREATE TABLE `posts_items` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `v1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `v2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_items`
--

INSERT INTO `posts_items` (`id`, `post_id`, `v1`, `v2`) VALUES
(81, 138, 'sdfsd', 'sdfsd'),
(82, 138, 'ddd', 'ddvvvvvvvvvvvvv'),
(83, 138, 'dfdf', 'dfdf'),
(84, 138, 'test 10 title 1', 'test 10 content 1'),
(85, 135, 'r', 'rr'),
(86, 135, 'dd', 'dd'),
(89, 139, 'cutter', 'wood'),
(90, 140, 'hand', 'tool'),
(91, 141, 'power', 'tool'),
(92, 142, 'saw', 'map'),
(93, 143, 'electric', 'tool'),
(94, 144, 'tool', 'box'),
(96, 145, 'cutter', 'wood'),
(104, 121, 'test 5 title 1', 'test 5 content 1'),
(105, 121, 'new 1', 'new 2'),
(106, 121, 'test 1', 'test 2');

-- --------------------------------------------------------

--
-- Table structure for table `posts_lang`
--

CREATE TABLE `posts_lang` (
  `row_id` int NOT NULL,
  `lang` varchar(20) NOT NULL,
  `post_id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `short` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `txt1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `txt2` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `txt3` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `txt4` varchar(255) DEFAULT NULL,
  `area1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `area2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `area3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `area4` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `area5` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `area6` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keyss` text,
  `descc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_lang`
--

INSERT INTO `posts_lang` (`row_id`, `lang`, `post_id`, `name`, `short`, `details`, `txt1`, `txt2`, `txt3`, `txt4`, `area1`, `area2`, `area3`, `area4`, `area5`, `area6`, `keyss`, `descc`) VALUES
(1, 'ar', 100, 'new one en', '0', '<p>vvvvvvvvvvvvvvvvv</p>', '2026-04-01', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0'),
(2, 'en', 100, 'new one en', '0', '<p>cvcvcvc</p>', '2026-04-20', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0'),
(3, 'ar', 101, 'test event en', '0', '<p>etetetete ar</p>', '2026-04-01', '2026-04-28', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0'),
(4, 'en', 101, 'test event en', '0', '<p>en dffsfsfs</p>', '2026-04-01', '2026-04-28', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0'),
(5, 'ar', 102, 'fffffffffff ar', '0', '<p>gggggggggggggggggggggggggggg ar </p>', '2026-04-19', '0', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(6, 'en', 102, 'ssssssssssssssssssss en', '0', '<p>fffffffffffffffff en</p>', '2026-04-19', '0', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(7, 'ar', 103, '3333333333333333333 ar', '0', '<p>ffffffffffffffffffffff ar</p>', '2026-04-21', '2026-04-25', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(8, 'en', 103, 'fffffffffffffff en', '0', '<p>bbbbbbbbbbbbbb en</p>', '2026-04-22', '2026-04-25', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(9, 'ar', 104, 'jjjjjjjjjjjjjjjjjjjjjjjj ar', '0', '<p>hhhhhh ar</p>', '2026-04-23', '2026-05-09', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(10, 'en', 104, 'gggggg en', '0', '<p>hhhhhhhhh en</p>', '2026-04-23', '2026-05-09', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(11, 'ar', 105, '111111111111111', '0', '<p>11111111111111</p>', '2026-04-01', '1111111111111', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0'),
(12, 'en', 105, '22222222222222', '0', '<p>22222222222</p>', '2026-04-23', '2222222222', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts_more_fields`
--

CREATE TABLE `posts_more_fields` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `field_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `field_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `field_value_ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_more_fields`
--

INSERT INTO `posts_more_fields` (`id`, `post_id`, `field_name`, `field_value`, `field_value_ar`) VALUES
(401, 63, 'color', 'N;', NULL),
(480, 363, 'color', 'N;', NULL),
(492, 15, 'color', 'N;', NULL),
(500, 105, 'color', 'N;', NULL),
(501, 116, 'color', 'N;', NULL),
(502, 118, 'color', 'N;', NULL),
(505, 89, 'color', 'N;', NULL),
(507, 125, 'color', 'N;', NULL),
(509, 128, 'color', 'N;', NULL),
(523, 153, 'color', 'N;', NULL),
(542, 182, 'color', 'N;', NULL),
(602, 244, 'color', 'N;', NULL),
(610, 251, 'color', 'N;', NULL),
(627, 312, 'color', 'N;', NULL),
(664, 345, 'color', 'N;', NULL),
(702, 398, 'color', 'N;', NULL),
(715, 410, 'color', 'N;', NULL),
(716, 411, 'color', 'N;', NULL),
(717, 412, 'color', 'N;', NULL),
(723, 414, 'color', 'N;', NULL),
(731, 401, 'color', 'N;', NULL),
(732, 395, 'color', 'N;', NULL),
(733, 377, 'color', 'N;', NULL),
(734, 376, 'color', 'N;', NULL),
(735, 375, 'color', 'N;', NULL),
(737, 374, 'color', 'N;', NULL),
(738, 373, 'color', 'N;', NULL),
(739, 372, 'color', 'N;', NULL),
(740, 371, 'color', 'N;', NULL),
(741, 370, 'color', 'N;', NULL),
(742, 369, 'color', 'N;', NULL),
(743, 368, 'color', 'N;', NULL),
(744, 367, 'color', 'N;', NULL),
(745, 366, 'color', 'N;', NULL),
(746, 365, 'color', 'N;', NULL),
(747, 364, 'color', 'N;', NULL),
(748, 362, 'color', 'N;', NULL),
(749, 361, 'color', 'N;', NULL),
(750, 360, 'color', 'N;', NULL),
(751, 359, 'color', 'N;', NULL),
(752, 358, 'color', 'N;', NULL),
(753, 357, 'color', 'N;', NULL),
(754, 356, 'color', 'N;', NULL),
(755, 355, 'color', 'N;', NULL),
(756, 352, 'color', 'N;', NULL),
(758, 353, 'color', 'N;', NULL),
(759, 354, 'color', 'N;', NULL),
(760, 351, 'color', 'N;', NULL),
(761, 350, 'color', 'N;', NULL),
(762, 349, 'color', 'N;', NULL),
(763, 348, 'color', 'N;', NULL),
(764, 347, 'color', 'N;', NULL),
(765, 346, 'color', 'N;', NULL),
(766, 344, 'color', 'N;', NULL),
(767, 343, 'color', 'N;', NULL),
(768, 342, 'color', 'N;', NULL),
(770, 338, 'color', 'N;', NULL),
(771, 339, 'color', 'N;', NULL),
(772, 340, 'color', 'N;', NULL),
(773, 341, 'color', 'N;', NULL),
(776, 413, 'color', 'N;', NULL),
(777, 409, 'color', 'N;', NULL),
(778, 408, 'color', 'N;', NULL),
(779, 404, 'color', 'N;', NULL),
(780, 403, 'color', 'N;', NULL),
(781, 402, 'color', 'N;', NULL),
(782, 243, 'color', 'N;', NULL),
(783, 242, 'color', 'N;', NULL),
(784, 241, 'color', 'N;', NULL),
(785, 240, 'color', 'N;', NULL),
(786, 239, 'color', 'N;', NULL),
(788, 238, 'color', 'N;', NULL),
(789, 237, 'color', 'N;', NULL),
(790, 236, 'color', 'N;', NULL),
(792, 235, 'color', 'N;', NULL),
(793, 234, 'color', 'N;', NULL),
(794, 233, 'color', 'N;', NULL),
(795, 232, 'color', 'N;', NULL),
(796, 231, 'color', 'N;', NULL),
(797, 230, 'color', 'N;', NULL),
(798, 229, 'color', 'N;', NULL),
(799, 228, 'color', 'N;', NULL),
(800, 227, 'color', 'N;', NULL),
(801, 226, 'color', 'N;', NULL),
(803, 422, 'color', 'N;', NULL),
(804, 225, 'color', 'N;', NULL),
(805, 224, 'color', 'N;', NULL),
(806, 223, 'color', 'N;', NULL),
(807, 222, 'color', 'N;', NULL),
(809, 221, 'color', 'N;', NULL),
(810, 220, 'color', 'N;', NULL),
(811, 219, 'color', 'N;', NULL),
(812, 218, 'color', 'N;', NULL),
(813, 217, 'color', 'N;', NULL),
(814, 216, 'color', 'N;', NULL),
(815, 215, 'color', 'N;', NULL),
(816, 214, 'color', 'N;', NULL),
(818, 213, 'color', 'N;', NULL),
(819, 212, 'color', 'N;', NULL),
(820, 211, 'color', 'N;', NULL),
(821, 210, 'color', 'N;', NULL),
(822, 209, 'color', 'N;', NULL),
(823, 208, 'color', 'N;', NULL),
(824, 207, 'color', 'N;', NULL),
(825, 206, 'color', 'N;', NULL),
(826, 205, 'color', 'N;', NULL),
(827, 204, 'color', 'N;', NULL),
(828, 203, 'color', 'N;', NULL),
(829, 202, 'color', 'N;', NULL),
(830, 201, 'color', 'N;', NULL),
(831, 200, 'color', 'N;', NULL),
(832, 199, 'color', 'N;', NULL),
(833, 197, 'color', 'N;', NULL),
(834, 196, 'color', 'N;', NULL),
(835, 195, 'color', 'N;', NULL),
(836, 194, 'color', 'N;', NULL),
(837, 399, 'color', 'N;', NULL),
(838, 400, 'color', 'N;', NULL),
(839, 130, 'color', 'N;', NULL),
(840, 132, 'color', 'N;', NULL),
(841, 133, 'color', 'N;', NULL),
(842, 135, 'color', 'N;', NULL),
(843, 136, 'color', 'N;', NULL),
(844, 138, 'color', 'N;', NULL),
(845, 140, 'color', 'N;', NULL),
(847, 141, 'color', 'N;', NULL),
(848, 142, 'color', 'N;', NULL),
(849, 144, 'color', 'N;', NULL),
(850, 145, 'color', 'N;', NULL),
(851, 147, 'color', 'N;', NULL),
(852, 149, 'color', 'N;', NULL),
(854, 155, 'color', 'N;', NULL),
(855, 156, 'color', 'N;', NULL),
(856, 159, 'color', 'N;', NULL),
(857, 160, 'color', 'N;', NULL),
(858, 161, 'color', 'N;', NULL),
(859, 163, 'color', 'N;', NULL),
(860, 164, 'color', 'N;', NULL),
(861, 165, 'color', 'N;', NULL),
(862, 166, 'color', 'N;', NULL),
(863, 168, 'color', 'N;', NULL),
(864, 169, 'color', 'N;', NULL),
(865, 171, 'color', 'N;', NULL),
(866, 174, 'color', 'N;', NULL),
(867, 175, 'color', 'N;', NULL),
(868, 177, 'color', 'N;', NULL),
(869, 179, 'color', 'N;', NULL),
(870, 180, 'color', 'N;', NULL),
(871, 184, 'color', 'N;', NULL),
(872, 185, 'color', 'N;', NULL),
(873, 186, 'color', 'N;', NULL),
(874, 187, 'color', 'N;', NULL),
(875, 188, 'color', 'N;', NULL),
(876, 189, 'color', 'N;', NULL),
(877, 190, 'color', 'N;', NULL),
(879, 191, 'color', 'N;', NULL),
(881, 192, 'color', 'N;', NULL),
(882, 193, 'color', 'N;', NULL),
(883, 337, 'color', 'N;', NULL),
(884, 327, 'color', 'N;', NULL),
(887, 324, 'color', 'N;', NULL),
(888, 326, 'color', 'N;', NULL),
(889, 325, 'color', 'N;', NULL),
(890, 323, 'color', 'N;', NULL),
(892, 321, 'color', 'N;', NULL),
(895, 322, 'color', 'N;', NULL),
(896, 320, 'color', 'N;', NULL),
(897, 319, 'color', 'N;', NULL),
(898, 318, 'color', 'N;', NULL),
(899, 317, 'color', 'N;', NULL),
(900, 316, 'color', 'N;', NULL),
(901, 315, 'color', 'N;', NULL),
(902, 314, 'color', 'N;', NULL),
(903, 313, 'color', 'N;', NULL),
(904, 311, 'color', 'N;', NULL),
(905, 310, 'color', 'N;', NULL),
(906, 309, 'color', 'N;', NULL),
(907, 308, 'color', 'N;', NULL),
(908, 307, 'color', 'N;', NULL),
(909, 306, 'color', 'N;', NULL),
(910, 262, 'color', 'N;', NULL),
(911, 261, 'color', 'N;', NULL),
(914, 260, 'color', 'N;', NULL),
(915, 259, 'color', 'N;', NULL),
(916, 258, 'color', 'N;', NULL),
(917, 257, 'color', 'N;', NULL),
(918, 328, 'color', 'N;', NULL),
(919, 329, 'color', 'N;', NULL),
(920, 330, 'color', 'N;', NULL),
(921, 331, 'color', 'N;', NULL),
(923, 332, 'color', 'N;', NULL),
(924, 333, 'color', 'N;', NULL),
(925, 334, 'color', 'N;', NULL),
(926, 335, 'color', 'N;', NULL),
(927, 336, 'color', 'N;', NULL),
(928, 245, 'color', 'N;', NULL),
(930, 246, 'color', 'N;', NULL),
(931, 247, 'color', 'N;', NULL),
(932, 248, 'color', 'N;', NULL),
(933, 249, 'color', 'N;', NULL),
(934, 250, 'color', 'N;', NULL),
(935, 252, 'color', 'N;', NULL),
(936, 253, 'color', 'N;', NULL),
(937, 254, 'color', 'N;', NULL),
(938, 255, 'color', 'N;', NULL),
(939, 256, 'color', 'N;', NULL),
(941, 424, 'color', 'N;', NULL),
(942, 423, 'color', 'N;', NULL),
(943, 425, 'color', 'N;', NULL),
(944, 426, 'color', 'N;', NULL),
(945, 427, 'color', 'N;', NULL),
(946, 428, 'color', 'N;', NULL),
(947, 429, 'color', 'N;', NULL),
(948, 430, 'color', 'N;', NULL),
(949, 431, 'color', 'N;', NULL),
(950, 432, 'color', 'N;', NULL),
(951, 433, 'color', 'N;', NULL),
(953, 434, 'color', 'N;', NULL),
(954, 435, 'color', 'N;', NULL),
(977, 12, 'color', 'N;', NULL),
(1050, 26, 'color', 'N;', NULL),
(1052, 28, 'color', 'N;', NULL),
(1057, 29, 'color', 'N;', NULL),
(1058, 30, 'color', 'N;', NULL),
(1059, 31, 'color', 'N;', NULL),
(1060, 32, 'color', 'N;', NULL),
(1061, 33, 'color', 'N;', NULL),
(1062, 34, 'color', 'N;', NULL),
(1063, 35, 'color', 'N;', NULL),
(1064, 36, 'color', 'N;', NULL),
(1065, 37, 'color', 'N;', NULL),
(1066, 38, 'color', 'N;', NULL),
(1159, 39, 'color', 'N;', NULL),
(1160, 48, 'color', 'N;', NULL),
(1163, 51, 'color', 'N;', NULL),
(1164, 52, 'color', 'N;', NULL),
(1165, 53, 'color', 'N;', NULL),
(1166, 54, 'color', 'N;', NULL),
(1167, 55, 'color', 'N;', NULL),
(1168, 56, 'color', 'N;', NULL),
(1169, 57, 'color', 'N;', NULL),
(1170, 58, 'color', 'N;', NULL),
(1171, 59, 'color', 'N;', NULL),
(1172, 60, 'color', 'N;', NULL),
(1173, 61, 'color', 'N;', NULL),
(1174, 62, 'color', 'N;', NULL),
(1175, 64, 'color', 'N;', NULL),
(1178, 67, 'color', 'N;', NULL),
(1179, 68, 'color', 'N;', NULL),
(1180, 92, 'color', 'N;', NULL),
(1183, 102, 'color', 'N;', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `org_name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `website` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sites` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `category` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `add_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regandlog`
--

CREATE TABLE `regandlog` (
  `id` int NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regandlog`
--

INSERT INTO `regandlog` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `password`) VALUES
(1, 'sarah', 'ashraf', 'sarah@gmail.com', 2147483647, 'asdsa', '123'),
(2, 'yasmin', 'ashraf', 'yasmin@gmail.com', 2147483647, 'dsfdsf', '123'),
(3, 'soso', 'ali', 'soso@gmail.com', 2147483647, 'dfs', '123'),
(5, 'karema', 'zaki', 'karema@gmail.com', 2147483647, 'skdjm', '123'),
(6, 'koko', 'alaa', 'koko@gmail.com', 2147483647, 'dfhf', '123'),
(7, 'sondos', 'ali', 'sondos@gmail.com', 2147483647, 'sdfhb', '123'),
(8, 'ali', 'nour', 'ali@gmail.com', 123456789, 'hjjjgj', '123');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `name_ar`) VALUES
(5, 'super admin', 'web', '2024-02-25 12:14:06', '2024-02-25 12:14:06', NULL),
(47, 'jobs', 'web', '2025-09-28 02:36:41', '2025-09-28 02:36:41', NULL),
(48, 'somya-maryam_group', 'web', '2025-09-28 02:43:08', '2025-09-28 02:43:08', NULL),
(49, 'news', 'web', '2025-09-28 02:49:42', '2025-09-28 02:49:42', NULL),
(50, 'events', 'web', '2025-09-28 02:52:55', '2025-09-28 02:52:55', NULL),
(51, 'events_releases', 'web', '2025-09-28 02:54:31', '2025-09-28 02:54:31', NULL),
(52, 'policies', 'web', '2025-09-28 02:57:11', '2025-09-28 02:57:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `module` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `action_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `group_id`, `module`, `action`, `action_name`) VALUES
(52, 22, '', '11', 'post-add - إضافة بوست'),
(53, 21, '', '12', 'settings-view - عرض الإعدادات'),
(54, 21, '', '20', 'users-view - عرض المستخدمين'),
(75, 9, '', '1', 'post-view - عرض البوست'),
(76, 9, '', '12', 'settings-view - عرض الإعدادات'),
(439, 8, '', '29', 'category-add - إضافة قسم'),
(440, 8, '', '12', 'settings-view - عرض الإعدادات'),
(441, 8, '', '31', 'category-delete - حذف قسم'),
(442, 8, '', '12', 'settings-view - عرض الإعدادات'),
(443, 8, '', '30', 'category-edit - تعديل قسم'),
(444, 8, '', '12', 'settings-view - عرض الإعدادات'),
(445, 8, '', '28', 'category-view - عرض قسم'),
(446, 8, '', '12', 'settings-view - عرض الإعدادات'),
(447, 8, '', '16', 'contacts-delete - حذف التواصل'),
(448, 8, '', '12', 'settings-view - عرض الإعدادات'),
(449, 8, '', '13', 'settings-edit'),
(450, 8, '', '12', 'settings-view - عرض الإعدادات'),
(543, 5, '', '29', 'category-add - إضافة قسم'),
(544, 5, '', '12', 'settings-view - عرض الإعدادات'),
(545, 5, '', '31', 'category-delete - حذف قسم'),
(546, 5, '', '12', 'settings-view - عرض الإعدادات'),
(547, 5, '', '30', 'category-edit - تعديل قسم'),
(548, 5, '', '12', 'settings-view - عرض الإعدادات'),
(549, 5, '', '28', 'category-view - عرض قسم'),
(550, 5, '', '12', 'settings-view - عرض الإعدادات'),
(551, 5, '', '54', 'comments - تعليقات'),
(552, 5, '', '12', 'settings-view - عرض الإعدادات'),
(553, 5, '', '16', 'contacts-delete - حذف التواصل'),
(554, 5, '', '12', 'settings-view - عرض الإعدادات'),
(555, 5, '', '15', 'contacts-edit - تعديل التواصل'),
(556, 5, '', '12', 'settings-view - عرض الإعدادات'),
(557, 5, '', '14', 'contacts-view - عرض التواصل'),
(558, 5, '', '12', 'settings-view - عرض الإعدادات'),
(559, 5, '', '37', 'gallery-add - إضافة جالارى'),
(560, 5, '', '12', 'settings-view - عرض الإعدادات'),
(561, 5, '', '39', 'gallery-delete - حذف جالارى'),
(562, 5, '', '12', 'settings-view - عرض الإعدادات'),
(563, 5, '', '38', 'gallery-edit - تعديل جالارى'),
(564, 5, '', '12', 'settings-view - عرض الإعدادات'),
(565, 5, '', '36', 'gallery-view - عرض الجالارى'),
(566, 5, '', '12', 'settings-view - عرض الإعدادات'),
(567, 5, '', '33', 'group-add - إضافة مجموعة'),
(568, 5, '', '12', 'settings-view - عرض الإعدادات'),
(569, 5, '', '35', 'group-delete - حذف مجموعة'),
(570, 5, '', '12', 'settings-view - عرض الإعدادات'),
(571, 5, '', '34', 'group-edit - تعديل مجموعة'),
(572, 5, '', '12', 'settings-view - عرض الإعدادات'),
(573, 5, '', '32', 'group-view - عرض المجموعات'),
(574, 5, '', '12', 'settings-view - عرض الإعدادات'),
(575, 5, '', '55', 'logs-view'),
(576, 5, '', '12', 'settings-view - عرض الإعدادات'),
(577, 5, '', '44', 'members-activate - تفعيل عضو'),
(578, 5, '', '12', 'settings-view - عرض الإعدادات'),
(579, 5, '', '41', 'members-add - إضافة عضو'),
(580, 5, '', '12', 'settings-view - عرض الإعدادات'),
(581, 5, '', '43', 'members-delete - حذف عضو'),
(582, 5, '', '12', 'settings-view - عرض الإعدادات'),
(583, 5, '', '42', 'members-edit - تعديل عضو'),
(584, 5, '', '12', 'settings-view - عرض الإعدادات'),
(585, 5, '', '40', 'members-view - عرض الأعضاء'),
(586, 5, '', '12', 'settings-view - عرض الإعدادات'),
(587, 5, '', '46', 'module-add - إضافة موديول'),
(588, 5, '', '12', 'settings-view - عرض الإعدادات'),
(589, 5, '', '47', 'module-edit - تعديل موديول'),
(590, 5, '', '12', 'settings-view - عرض الإعدادات'),
(591, 5, '', '45', 'module-view - عرض موديول'),
(592, 5, '', '12', 'settings-view - عرض الإعدادات'),
(593, 5, '', '19', 'orders-delete - حذف الاوردر'),
(594, 5, '', '12', 'settings-view - عرض الإعدادات'),
(595, 5, '', '18', 'orders-edit - تعديل الاوردر'),
(596, 5, '', '12', 'settings-view - عرض الإعدادات'),
(597, 5, '', '17', 'orders-view - عرض الاوردر'),
(598, 5, '', '12', 'settings-view - عرض الإعدادات'),
(599, 5, '', '26', 'permissions-delete - حذف الأذونات'),
(600, 5, '', '12', 'settings-view - عرض الإعدادات'),
(601, 5, '', '25', 'permissions-edit - تعديل الأذونات'),
(602, 5, '', '12', 'settings-view - عرض الإعدادات'),
(603, 5, '', '24', 'permissions-view - عرض الأذونات'),
(604, 5, '', '12', 'settings-view - عرض الإعدادات'),
(605, 5, '', '5', 'post-activation - تفعيل البوست'),
(606, 5, '', '12', 'settings-view - عرض الإعدادات'),
(607, 5, '', '11', 'post-add - إضافة بوست'),
(608, 5, '', '12', 'settings-view - عرض الإعدادات'),
(609, 5, '', '50', 'post-at-home - عرض بوست فى الرئيسية'),
(610, 5, '', '12', 'settings-view - عرض الإعدادات'),
(611, 5, '', '4', 'post-delete - حذف البوست'),
(612, 5, '', '12', 'settings-view - عرض الإعدادات'),
(613, 5, '', '3', 'post-edit - تعديل البوست'),
(614, 5, '', '12', 'settings-view - عرض الإعدادات'),
(615, 5, '', '6', 'post-order - ترتيب البوست'),
(616, 5, '', '12', 'settings-view - عرض الإعدادات'),
(617, 5, '', '52', 'post-top - وضع بوست فى القمة'),
(618, 5, '', '12', 'settings-view - عرض الإعدادات'),
(619, 5, '', '1', 'post-view - عرض البوست'),
(620, 5, '', '12', 'settings-view - عرض الإعدادات'),
(621, 5, '', '53', 'print - طباعة'),
(622, 5, '', '12', 'settings-view - عرض الإعدادات'),
(623, 5, '', '13', 'settings-edit - تعديل الإعدادات'),
(624, 5, '', '12', 'settings-view - عرض الإعدادات'),
(625, 5, '', '12', 'settings-view - عرض الإعدادات'),
(626, 5, '', '12', 'settings-view - عرض الإعدادات'),
(627, 5, '', '21', 'users-add - إضافة مستخدمين'),
(628, 5, '', '12', 'settings-view - عرض الإعدادات'),
(629, 5, '', '23', 'users-delete - حذف مستخدمين'),
(630, 5, '', '12', 'settings-view - عرض الإعدادات'),
(631, 5, '', '22', 'users-edit - تعديل مستخدمين'),
(632, 5, '', '12', 'settings-view - عرض الإعدادات'),
(633, 5, '', '20', 'users-view - عرض المستخدمين'),
(634, 5, '', '12', 'settings-view - عرض الإعدادات');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_modules`
--

CREATE TABLE `role_modules` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `module_id` int UNSIGNED DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_modules`
--

INSERT INTO `role_modules` (`id`, `role_id`, `module_id`, `permissions`, `created_at`, `updated_at`) VALUES
(25, 5, 1, '[\"show\",\"add\",\"edit\",\"delete\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(26, 5, 3, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(27, 5, 28, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(28, 5, 33, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(29, 5, 71, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(30, 5, 77, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(31, 5, 85, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(32, 5, 86, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(33, 5, 87, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(34, 5, 88, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(35, 5, 89, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55'),
(36, 5, 90, '[\"add\",\"edit\",\"delete\",\"active\",\"print\"]', '2026-04-20 20:41:55', '2026-04-20 20:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `seen`
--

CREATE TABLE `seen` (
  `id` int NOT NULL,
  `user_ip` varchar(250) NOT NULL,
  `proud_id` int NOT NULL,
  `DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dL1CnYnLaGAnGEP0K6YayZMzAUMNC4sMSj4MkGHQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJoUzVOZ1BQZ1d1ZUFmY3AwRzNHVGlJVURKQnlSWTFmUWRmVWtoVFhjIiwidXJsIjpbXSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9hclwvbmV3c1wvMTAwIiwicm91dGUiOiJzaXRlLm5ld3Muc2hvdyJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjoxLCJsb2NhbGUiOiJhciJ9', 1776869931),
('HTBE0xZQ3fzxVgBeAgrKCbpK0wi75n3XjdoQCYPb', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', 'eyJfdG9rZW4iOiJ4U2VSalJ0QUQ2NnRHSXJEYkdYeVA2RkNPbkR4dGd3cTBiMEFIVEhaIiwidXJsIjpbXSwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9lblwvcmVsZWFzZXMiLCJyb3V0ZSI6InNpdGUucmVsZWFzZXMuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MSwibG9jYWxlIjoiZW4iLCJtb2R1bGUiOiJldmVudHMiLCJwb3N0X2lkIjoxMDF9', 1776871644);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `site_name` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `location_ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `site_name_ar` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `facebook` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `twitter` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `youtube` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `linkedin` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `google` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `instagram` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lang` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `profile` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `keys` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `descc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `descc_ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slogan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `slogan_ar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `admin_lang` varchar(20) NOT NULL DEFAULT 'en',
  `open_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `location1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `tiktok` varchar(250) DEFAULT NULL,
  `location2` varchar(250) DEFAULT NULL,
  `num_of_visitors` bigint DEFAULT '0',
  `last_update` varchar(191) DEFAULT NULL,
  `working_hours_ar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `working_hours_en` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `num_of_raters` int DEFAULT NULL,
  `map` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `phone`, `fax`, `mail`, `location`, `location_ar`, `site_name_ar`, `email`, `facebook`, `twitter`, `youtube`, `linkedin`, `google`, `instagram`, `lang`, `profile`, `keys`, `descc`, `descc_ar`, `slogan`, `slogan_ar`, `admin_lang`, `open_time`, `location1`, `phone2`, `tiktok`, `location2`, `num_of_visitors`, `last_update`, `working_hours_ar`, `working_hours_en`, `rating`, `num_of_raters`, `map`, `logo`) VALUES
(1, 'Fujairah Culture & Media Authority', '+97192014444', '444', '', 'Fujairah, UAE', 'الفجيرة، الإمارات العربية المتحدة', 'هيئة الفجيرة للثقافة والإعلام', 'info@fcma.gov.ae', 'https://www.facebook.com/fcmaae/', 'https://x.com', 'https://youtube.com', '', 'google', 'https://www.instagram.com/fujairah_culture/?hl=en', 'en', '33', 'هيئة الفجيرة للثقافة والإعلام, ,\r\nهيئة الفجيرة ,\r\nالفجيرة للثقافة ,\r\nالفجيرة للإعلام  ,', 'هيئة الفجيرة للثقافة والإعلام 2', '', '0', '0', 'ar', '', '0', NULL, 'https://tiktok.com', NULL, 1, '2026-04-22 15:05:22', 'من الإثنين إلى الخميس: 07:30 - 15:30 والجمعة: 08:00 - 12:00', 'from Monday to Thursday:  07:30 - 15:30 and Friday: 08:00 - 12:00', 635, 145, '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d66618.19808470807!2d31.21717898547345!3d30.059482001485396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583fa60b21beeb%3A0x79dfb296e8423bba!2sCairo%2C%20Cairo%20Governorate!5e1!3m2!1sen!2seg!4v1766585998885!5m2!1sen!2seg\" width=\"600\" height=\"450\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></p>', 'admin/assets/images/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `sv_logs`
--

CREATE TABLE `sv_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `action` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `dattime` datetime DEFAULT NULL,
  `dat` date DEFAULT NULL,
  `module` varchar(150) DEFAULT NULL,
  `tbl` varchar(150) DEFAULT NULL,
  `no` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sv_logs`
--

INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(1, 1, 1, 'Edit post for pages module (1)', '2024-07-03 11:14:59', '2024-07-03', 'pages', NULL, ''),
(2, 1, 7, 'Edit post for slider module (7)', '2024-07-03 14:45:49', '2024-07-03', 'slider', NULL, ''),
(3, 1, 1, 'Edit  user id (1)', '2024-07-04 15:09:25', '2024-07-04', 'users', NULL, ''),
(4, 1, 8, 'Edit editor group (8)', '2024-07-07 10:45:43', '2024-07-07', 'groups', NULL, ''),
(5, 1, 8, 'Edit  group (8)', '2024-07-07 10:45:55', '2024-07-07', 'groups', NULL, ''),
(6, 1, 8, 'Edit editor group (8)', '2024-07-07 10:46:17', '2024-07-07', 'groups', NULL, ''),
(7, 1, 7, 'Edit post for slider module (7)', '2024-07-08 07:17:18', '2024-07-08', 'slider', NULL, ''),
(8, 1, 7, 'Edit post for slider module (7)', '2024-07-08 07:17:34', '2024-07-08', 'slider', NULL, ''),
(9, 1, 7, 'Edit post for slider module (7)', '2024-07-08 07:17:51', '2024-07-08', 'slider', NULL, ''),
(10, 1, 7, 'Edit post for slider module (7)', '2024-07-08 07:19:17', '2024-07-08', 'slider', NULL, ''),
(11, 1, 1, 'Edit Settings  ( 1 )', '2024-07-09 12:15:32', '2024-07-09', 'settings', NULL, ''),
(12, 1, 1, 'Edit Settings  ( 1 )', '2024-07-09 12:32:51', '2024-07-09', 'settings', NULL, ''),
(13, 1, 1, 'Edit post for pages module (1)', '2024-07-16 06:42:24', '2024-07-16', 'pages', NULL, ''),
(14, 1, 1, 'Edit post for pages module (1)', '2024-07-16 06:43:44', '2024-07-16', 'pages', NULL, ''),
(15, 1, 26, 'Add post for slider module (26)', '2024-07-16 07:11:01', '2024-07-16', 'slider', NULL, ''),
(16, 1, 26, 'Delete post from slider module (26)', '2024-07-16 07:11:14', '2024-07-16', 'slider', NULL, ''),
(17, 1, 27, 'Add post for pages module (27)', '2024-07-16 07:11:40', '2024-07-16', 'pages', NULL, ''),
(18, 1, 27, 'Edit post for pages module (27)', '2024-07-16 07:13:50', '2024-07-16', 'pages', NULL, ''),
(19, 1, 1, 'Edit post for pages module (1)', '2024-07-16 07:20:41', '2024-07-16', 'pages', NULL, ''),
(20, 1, 1, 'Edit post for pages module (1)', '2024-07-16 08:16:44', '2024-07-16', 'pages', NULL, ''),
(21, 1, 1, 'Edit post for pages module (1)', '2024-07-16 08:17:50', '2024-07-16', 'pages', NULL, ''),
(22, 1, 1, 'Edit post for pages module (1)', '2024-07-16 08:18:22', '2024-07-16', 'pages', NULL, ''),
(23, 1, 28, 'Add post for product module (28)', '2024-07-16 08:24:02', '2024-07-16', 'product', NULL, ''),
(24, 1, 28, 'Delete post from product module (28)', '2024-07-16 08:25:55', '2024-07-16', 'product', NULL, ''),
(25, 1, 29, 'Add post for product module (29)', '2024-07-16 08:28:23', '2024-07-16', 'product', NULL, ''),
(26, 1, 30, 'Add post for product module (30)', '2024-07-16 08:30:06', '2024-07-16', 'product', NULL, ''),
(27, 1, 29, 'Delete post from product module (29)', '2024-07-16 08:32:29', '2024-07-16', 'product', NULL, ''),
(28, 1, 30, 'Delete post from product module (30)', '2024-07-16 08:32:35', '2024-07-16', 'product', NULL, ''),
(29, 1, 31, 'Add post for product module (31)', '2024-07-16 09:41:30', '2024-07-16', 'product', NULL, ''),
(30, 1, 31, 'Edit post for product module (31)', '2024-07-16 10:04:05', '2024-07-16', 'product', NULL, ''),
(31, 1, 1, 'Edit post for pages module (1)', '2024-07-16 10:34:12', '2024-07-16', 'pages', NULL, ''),
(32, 1, 3, 'Edit post for product module (3)', '2024-07-16 10:39:12', '2024-07-16', 'product', NULL, ''),
(33, 1, 7, 'Edit post for slider module (7)', '2024-07-16 10:44:06', '2024-07-16', 'slider', NULL, ''),
(34, 1, 7, 'Edit post for slider module (7)', '2024-07-16 11:07:14', '2024-07-16', 'slider', NULL, ''),
(35, 1, 31, 'Edit post for product module (31)', '2024-07-16 11:44:50', '2024-07-16', 'product', NULL, ''),
(36, 1, 31, 'Edit post for product module (31)', '2024-07-16 11:45:16', '2024-07-16', 'product', NULL, ''),
(37, 1, 31, 'Edit post for product module (31)', '2024-07-16 11:45:44', '2024-07-16', 'product', NULL, ''),
(38, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:41:48', '2024-07-16', 'product', NULL, ''),
(39, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:50:53', '2024-07-16', 'product', NULL, ''),
(40, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:51:14', '2024-07-16', 'product', NULL, ''),
(41, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:51:29', '2024-07-16', 'product', NULL, ''),
(42, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:55:51', '2024-07-16', 'product', NULL, ''),
(43, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:56:13', '2024-07-16', 'product', NULL, ''),
(44, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:56:33', '2024-07-16', 'product', NULL, ''),
(45, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:56:42', '2024-07-16', 'product', NULL, ''),
(46, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:58:44', '2024-07-16', 'product', NULL, ''),
(47, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:58:53', '2024-07-16', 'product', NULL, ''),
(48, 1, 31, 'Edit post for product module (31)', '2024-07-16 12:59:08', '2024-07-16', 'product', NULL, ''),
(49, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:04:55', '2024-07-16', 'product', NULL, ''),
(50, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:05:06', '2024-07-16', 'product', NULL, ''),
(51, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:05:20', '2024-07-16', 'product', NULL, ''),
(52, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:05:32', '2024-07-16', 'product', NULL, ''),
(53, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:06:58', '2024-07-16', 'product', NULL, ''),
(54, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:07:19', '2024-07-16', 'product', NULL, ''),
(55, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:07:39', '2024-07-16', 'product', NULL, ''),
(56, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:08:55', '2024-07-16', 'product', NULL, ''),
(57, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:11:12', '2024-07-16', 'product', NULL, ''),
(58, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:11:35', '2024-07-16', 'product', NULL, ''),
(59, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:11:54', '2024-07-16', 'product', NULL, ''),
(60, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:13:57', '2024-07-16', 'product', NULL, ''),
(61, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:14:17', '2024-07-16', 'product', NULL, ''),
(62, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:16:08', '2024-07-16', 'product', NULL, ''),
(63, 1, 31, 'Edit post for product module (31)', '2024-07-16 13:16:21', '2024-07-16', 'product', NULL, ''),
(64, 1, 114, 'Edit  user id (114)', '2024-07-24 12:36:45', '2024-07-24', 'users', NULL, ''),
(65, 1, 1, 'Edit Settings  ( 1 )', '2024-08-29 10:55:37', '2024-08-29', 'settings', NULL, ''),
(66, 1, 6, 'Edit post for slider module (6)', '2024-08-29 15:22:39', '2024-08-29', 'slider', NULL, ''),
(67, 1, 6, 'Edit post for slider module (6)', '2024-08-29 15:25:46', '2024-08-29', 'slider', NULL, ''),
(68, 1, 7, 'Edit post for slider module (7)', '2024-08-29 15:30:29', '2024-08-29', 'slider', NULL, ''),
(69, 1, 1, 'Edit post for pages module (1)', '2024-08-29 15:33:06', '2024-08-29', 'pages', NULL, ''),
(70, 1, 1, 'Edit post for pages module (1)', '2024-08-29 15:48:21', '2024-08-29', 'pages', NULL, ''),
(71, 1, 1, 'Edit post for pages module (1)', '2024-08-29 15:48:44', '2024-08-29', 'pages', NULL, ''),
(72, 1, 1, 'Edit post for pages module (1)', '2024-08-29 15:49:19', '2024-08-29', 'pages', NULL, ''),
(73, 1, 31, 'Delete post from news module (31)', '2024-09-01 10:00:58', '2024-09-01', 'news', NULL, ''),
(74, 1, 3, 'Edit post for news module (3)', '2024-09-01 10:03:37', '2024-09-01', 'news', NULL, ''),
(75, 1, 3, 'Edit post for news module (3)', '2024-09-01 10:06:53', '2024-09-01', 'news', NULL, ''),
(76, 1, 4, 'Edit post for news module (4)', '2024-09-01 14:05:43', '2024-09-01', 'news', NULL, ''),
(77, 1, 2, 'Edit post for news module (2)', '2024-09-01 14:07:26', '2024-09-01', 'news', NULL, ''),
(78, 1, 3, 'Edit post for news module (3)', '2024-09-01 14:18:09', '2024-09-01', 'news', NULL, ''),
(79, 1, 3, 'Edit post for news module (3)', '2024-09-01 14:30:35', '2024-09-01', 'news', NULL, ''),
(80, 1, 3, 'Edit post for news module (3)', '2024-09-01 14:31:04', '2024-09-01', 'news', NULL, ''),
(81, 1, 4, 'Edit post for news module (4)', '2024-09-01 14:31:22', '2024-09-01', 'news', NULL, ''),
(82, 1, 32, 'Add post for slider module (32)', '2024-09-01 15:54:34', '2024-09-01', 'slider', NULL, ''),
(83, 1, 208, 'Delete contact (208)', '2024-09-01 16:02:50', '2024-09-01', 'contact', NULL, ''),
(84, 1, 207, 'Delete contact (207,206,205,204,203,202,201,200,198,197)', '2024-09-01 16:03:08', '2024-09-01', 'contact', NULL, ''),
(85, 1, 196, 'Delete contact (196,195,194,117,104)', '2024-09-01 16:03:37', '2024-09-01', 'contact', NULL, ''),
(86, 1, 33, 'Add post for progs_en module (33)', '2024-09-02 14:11:47', '2024-09-02', 'progs_en', NULL, ''),
(87, 1, 34, 'Add post for progs_en module (34)', '2024-09-02 14:12:41', '2024-09-02', 'progs_en', NULL, ''),
(88, 1, 35, 'Add post for progs_en module (35)', '2024-09-02 14:13:14', '2024-09-02', 'progs_en', NULL, ''),
(89, 1, 35, 'Make post at HOME is yes for progs_en module (35)', '2024-09-02 14:13:41', '2024-09-02', 'progs_en', NULL, ''),
(90, 1, 34, 'Make post at HOME is yes for progs_en module (34)', '2024-09-02 14:13:49', '2024-09-02', 'progs_en', NULL, ''),
(91, 1, 33, 'Make post at HOME is yes for progs_en module (33)', '2024-09-02 14:13:57', '2024-09-02', 'progs_en', NULL, ''),
(92, 1, 36, 'Add post for progs_ar module (36)', '2024-09-02 14:52:09', '2024-09-02', 'progs_ar', NULL, ''),
(93, 1, 37, 'Add post for progs_en module (37)', '2024-09-02 14:54:47', '2024-09-02', 'progs_en', NULL, ''),
(94, 1, 37, 'Delete post from progs_en module (37)', '2024-09-02 14:55:00', '2024-09-02', 'progs_en', NULL, ''),
(95, 1, 38, 'Add post for progs_ar module (38)', '2024-09-02 14:57:02', '2024-09-02', 'progs_ar', NULL, ''),
(96, 1, 39, 'Add post for progs_ar module (39)', '2024-09-02 14:57:51', '2024-09-02', 'progs_ar', NULL, ''),
(97, 1, 36, 'Edit post for progs_ar module (36)', '2024-09-02 14:57:59', '2024-09-02', 'progs_ar', NULL, ''),
(98, 1, 38, 'Edit post for progs_ar module (38)', '2024-09-02 14:58:50', '2024-09-02', 'progs_ar', NULL, ''),
(99, 1, 35, 'Edit post for progs_en module (35)', '2024-09-02 15:03:49', '2024-09-02', 'progs_en', NULL, ''),
(100, 1, 34, 'Edit post for progs_en module (34)', '2024-09-02 15:04:21', '2024-09-02', 'progs_en', NULL, ''),
(101, 1, 33, 'Edit post for progs_en module (33)', '2024-09-02 15:04:54', '2024-09-02', 'progs_en', NULL, ''),
(102, 1, 33, 'Edit post for progs_en module (33)', '2024-09-02 15:05:13', '2024-09-02', 'progs_en', NULL, ''),
(103, 1, 34, 'Edit post for progs_en module (34)', '2024-09-02 15:05:38', '2024-09-02', 'progs_en', NULL, ''),
(104, 1, 1, 'Edit post for pages module (1)', '2024-09-02 15:46:19', '2024-09-02', 'pages', NULL, ''),
(105, 1, 1, 'Edit post for pages module (1)', '2024-09-03 10:40:03', '2024-09-03', 'pages', NULL, ''),
(106, 1, 1, 'Edit post for pages module (1)', '2024-09-03 10:40:22', '2024-09-03', 'pages', NULL, ''),
(107, 1, 1, 'Edit post for pages module (1)', '2024-09-03 10:40:49', '2024-09-03', 'pages', NULL, ''),
(108, 1, 1, 'Edit Settings  ( 1 )', '2024-09-03 10:46:00', '2024-09-03', 'settings', NULL, ''),
(109, 1, 1, 'Edit Settings  ( 1 )', '2024-09-03 10:48:47', '2024-09-03', 'settings', NULL, ''),
(110, 1, 1, 'Edit Settings  ( 1 )', '2024-09-03 10:55:54', '2024-09-03', 'settings', NULL, ''),
(111, 1, 1, 'Edit Settings  ( 1 )', '2024-09-03 11:08:42', '2024-09-03', 'settings', NULL, ''),
(112, 1, 40, 'Add post for partners module (40)', '2024-09-03 13:18:04', '2024-09-03', 'partners', NULL, ''),
(113, 1, 41, 'Add post for partners module (41)', '2024-09-03 13:18:51', '2024-09-03', 'partners', NULL, ''),
(114, 1, 42, 'Add post for partners module (42)', '2024-09-03 13:19:31', '2024-09-03', 'partners', NULL, ''),
(115, 1, 43, 'Add post for partners module (43)', '2024-09-03 13:20:07', '2024-09-03', 'partners', NULL, ''),
(116, 1, 44, 'Add post for partners module (44)', '2024-09-03 13:20:36', '2024-09-03', 'partners', NULL, ''),
(117, 1, 45, 'Add post for partners module (45)', '2024-09-03 13:21:14', '2024-09-03', 'partners', NULL, ''),
(118, 1, 46, 'Add post for partners module (46)', '2024-09-03 13:22:30', '2024-09-03', 'partners', NULL, ''),
(119, 1, 47, 'Add post for partners module (47)', '2024-09-03 13:23:15', '2024-09-03', 'partners', NULL, ''),
(120, 1, 48, 'Add post for credentials module (48)', '2024-09-03 14:34:49', '2024-09-03', 'credentials', NULL, ''),
(121, 1, 49, 'Add post for credentials module (49)', '2024-09-03 14:37:47', '2024-09-03', 'credentials', NULL, ''),
(122, 1, 48, 'Edit post for credentials module (48)', '2024-09-03 14:38:27', '2024-09-03', 'credentials', NULL, ''),
(123, 1, 50, 'Add post for credentials module (50)', '2024-09-03 14:39:00', '2024-09-03', 'credentials', NULL, ''),
(124, 1, 51, 'Add post for credentials module (51)', '2024-09-03 14:39:34', '2024-09-03', 'credentials', NULL, ''),
(125, 1, 52, 'Add post for credentials module (52)', '2024-09-03 14:40:13', '2024-09-03', 'credentials', NULL, ''),
(126, 1, 53, 'Add post for credentials module (53)', '2024-09-03 14:41:08', '2024-09-03', 'credentials', NULL, ''),
(127, 1, 54, 'Add post for credentials module (54)', '2024-09-03 14:41:44', '2024-09-03', 'credentials', NULL, ''),
(128, 1, 55, 'Add post for certificates module (55)', '2024-09-03 15:39:09', '2024-09-03', 'certificates', NULL, ''),
(129, 1, 56, 'Add post for certificates module (56)', '2024-09-03 15:40:54', '2024-09-03', 'certificates', NULL, ''),
(130, 1, 57, 'Add post for certificates module (57)', '2024-09-03 15:41:22', '2024-09-03', 'certificates', NULL, ''),
(131, 1, 58, 'Add post for certificates module (58)', '2024-09-03 15:50:01', '2024-09-03', 'certificates', NULL, ''),
(132, 1, 59, 'Add post for certificates module (59)', '2024-09-03 15:56:40', '2024-09-03', 'certificates', NULL, ''),
(133, 1, 60, 'Add post for certificates module (60)', '2024-09-03 15:57:11', '2024-09-03', 'certificates', NULL, ''),
(134, 1, 2, 'Edit post for news module (2)', '2024-09-04 09:21:51', '2024-09-04', 'news', NULL, ''),
(135, 1, 3, 'Edit post for news module (3)', '2024-09-04 09:36:06', '2024-09-04', 'news', NULL, ''),
(136, 1, 4, 'Edit post for news module (4)', '2024-09-04 09:36:52', '2024-09-04', 'news', NULL, ''),
(137, 1, 35, 'Edit post for progs_en module (35)', '2024-09-04 14:15:28', '2024-09-04', 'progs_en', NULL, ''),
(138, 1, 39, 'Edit post for progs_ar module (39)', '2024-09-04 14:15:40', '2024-09-04', 'progs_ar', NULL, ''),
(139, 1, 35, 'Edit post for progs_en module (35)', '2024-09-04 14:19:21', '2024-09-04', 'progs_en', NULL, ''),
(140, 1, 39, 'Edit post for progs_ar module (39)', '2024-09-04 14:19:38', '2024-09-04', 'progs_ar', NULL, ''),
(141, 1, 34, 'Edit post for progs_en module (34)', '2024-09-04 14:20:06', '2024-09-04', 'progs_en', NULL, ''),
(142, 1, 34, 'Edit post for progs_en module (34)', '2024-09-04 14:26:40', '2024-09-04', 'progs_en', NULL, ''),
(143, 1, 33, 'Edit post for progs_en module (33)', '2024-09-04 14:27:13', '2024-09-04', 'progs_en', NULL, ''),
(144, 1, 38, 'Edit post for progs_ar module (38)', '2024-09-04 14:28:07', '2024-09-04', 'progs_ar', NULL, ''),
(145, 1, 39, 'Edit post for progs_ar module (39)', '2024-09-04 14:28:13', '2024-09-04', 'progs_ar', NULL, ''),
(146, 1, 36, 'Edit post for progs_ar module (36)', '2024-09-04 14:30:15', '2024-09-04', 'progs_ar', NULL, ''),
(147, 1, 39, 'Make post at HOME is yes for progs_ar module (39)', '2024-09-05 08:33:24', '2024-09-05', 'progs_ar', NULL, ''),
(148, 1, 38, 'Make post at HOME is yes for progs_ar module (38)', '2024-09-05 08:33:33', '2024-09-05', 'progs_ar', NULL, ''),
(149, 1, 36, 'Make post at HOME is yes for progs_ar module (36)', '2024-09-05 08:33:41', '2024-09-05', 'progs_ar', NULL, ''),
(150, 1, 1, 'Edit post for pages module (1)', '2024-09-29 09:32:05', '2024-09-29', 'pages', NULL, ''),
(151, 1, 1, 'Edit post for pages module (1)', '2024-09-29 09:32:49', '2024-09-29', 'pages', NULL, ''),
(152, 1, 32, 'Edit post for slider module (32)', '2024-09-29 09:37:18', '2024-09-29', 'slider', NULL, ''),
(153, 1, 6, 'Delete post from slider module (6)', '2024-09-29 09:37:52', '2024-09-29', 'slider', NULL, ''),
(154, 1, 7, 'Edit post for slider module (7)', '2024-09-29 09:40:15', '2024-09-29', 'slider', NULL, ''),
(155, 1, 7, 'Edit post for slider module (7)', '2024-09-29 09:41:58', '2024-09-29', 'slider', NULL, ''),
(156, 1, 1, 'Edit post for  module (1)', '2024-09-29 09:46:47', '2024-09-29', NULL, NULL, ''),
(157, 1, 1, 'Add post for pages module (1)', '2024-09-29 09:49:44', '2024-09-29', 'pages', NULL, ''),
(158, 1, 2, 'Add post for slider module (2)', '2024-09-29 09:52:04', '2024-09-29', 'slider', NULL, ''),
(159, 1, 3, 'Add post for slider module (3)', '2024-09-29 09:54:56', '2024-09-29', 'slider', NULL, ''),
(160, 1, 4, 'Add post for services module (4)', '2024-09-29 11:39:38', '2024-09-29', 'services', NULL, ''),
(161, 1, 4, 'Edit post for services module (4)', '2024-09-29 11:40:57', '2024-09-29', 'services', NULL, ''),
(162, 1, 5, 'Add post for services module (5)', '2024-09-29 11:42:53', '2024-09-29', 'services', NULL, ''),
(163, 1, 6, 'Add post for services module (6)', '2024-09-29 11:45:41', '2024-09-29', 'services', NULL, ''),
(164, 1, 6, 'Make post at HOME is yes for services module (6)', '2024-09-29 12:07:43', '2024-09-29', 'services', NULL, ''),
(165, 1, 4, 'Make post at HOME is yes for services module (4)', '2024-09-29 12:07:51', '2024-09-29', 'services', NULL, ''),
(166, 1, 5, 'Make post at HOME is yes for services module (5)', '2024-09-29 12:07:59', '2024-09-29', 'services', NULL, ''),
(167, 1, 7, 'Add post for news module (7)', '2024-09-29 12:29:54', '2024-09-29', 'news', NULL, ''),
(168, 1, 8, 'Add post for news module (8)', '2024-09-29 12:30:44', '2024-09-29', 'news', NULL, ''),
(169, 1, 9, 'Add post for news module (9)', '2024-09-29 12:31:34', '2024-09-29', 'news', NULL, ''),
(170, 1, 9, 'Make post at HOME is yes for news module (9)', '2024-09-29 12:33:39', '2024-09-29', 'news', NULL, ''),
(171, 1, 8, 'Make post at HOME is yes for news module (8)', '2024-09-29 12:33:48', '2024-09-29', 'news', NULL, ''),
(172, 1, 7, 'Make post at HOME is yes for news module (7)', '2024-09-29 12:33:55', '2024-09-29', 'news', NULL, ''),
(173, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:08:21', '2024-09-30', 'settings', NULL, ''),
(174, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:09:52', '2024-09-30', 'settings', NULL, ''),
(175, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:26:12', '2024-09-30', 'settings', NULL, ''),
(176, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:28:34', '2024-09-30', 'settings', NULL, ''),
(177, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:28:57', '2024-09-30', 'settings', NULL, ''),
(178, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:29:41', '2024-09-30', 'settings', NULL, ''),
(179, 1, 1, 'Edit Settings  ( 1 )', '2024-09-30 08:30:04', '2024-09-30', 'settings', NULL, ''),
(180, 1, 1, 'Edit post for pages module (1)', '2024-09-30 10:48:08', '2024-09-30', 'pages', NULL, ''),
(181, 1, 1, 'Edit post for pages module (1)', '2024-09-30 10:48:35', '2024-09-30', 'pages', NULL, ''),
(182, 1, 9, 'Edit post for news module (9)', '2024-09-30 11:00:35', '2024-09-30', 'news', NULL, ''),
(183, 1, 8, 'Edit post for news module (8)', '2024-09-30 11:01:58', '2024-09-30', 'news', NULL, ''),
(184, 1, 7, 'Edit post for news module (7)', '2024-09-30 11:02:23', '2024-09-30', 'news', NULL, ''),
(185, 1, 6, 'Edit post for services module (6)', '2024-09-30 11:55:46', '2024-09-30', 'services', NULL, ''),
(186, 1, 5, 'Edit post for services module (5)', '2024-09-30 12:28:08', '2024-09-30', 'services', NULL, ''),
(187, 1, 4, 'Edit post for services module (4)', '2024-09-30 12:28:25', '2024-09-30', 'services', NULL, ''),
(188, 1, 9, 'Edit post for news module (9)', '2024-09-30 12:29:45', '2024-09-30', 'news', NULL, ''),
(189, 1, 8, 'Edit post for news module (8)', '2024-09-30 12:30:12', '2024-09-30', 'news', NULL, ''),
(190, 1, 7, 'Edit post for news module (7)', '2024-09-30 12:31:19', '2024-09-30', 'news', NULL, ''),
(191, 1, 8, 'Edit post for news module (8)', '2024-09-30 12:32:10', '2024-09-30', 'news', NULL, ''),
(192, 1, 8, 'Edit post for news module (8)', '2024-09-30 12:32:38', '2024-09-30', 'news', NULL, ''),
(193, 1, 8, 'Edit post for news module (8)', '2024-09-30 12:32:59', '2024-09-30', 'news', NULL, ''),
(194, 1, 8, 'Edit post for news module (8)', '2024-09-30 12:33:18', '2024-09-30', 'news', NULL, ''),
(195, 1, 7, 'Edit post for news module (7)', '2024-09-30 12:33:44', '2024-09-30', 'news', NULL, ''),
(196, 1, 9, 'Edit post for news module (9)', '2024-09-30 12:34:06', '2024-09-30', 'news', NULL, ''),
(197, 1, 6, 'Delete contact (6,5,4,3,2,1)', '2024-09-30 13:35:51', '2024-09-30', 'contact', NULL, ''),
(198, 1, 8, 'Delete contact (8)', '2024-09-30 13:36:44', '2024-09-30', 'contact', NULL, ''),
(199, 1, 10, 'Add post for pages module (10)', '2024-09-30 13:39:10', '2024-09-30', 'pages', NULL, ''),
(200, 1, 10, 'Edit post for pages module (10)', '2024-09-30 13:57:57', '2024-09-30', 'pages', NULL, ''),
(201, 1, 10, 'Edit post for pages module (10)', '2024-09-30 13:58:38', '2024-09-30', 'pages', NULL, ''),
(202, 1, 10, 'Edit post for pages module (10)', '2024-09-30 14:20:17', '2024-09-30', 'pages', NULL, ''),
(203, 1, 10, 'Edit post for pages module (10)', '2024-09-30 14:21:31', '2024-09-30', 'pages', NULL, ''),
(204, 1, 10, 'Edit post for pages module (10)', '2024-09-30 14:22:02', '2024-09-30', 'pages', NULL, ''),
(205, 1, 10, 'Edit post for pages module (10)', '2024-09-30 14:24:26', '2024-09-30', 'pages', NULL, ''),
(206, 1, 1, 'Edit Settings  ( 1 )', '2024-10-01 09:42:11', '2024-10-01', 'settings', NULL, ''),
(207, 1, 1, 'Edit Settings  ( 1 )', '2024-10-01 09:44:15', '2024-10-01', 'settings', NULL, ''),
(208, 1, 115, 'Add test 4 user (115)', '2024-10-15 13:01:30', '2024-10-15', 'users', NULL, ''),
(209, 1, 115, 'Edit  user id (115)', '2024-10-15 13:02:04', '2024-10-15', 'users', NULL, ''),
(210, 1, 40, 'Add help group (40)', '2024-10-15 13:45:15', '2024-10-15', 'groups', NULL, ''),
(211, 1, 41, 'Add help group (41)', '2024-10-15 13:46:33', '2024-10-15', 'groups', NULL, ''),
(212, 1, 42, 'Add help group (42)', '2024-10-15 13:50:44', '2024-10-15', 'groups', NULL, ''),
(213, 1, 42, 'Edit help2 group (42)', '2024-10-15 13:53:28', '2024-10-15', 'groups', NULL, ''),
(214, 1, 116, 'Add help2 user (116)', '2024-10-15 14:03:10', '2024-10-15', 'users', NULL, ''),
(215, 1, 116, 'Edit  user id (116)', '2024-10-15 14:10:07', '2024-10-15', 'users', NULL, ''),
(216, 1, 116, 'Edit  user id (116)', '2024-10-15 14:12:14', '2024-10-15', 'users', NULL, ''),
(217, 1, 121, 'Edit  user id (121)', '2024-10-15 14:28:19', '2024-10-15', 'users', NULL, ''),
(218, 1, 43, 'Add zzz group (43)', '2024-10-15 14:30:19', '2024-10-15', 'groups', NULL, ''),
(219, 1, 121, 'Edit  user id (121)', '2024-10-15 14:32:13', '2024-10-15', 'users', NULL, ''),
(220, 1, 116, 'Edit  user id (116)', '2024-10-15 14:40:33', '2024-10-15', 'users', NULL, ''),
(221, 1, 115, 'Edit  user id (115)', '2024-10-15 14:40:48', '2024-10-15', 'users', NULL, ''),
(222, 1, 114, 'Edit  user id (114)', '2024-10-15 14:41:11', '2024-10-15', 'users', NULL, ''),
(223, 1, 121, 'Edit  user id (121)', '2024-10-15 14:52:02', '2024-10-15', 'users', NULL, ''),
(224, 1, 122, 'Add sss user (122)', '2024-10-16 11:22:10', '2024-10-16', 'users', NULL, ''),
(225, 1, 122, 'Edit sss user id (122)', '2024-10-16 11:36:38', '2024-10-16', 'users', NULL, ''),
(226, 1, 122, 'Edit sss user id (122)', '2024-10-16 11:37:18', '2024-10-16', 'users', NULL, ''),
(227, 1, 122, 'Edit sss user id (122)', '2024-10-16 12:14:30', '2024-10-16', 'users', NULL, ''),
(228, 1, 122, 'Edit sss user id (122)', '2024-10-16 13:38:18', '2024-10-16', 'users', NULL, ''),
(229, 1, 44, 'Add sss group (44)', '2024-10-16 14:22:08', '2024-10-16', 'groups', NULL, ''),
(230, 1, 45, 'Add sss group (45)', '2024-10-16 14:26:57', '2024-10-16', 'groups', NULL, ''),
(231, 1, 122, 'Edit sss user id (122)', '2024-10-16 14:27:58', '2024-10-16', 'users', NULL, ''),
(232, 1, 116, 'Edit help2 user id (116)', '2024-10-16 14:28:34', '2024-10-16', 'users', NULL, ''),
(233, 1, 114, 'Edit reader user id (114)', '2024-10-16 14:29:48', '2024-10-16', 'users', NULL, ''),
(234, 1, 115, 'Edit editor user id (115)', '2024-10-16 14:30:54', '2024-10-16', 'users', NULL, ''),
(235, 1, 8, 'Edit ggggggggggggggg group (8)', '2024-10-16 14:32:44', '2024-10-16', 'groups', NULL, ''),
(236, 1, 8, 'Edit editor group (8)', '2024-10-16 14:33:09', '2024-10-16', 'groups', NULL, ''),
(237, 1, 8, 'Delete post from group module (8)', '2024-10-16 14:33:38', '2024-10-16', 'group', NULL, ''),
(238, 1, 8, 'Delete Editor group (8)', '2024-10-16 14:56:09', '2024-10-16', 'groups', NULL, ''),
(239, 1, 1, 'Edit admin user id (1)', '2024-10-17 07:57:46', '2024-10-17', 'users', NULL, ''),
(240, 1, 3, 'Delete posts from slider module (3,2)', '2024-11-21 08:47:08', '2024-11-21', 'slider', NULL, ''),
(241, 1, 9, 'Delete posts from news module (9,7)', '2024-11-21 08:47:36', '2024-11-21', 'news', NULL, ''),
(242, 1, 6, 'Delete posts from services module (6,5,4)', '2024-11-21 08:48:34', '2024-11-21', 'services', NULL, ''),
(243, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 09:01:31', '2024-11-21', 'settings', NULL, ''),
(244, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 09:11:42', '2024-11-21', 'settings', NULL, ''),
(245, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 09:13:36', '2024-11-21', 'settings', NULL, ''),
(246, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 09:15:10', '2024-11-21', 'settings', NULL, ''),
(247, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 10:32:44', '2024-11-21', 'settings', NULL, ''),
(248, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 10:33:38', '2024-11-21', 'settings', NULL, ''),
(249, 1, 1, 'Edit Settings  ( 1 )', '2024-11-21 10:34:44', '2024-11-21', 'settings', NULL, ''),
(250, 1, 11, 'Add post for slider module (11)', '2024-11-21 11:35:24', '2024-11-21', 'slider', NULL, ''),
(251, 1, 12, 'Add post for slider module (12)', '2024-11-21 11:41:15', '2024-11-21', 'slider', NULL, ''),
(252, 1, 13, 'Add post for pages module (13)', '2024-11-21 11:44:59', '2024-11-21', 'pages', NULL, ''),
(253, 1, 14, 'Add post for pages module (14)', '2024-11-21 11:45:18', '2024-11-21', 'pages', NULL, ''),
(254, 1, 1, 'Edit post for pages module (1)', '2024-11-21 11:57:58', '2024-11-21', 'pages', NULL, ''),
(255, 1, 1, 'Edit post for pages module (1)', '2024-11-21 11:58:31', '2024-11-21', 'pages', NULL, ''),
(256, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:01:24', '2024-11-21', 'pages', NULL, ''),
(257, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:05:50', '2024-11-21', 'pages', NULL, ''),
(258, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:10:18', '2024-11-21', 'pages', NULL, ''),
(259, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:12:54', '2024-11-21', 'pages', NULL, ''),
(260, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:15:26', '2024-11-21', 'pages', NULL, ''),
(261, 1, 1, 'Edit post for pages module (1)', '2024-11-21 12:16:02', '2024-11-21', 'pages', NULL, ''),
(262, 1, 1, 'Add category for projects module (1)', '2024-11-21 14:05:23', '2024-11-21', 'projects', NULL, ''),
(263, 1, 1, 'Edit category for projects module (1)', '2024-11-21 14:05:47', '2024-11-21', 'projects', NULL, ''),
(264, 1, 15, 'Add post for projects module (15)', '2024-11-21 14:17:13', '2024-11-21', 'projects', NULL, ''),
(265, 1, 15, 'Make post at HOME is yes for projects module (15)', '2024-11-21 14:23:44', '2024-11-21', 'projects', NULL, ''),
(266, 1, 16, 'Add post for projects module (16)', '2024-11-21 14:31:54', '2024-11-21', 'projects', NULL, ''),
(267, 1, 16, 'Make post at HOME is yes for projects module (16)', '2024-11-24 09:38:18', '2024-11-24', 'projects', NULL, ''),
(268, 1, 16, 'Edit post for projects module (16)', '2024-11-24 09:39:14', '2024-11-24', 'projects', NULL, ''),
(269, 1, 2, 'Add category for projects module (2)', '2024-11-24 09:40:08', '2024-11-24', 'projects', NULL, ''),
(270, 1, 17, 'Add post for projects module (17)', '2024-11-24 09:41:18', '2024-11-24', 'projects', NULL, ''),
(271, 1, 17, 'Make post at HOME is yes for projects module (17)', '2024-11-24 09:41:30', '2024-11-24', 'projects', NULL, ''),
(272, 1, 3, 'Add category for projects module (3)', '2024-11-24 09:42:15', '2024-11-24', 'projects', NULL, ''),
(273, 1, 18, 'Add post for projects module (18)', '2024-11-24 09:43:11', '2024-11-24', 'projects', NULL, ''),
(274, 1, 18, 'Make post at HOME is yes for projects module (18)', '2024-11-24 09:43:23', '2024-11-24', 'projects', NULL, ''),
(275, 1, 19, 'Add post for projects module (19)', '2024-11-24 09:43:52', '2024-11-24', 'projects', NULL, ''),
(276, 1, 20, 'Add post for projects module (20)', '2024-11-24 09:45:28', '2024-11-24', 'projects', NULL, ''),
(277, 1, 20, 'Make post at HOME is yes for projects module (20)', '2024-11-24 09:45:40', '2024-11-24', 'projects', NULL, ''),
(278, 1, 20, 'Edit post for projects module (20)', '2024-11-24 09:47:09', '2024-11-24', 'projects', NULL, ''),
(279, 1, 19, 'Edit post for projects module (19)', '2024-11-24 09:49:02', '2024-11-24', 'projects', NULL, ''),
(280, 1, 21, 'Add post for services module (21)', '2024-11-24 10:52:12', '2024-11-24', 'services', NULL, ''),
(281, 1, 21, 'Edit post for services module (21)', '2024-11-24 11:01:48', '2024-11-24', 'services', NULL, ''),
(282, 1, 14, 'Edit post for pages module (14)', '2024-11-24 11:04:04', '2024-11-24', 'pages', NULL, ''),
(283, 1, 13, 'Edit post for pages module (13)', '2024-11-24 11:04:25', '2024-11-24', 'pages', NULL, ''),
(284, 1, 14, 'Edit post for pages module (14)', '2024-11-24 11:04:29', '2024-11-24', 'pages', NULL, ''),
(285, 1, 20, 'Edit post for projects module (20)', '2024-11-24 11:05:39', '2024-11-24', 'projects', NULL, ''),
(286, 1, 1, 'Edit post for pages module (1)', '2024-11-24 11:06:23', '2024-11-24', 'pages', NULL, ''),
(287, 1, 19, 'Edit post for projects module (19)', '2024-11-24 11:06:50', '2024-11-24', 'projects', NULL, ''),
(288, 1, 18, 'Edit post for projects module (18)', '2024-11-24 11:07:48', '2024-11-24', 'projects', NULL, ''),
(289, 1, 17, 'Edit post for projects module (17)', '2024-11-24 11:08:24', '2024-11-24', 'projects', NULL, ''),
(290, 1, 16, 'Edit post for projects module (16)', '2024-11-24 11:09:01', '2024-11-24', 'projects', NULL, ''),
(291, 1, 15, 'Edit post for projects module (15)', '2024-11-24 11:09:31', '2024-11-24', 'projects', NULL, ''),
(292, 1, 21, 'Edit post for services module (21)', '2024-11-24 11:10:26', '2024-11-24', 'services', NULL, ''),
(293, 1, 22, 'Add post for services module (22)', '2024-11-24 11:13:21', '2024-11-24', 'services', NULL, ''),
(294, 1, 22, 'Edit post for services module (22)', '2024-11-24 11:15:02', '2024-11-24', 'services', NULL, ''),
(295, 1, 23, 'Add post for services module (23)', '2024-11-24 11:15:36', '2024-11-24', 'services', NULL, ''),
(296, 1, 22, 'Edit post for services module (22)', '2024-11-24 11:16:43', '2024-11-24', 'services', NULL, ''),
(297, 1, 24, 'Add post for services module (24)', '2024-11-24 11:17:25', '2024-11-24', 'services', NULL, ''),
(298, 1, 25, 'Add post for services module (25)', '2024-11-24 11:18:21', '2024-11-24', 'services', NULL, ''),
(299, 1, 23, 'Edit post for services module (23)', '2024-11-24 11:18:49', '2024-11-24', 'services', NULL, ''),
(300, 1, 26, 'Add post for services module (26)', '2024-11-24 11:19:59', '2024-11-24', 'services', NULL, ''),
(301, 1, 22, 'Make post at HOME is yes for services module (22)', '2024-11-24 11:20:18', '2024-11-24', 'services', NULL, ''),
(302, 1, 21, 'Make post at HOME is yes for services module (21)', '2024-11-24 11:36:29', '2024-11-24', 'services', NULL, ''),
(303, 1, 23, 'Make post at HOME is yes for services module (23)', '2024-11-24 11:39:37', '2024-11-24', 'services', NULL, ''),
(304, 1, 27, 'Add post for news module (27)', '2024-11-24 11:48:43', '2024-11-24', 'news', NULL, ''),
(305, 1, 27, 'Edit post for news module (27)', '2024-11-24 11:49:16', '2024-11-24', 'news', NULL, ''),
(306, 1, 28, 'Add post for news module (28)', '2024-11-24 11:50:30', '2024-11-24', 'news', NULL, ''),
(307, 1, 29, 'Add post for news module (29)', '2024-11-24 11:50:56', '2024-11-24', 'news', NULL, ''),
(308, 1, 30, 'Add post for news module (30)', '2024-11-24 11:51:17', '2024-11-24', 'news', NULL, ''),
(309, 1, 29, 'Edit post for news module (29)', '2024-11-24 11:51:43', '2024-11-24', 'news', NULL, ''),
(310, 1, 28, 'Edit post for news module (28)', '2024-11-24 11:52:22', '2024-11-24', 'news', NULL, ''),
(311, 1, 30, 'Make post at HOME is yes for news module (30)', '2024-11-24 11:54:13', '2024-11-24', 'news', NULL, ''),
(312, 1, 27, 'Make post at HOME is yes for news module (27)', '2024-11-24 11:54:23', '2024-11-24', 'news', NULL, ''),
(313, 1, 28, 'Make post at HOME is yes for news module (28)', '2024-11-24 11:54:43', '2024-11-24', 'news', NULL, ''),
(314, 1, 29, 'Make post at HOME is yes for news module (29)', '2024-11-24 11:54:58', '2024-11-24', 'news', NULL, ''),
(315, 1, 30, 'Make post at HOME is no for news module (30)', '2024-11-24 11:55:43', '2024-11-24', 'news', NULL, ''),
(316, 1, 20, 'Edit post for projects module (20)', '2024-11-24 15:58:48', '2024-11-24', 'projects', NULL, ''),
(317, 1, 19, 'Edit post for projects module (19)', '2024-11-24 15:59:38', '2024-11-24', 'projects', NULL, ''),
(318, 1, 18, 'Edit post for projects module (18)', '2024-11-24 16:00:06', '2024-11-24', 'projects', NULL, ''),
(319, 1, 17, 'Edit post for projects module (17)', '2024-11-25 09:06:38', '2024-11-25', 'projects', NULL, ''),
(320, 1, 16, 'Edit post for projects module (16)', '2024-11-25 09:07:08', '2024-11-25', 'projects', NULL, ''),
(321, 1, 15, 'Edit post for projects module (15)', '2024-11-25 09:07:40', '2024-11-25', 'projects', NULL, ''),
(322, 1, 13, 'Edit post for pages module (13)', '2024-11-25 10:38:05', '2024-11-25', 'pages', NULL, ''),
(323, 1, 14, 'Edit post for pages module (14)', '2024-11-25 10:39:29', '2024-11-25', 'pages', NULL, ''),
(324, 1, 10, 'Edit post for pages module (10)', '2024-11-26 11:25:01', '2024-11-26', 'pages', NULL, ''),
(325, 1, 10, 'Edit post for pages module (10)', '2024-11-26 11:25:44', '2024-11-26', 'pages', NULL, ''),
(326, 1, 20, 'Add gallery for projects module (20)', '2024-11-26 12:17:00', '2024-11-26', 'projects', NULL, ''),
(327, 1, 2, 'Delete gallery from projects module (2)', '2024-11-26 12:17:08', '2024-11-26', 'projects', NULL, ''),
(328, 1, 20, 'Add gallery for projects module (20)', '2024-11-26 12:17:33', '2024-11-26', 'projects', NULL, ''),
(329, 1, 3, 'Edit gallery for projects module (3)', '2024-11-26 12:22:59', '2024-11-26', 'projects', NULL, ''),
(330, 1, 1, 'Edit category for projects module (1)', '2024-11-27 08:50:55', '2024-11-27', 'projects', NULL, ''),
(331, 1, 1, 'Edit category for projects module (1)', '2024-11-27 08:53:52', '2024-11-27', 'projects', NULL, ''),
(332, 1, 2, 'Edit category for projects module (2)', '2024-11-27 08:57:34', '2024-11-27', 'projects', NULL, ''),
(333, 1, 3, 'Edit category for projects module (3)', '2024-11-27 09:01:47', '2024-11-27', 'projects', NULL, ''),
(334, 1, 31, 'Add post for teams module (31)', '2024-11-27 10:58:45', '2024-11-27', 'teams', NULL, ''),
(335, 1, 32, 'Add post for teams module (32)', '2024-11-27 11:08:46', '2024-11-27', 'teams', NULL, ''),
(336, 1, 32, 'Edit post for teams module (32)', '2024-11-27 11:09:00', '2024-11-27', 'teams', NULL, ''),
(337, 1, 33, 'Add post for teams module (33)', '2024-11-27 11:09:32', '2024-11-27', 'teams', NULL, ''),
(338, 1, 34, 'Add post for teams module (34)', '2024-11-27 11:09:56', '2024-11-27', 'teams', NULL, ''),
(339, 1, 35, 'Add post for video module (35)', '2024-11-27 11:29:38', '2024-11-27', 'video', NULL, ''),
(340, 1, 35, 'Edit post for video module (35)', '2024-11-27 11:33:50', '2024-11-27', 'video', NULL, ''),
(341, 1, 36, 'Add post for video module (36)', '2024-11-27 14:58:07', '2024-11-27', 'video', NULL, ''),
(342, 1, 37, 'Add post for video module (37)', '2024-11-27 14:58:45', '2024-11-27', 'video', NULL, ''),
(343, 1, 38, 'Add post for video module (38)', '2024-11-27 15:29:16', '2024-11-27', 'video', NULL, ''),
(344, 1, 39, 'Add post for video module (39)', '2024-11-27 15:29:29', '2024-11-27', 'video', NULL, ''),
(345, 1, 40, 'Add post for video module (40)', '2024-11-27 15:29:53', '2024-11-27', 'video', NULL, ''),
(346, 1, 20, 'Make post at HOME is no for projects module (20)', '2024-11-27 15:31:19', '2024-11-27', 'projects', NULL, ''),
(347, 1, 18, 'Make post at HOME is no for projects module (18)', '2024-11-27 15:31:22', '2024-11-27', 'projects', NULL, ''),
(348, 1, 17, 'Make post at HOME is no for projects module (17)', '2024-11-27 15:31:25', '2024-11-27', 'projects', NULL, ''),
(349, 1, 16, 'Make post at HOME is no for projects module (16)', '2024-11-27 15:31:28', '2024-11-27', 'projects', NULL, ''),
(350, 1, 15, 'Make post at HOME is no for projects module (15)', '2024-11-27 15:31:31', '2024-11-27', 'projects', NULL, ''),
(351, 1, 11, 'Delete contact (11,10,9,7)', '2024-11-27 15:55:51', '2024-11-27', 'contact', NULL, ''),
(352, 1, 31, 'Delete contact (31,30,29,28,27,26,25,24,23,22)', '2024-11-28 08:19:11', '2024-11-28', 'contact', NULL, ''),
(353, 1, 21, 'Delete contact (21,20,19,18,17,16,15,14,13,12)', '2024-11-28 08:19:17', '2024-11-28', 'contact', NULL, ''),
(354, 1, 1, 'Edit Settings  ( 1 )', '2024-11-28 08:24:59', '2024-11-28', 'settings', NULL, ''),
(355, 1, 41, 'Add post for services module (41)', '2024-11-28 08:31:27', '2024-11-28', 'services', NULL, ''),
(356, 1, 42, 'Add post for services module (42)', '2024-11-28 08:31:47', '2024-11-28', 'services', NULL, ''),
(357, 1, 43, 'Add post for news module (43)', '2024-11-28 08:33:06', '2024-11-28', 'news', NULL, ''),
(358, 1, 43, 'Edit post for news module (43)', '2024-11-28 08:33:16', '2024-11-28', 'news', NULL, ''),
(359, 1, 43, 'Edit post for news module (43)', '2024-11-28 08:33:26', '2024-11-28', 'news', NULL, ''),
(360, 1, 43, 'Edit post for news module (43)', '2024-11-28 08:33:33', '2024-11-28', 'news', NULL, ''),
(361, 1, 44, 'Add post for news module (44)', '2024-11-28 08:33:52', '2024-11-28', 'news', NULL, ''),
(362, 1, 44, 'Edit post for news module (44)', '2024-11-28 08:34:06', '2024-11-28', 'news', NULL, ''),
(363, 1, 45, 'Add post for teams module (45)', '2024-11-28 08:35:26', '2024-11-28', 'teams', NULL, ''),
(364, 1, 46, 'Add post for teams module (46)', '2024-11-28 08:35:55', '2024-11-28', 'teams', NULL, ''),
(365, 1, 47, 'Add post for teams module (47)', '2024-11-28 08:36:28', '2024-11-28', 'teams', NULL, ''),
(366, 1, 48, 'Add post for teams module (48)', '2024-11-28 08:37:00', '2024-11-28', 'teams', NULL, ''),
(367, 1, 48, 'Edit post for teams module (48)', '2024-11-28 08:38:01', '2024-11-28', 'teams', NULL, ''),
(368, 1, 45, 'Edit post for teams module (45)', '2024-11-28 08:38:21', '2024-11-28', 'teams', NULL, ''),
(369, 1, 4, 'Add category for projects module (4)', '2024-11-28 08:40:22', '2024-11-28', 'projects', NULL, ''),
(370, 1, 20, 'Edit post for projects module (20)', '2024-11-28 08:40:39', '2024-11-28', 'projects', NULL, ''),
(371, 1, 4, 'Edit category for projects module (4)', '2024-11-28 08:41:15', '2024-11-28', 'projects', NULL, ''),
(372, 1, 4, 'Edit category for projects module (4)', '2024-11-28 08:41:50', '2024-11-28', 'projects', NULL, ''),
(373, 1, 4, 'Edit category for projects module (4)', '2024-11-28 08:42:09', '2024-11-28', 'projects', NULL, ''),
(374, 1, 5, 'Add category for projects module (5)', '2024-11-28 08:43:19', '2024-11-28', 'projects', NULL, ''),
(375, 1, 6, 'Add category for projects module (6)', '2024-11-28 08:43:37', '2024-11-28', 'projects', NULL, ''),
(376, 1, 49, 'Add post for projects module (49)', '2024-11-28 08:55:07', '2024-11-28', 'projects', NULL, ''),
(377, 1, 49, 'Edit post for projects module (49)', '2024-11-28 08:55:18', '2024-11-28', 'projects', NULL, ''),
(378, 1, 50, 'Add post for projects module (50)', '2024-11-28 08:56:21', '2024-11-28', 'projects', NULL, ''),
(379, 1, 51, 'Add post for projects module (51)', '2024-11-28 08:56:46', '2024-11-28', 'projects', NULL, ''),
(380, 1, 1, 'Edit Settings  ( 1 )', '2024-11-28 08:57:49', '2024-11-28', 'settings', NULL, ''),
(381, 1, 12, 'Edit post for slider module (12)', '2024-11-28 09:25:24', '2024-11-28', 'slider', NULL, ''),
(382, 1, 12, 'Edit post for slider module (12)', '2024-11-28 09:25:47', '2024-11-28', 'slider', NULL, ''),
(383, 1, 12, 'Edit post for slider module (12)', '2024-11-28 09:26:49', '2024-11-28', 'slider', NULL, ''),
(384, 1, 11, 'Edit post for slider module (11)', '2024-11-28 09:27:22', '2024-11-28', 'slider', NULL, ''),
(385, 1, 51, 'Edit post for projects module (51)', '2024-11-28 09:35:30', '2024-11-28', 'projects', NULL, ''),
(386, 1, 50, 'Edit post for projects module (50)', '2024-11-28 09:35:43', '2024-11-28', 'projects', NULL, ''),
(387, 1, 49, 'Edit post for projects module (49)', '2024-11-28 09:35:59', '2024-11-28', 'projects', NULL, ''),
(388, 1, 20, 'Edit post for projects module (20)', '2024-11-28 09:36:19', '2024-11-28', 'projects', NULL, ''),
(389, 1, 19, 'Edit post for projects module (19)', '2024-11-28 09:36:29', '2024-11-28', 'projects', NULL, ''),
(390, 1, 18, 'Edit post for projects module (18)', '2024-11-28 09:36:38', '2024-11-28', 'projects', NULL, ''),
(391, 1, 17, 'Edit post for projects module (17)', '2024-11-28 09:36:46', '2024-11-28', 'projects', NULL, ''),
(392, 1, 16, 'Edit post for projects module (16)', '2024-11-28 09:36:59', '2024-11-28', 'projects', NULL, ''),
(393, 1, 15, 'Edit post for projects module (15)', '2024-11-28 09:37:07', '2024-11-28', 'projects', NULL, ''),
(394, 1, 15, 'Edit post for projects module (15)', '2024-11-28 09:37:08', '2024-11-28', 'projects', NULL, ''),
(395, 1, 42, 'Edit post for services module (42)', '2024-11-28 09:38:52', '2024-11-28', 'services', NULL, ''),
(396, 1, 41, 'Edit post for services module (41)', '2024-11-28 09:39:00', '2024-11-28', 'services', NULL, ''),
(397, 1, 26, 'Edit post for services module (26)', '2024-11-28 09:39:16', '2024-11-28', 'services', NULL, ''),
(398, 1, 25, 'Edit post for services module (25)', '2024-11-28 09:39:28', '2024-11-28', 'services', NULL, ''),
(399, 1, 24, 'Edit post for services module (24)', '2024-11-28 09:39:36', '2024-11-28', 'services', NULL, ''),
(400, 1, 23, 'Edit post for services module (23)', '2024-11-28 09:39:48', '2024-11-28', 'services', NULL, ''),
(401, 1, 22, 'Edit post for services module (22)', '2024-11-28 09:40:02', '2024-11-28', 'services', NULL, ''),
(402, 1, 21, 'Edit post for services module (21)', '2024-11-28 09:40:09', '2024-11-28', 'services', NULL, ''),
(403, 1, 52, 'Add post for video module (52)', '2024-11-28 09:54:54', '2024-11-28', 'video', NULL, ''),
(404, 1, 56, 'Add post for video module (56)', '2024-11-28 09:56:48', '2024-11-28', 'video', NULL, ''),
(405, 1, 57, 'Add post for video module (57)', '2024-11-28 09:57:22', '2024-11-28', 'video', NULL, ''),
(406, 1, 40, 'Edit post for video module (40)', '2024-11-28 09:58:10', '2024-11-28', 'video', NULL, ''),
(407, 1, 40, 'Edit post for video module (40)', '2024-11-28 09:59:34', '2024-11-28', 'video', NULL, ''),
(408, 1, 55, 'Delete posts from video module (55,54,53)', '2024-11-28 09:59:59', '2024-11-28', 'video', NULL, ''),
(409, 1, 52, 'Edit post for video module (52)', '2024-11-28 10:00:06', '2024-11-28', 'video', NULL, ''),
(410, 1, 39, 'Edit post for video module (39)', '2024-11-28 10:00:32', '2024-11-28', 'video', NULL, ''),
(411, 1, 38, 'Edit post for video module (38)', '2024-11-28 10:00:53', '2024-11-28', 'video', NULL, ''),
(412, 1, 37, 'Edit post for video module (37)', '2024-11-28 10:01:06', '2024-11-28', 'video', NULL, ''),
(413, 1, 36, 'Edit post for video module (36)', '2024-11-28 10:01:21', '2024-11-28', 'video', NULL, ''),
(414, 1, 35, 'Edit post for video module (35)', '2024-11-28 10:01:34', '2024-11-28', 'video', NULL, ''),
(415, 1, 57, 'Delete posts from video module (57,56,52)', '2024-11-28 10:01:48', '2024-11-28', 'video', NULL, ''),
(416, 1, 10, 'Edit post for pages module (10)', '2024-11-28 10:11:06', '2024-11-28', 'pages', NULL, ''),
(417, 1, 35, 'Edit post for video module (35)', '2024-11-28 10:11:19', '2024-11-28', 'video', NULL, ''),
(418, 1, 35, 'Edit post for video module (35)', '2024-11-28 10:13:37', '2024-11-28', 'video', NULL, ''),
(419, 1, 10, 'Edit post for pages module (10)', '2024-11-28 10:13:50', '2024-11-28', 'pages', NULL, ''),
(420, 1, 116, 'Delete user (116)', '2024-12-03 10:48:57', '2024-12-03', 'users', NULL, ''),
(421, 1, 122, 'Delete user (122)', '2024-12-03 10:49:05', '2024-12-03', 'users', NULL, ''),
(422, 1, 121, 'Delete user (121)', '2024-12-03 10:49:10', '2024-12-03', 'users', NULL, ''),
(423, 1, 115, 'Delete user (115)', '2024-12-03 10:49:50', '2024-12-03', 'users', NULL, ''),
(424, 1, 114, 'Delete user (114)', '2024-12-03 10:49:54', '2024-12-03', 'users', NULL, ''),
(425, 1, 1, 'Edit admin user id (1)', '2024-12-03 10:50:21', '2024-12-03', 'users', NULL, ''),
(426, 1, 50, 'Add gallery for projects module (50)', '2024-12-09 15:43:18', '2024-12-09', 'projects', NULL, ''),
(427, 1, 1, 'Edit post for pages module (1)', '2024-12-09 16:47:59', '2024-12-09', 'pages', NULL, ''),
(428, 1, 1, 'Edit category for projects module (1)', '2024-12-09 16:52:30', '2024-12-09', 'projects', NULL, ''),
(429, 1, 58, 'Add post for projects module (58)', '2024-12-09 16:54:28', '2024-12-09', 'projects', NULL, ''),
(430, 1, 58, 'Add gallery for projects module (58)', '2024-12-09 16:54:55', '2024-12-09', 'projects', NULL, ''),
(431, 1, 58, 'Add gallery for projects module (58)', '2024-12-09 16:56:04', '2024-12-09', 'projects', NULL, ''),
(432, 1, 1, 'Edit post for pages module (1)', '2024-12-16 07:16:42', '2024-12-16', 'pages', NULL, ''),
(433, 1, 10, 'Edit post for pages module (10)', '2024-12-16 07:17:38', '2024-12-16', 'pages', NULL, ''),
(434, 1, 10, 'Edit post for pages module (10)', '2024-12-16 07:20:02', '2024-12-16', 'pages', NULL, ''),
(435, 1, 10, 'Edit post for pages module (10)', '2024-12-16 07:24:40', '2024-12-16', 'pages', NULL, ''),
(436, 1, 1, 'Edit post for pages module (1)', '2024-12-16 07:25:06', '2024-12-16', 'pages', NULL, ''),
(437, 1, 13, 'Edit post for pages module (13)', '2024-12-16 07:27:48', '2024-12-16', 'pages', NULL, ''),
(438, 1, 13, 'Edit post for pages module (13)', '2024-12-16 07:29:06', '2024-12-16', 'pages', NULL, ''),
(439, 1, 50, 'Deactivate posts from projects module (50)', '2024-12-16 08:49:23', '2024-12-16', 'projects', NULL, ''),
(440, 1, 50, 'Activate posts from projects module (50)', '2024-12-16 08:49:30', '2024-12-16', 'projects', NULL, ''),
(441, 1, 19, 'Add gallery for projects module (19)', '2024-12-16 08:50:53', '2024-12-16', 'projects', NULL, ''),
(442, 1, 42, 'Delete posts from services module (42,41,26,25,24,23,22,21)', '2024-12-16 08:53:17', '2024-12-16', 'services', NULL, ''),
(443, 1, 59, 'Add post for services module (59)', '2024-12-16 09:07:57', '2024-12-16', 'services', NULL, ''),
(444, 1, 60, 'Add post for video module (60)', '2024-12-17 07:17:45', '2024-12-17', 'video', NULL, ''),
(445, 1, 60, 'Delete post from video module (60)', '2024-12-17 07:18:04', '2024-12-17', 'video', NULL, ''),
(446, 1, 61, 'Add post for video module (61)', '2024-12-17 07:21:10', '2024-12-17', 'video', NULL, ''),
(447, 1, 62, 'Add post for video module (62)', '2024-12-17 07:27:50', '2024-12-17', 'video', NULL, ''),
(448, 1, 1, 'Edit post for pages module (1)', '2024-12-17 08:07:33', '2024-12-17', 'pages', NULL, ''),
(449, 1, 1, 'Edit post for pages module (1)', '2024-12-17 08:08:14', '2024-12-17', 'pages', NULL, ''),
(450, 1, 1, 'Edit post for pages module (1)', '2024-12-17 08:09:00', '2024-12-17', 'pages', NULL, ''),
(451, 1, 10, 'Edit post for pages module (10)', '2024-12-17 08:12:23', '2024-12-17', 'pages', NULL, ''),
(452, 1, 63, 'Add post for news module (63)', '2024-12-17 08:18:50', '2024-12-17', 'news', NULL, ''),
(453, 1, 63, 'Delete post from news module (63)', '2024-12-17 08:20:27', '2024-12-17', 'news', NULL, ''),
(454, 1, 63, 'Delete post from news module (63)', '2024-12-17 08:20:28', '2024-12-17', 'news', NULL, ''),
(455, 1, 2, 'Edit category for projects module (2)', '2024-12-17 08:24:20', '2024-12-17', 'projects', NULL, ''),
(456, 1, 64, 'Add post for projects module (64)', '2024-12-17 08:25:46', '2024-12-17', 'projects', NULL, ''),
(457, 1, 65, 'Add post for video module (65)', '2024-12-17 08:33:14', '2024-12-17', 'video', NULL, ''),
(458, 1, 1, 'Edit Settings  ( 1 )', '2024-12-17 13:34:33', '2024-12-17', 'settings', NULL, ''),
(459, 1, 1, 'Edit post for pages module (1)', '2024-12-17 13:37:54', '2024-12-17', 'pages', NULL, ''),
(460, 1, 12, 'Edit post for slider module (12)', '2024-12-17 13:39:30', '2024-12-17', 'slider', NULL, ''),
(461, 1, 11, 'Edit post for slider module (11)', '2024-12-17 13:40:58', '2024-12-17', 'slider', NULL, ''),
(462, 1, 1, 'Edit post for pages module (1)', '2024-12-18 04:24:11', '2024-12-18', 'pages', NULL, ''),
(463, 1, 10, 'Edit post for pages module (10)', '2024-12-18 04:28:07', '2024-12-18', 'pages', NULL, ''),
(464, 1, 13, 'Edit post for pages module (13)', '2024-12-18 04:33:15', '2024-12-18', 'pages', NULL, ''),
(465, 1, 12, 'Edit post for slider module (12)', '2024-12-18 04:54:25', '2024-12-18', 'slider', NULL, ''),
(466, 1, 12, 'Edit post for slider module (12)', '2024-12-18 04:55:06', '2024-12-18', 'slider', NULL, ''),
(467, 1, 12, 'Edit post for slider module (12)', '2024-12-18 04:55:44', '2024-12-18', 'slider', NULL, ''),
(468, 1, 12, 'Edit post for slider module (12)', '2024-12-18 05:01:42', '2024-12-18', 'slider', NULL, ''),
(469, 1, 12, 'Edit post for slider module (12)', '2024-12-18 05:04:22', '2024-12-18', 'slider', NULL, ''),
(470, 1, 11, 'Edit post for slider module (11)', '2024-12-18 05:09:06', '2024-12-18', 'slider', NULL, ''),
(471, 1, 11, 'Edit post for slider module (11)', '2024-12-18 05:10:21', '2024-12-18', 'slider', NULL, ''),
(472, 1, 11, 'Edit post for slider module (11)', '2024-12-18 05:15:51', '2024-12-18', 'slider', NULL, ''),
(473, 1, 11, 'Edit post for slider module (11)', '2024-12-18 05:21:13', '2024-12-18', 'slider', NULL, ''),
(474, 1, 30, 'Deactivate posts from news module (30,44,43,29,28,27)', '2024-12-18 05:21:39', '2024-12-18', 'news', NULL, ''),
(475, 1, 30, 'Activate posts from news module (30)', '2024-12-18 05:21:59', '2024-12-18', 'news', NULL, ''),
(476, 1, 30, 'Edit post for news module (30)', '2024-12-18 05:24:08', '2024-12-18', 'news', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(477, 1, 30, 'Edit post for news module (30)', '2024-12-18 05:26:16', '2024-12-18', 'news', NULL, ''),
(478, 1, 30, 'Edit post for news module (30)', '2024-12-18 05:28:28', '2024-12-18', 'news', NULL, ''),
(479, 1, 44, 'Activate posts from news module (44)', '2024-12-18 05:28:59', '2024-12-18', 'news', NULL, ''),
(480, 1, 44, 'Edit post for news module (44)', '2024-12-18 05:29:55', '2024-12-18', 'news', NULL, ''),
(481, 1, 44, 'Edit post for news module (44)', '2024-12-18 05:37:14', '2024-12-18', 'news', NULL, ''),
(482, 1, 44, 'Edit post for news module (44)', '2024-12-18 05:38:51', '2024-12-18', 'news', NULL, ''),
(483, 1, 43, 'Activate posts from news module (43)', '2024-12-18 05:39:23', '2024-12-18', 'news', NULL, ''),
(484, 1, 43, 'Edit post for news module (43)', '2024-12-18 05:40:33', '2024-12-18', 'news', NULL, ''),
(485, 1, 43, 'Edit post for news module (43)', '2024-12-18 05:46:41', '2024-12-18', 'news', NULL, ''),
(486, 1, 43, 'Edit post for news module (43)', '2024-12-18 05:47:12', '2024-12-18', 'news', NULL, ''),
(487, 1, 43, 'Edit post for news module (43)', '2024-12-18 05:47:38', '2024-12-18', 'news', NULL, ''),
(488, 1, 59, 'Edit post for services module (59)', '2024-12-18 05:59:00', '2024-12-18', 'services', NULL, ''),
(489, 1, 69, 'Add post for services module (69)', '2024-12-18 06:06:58', '2024-12-18', 'services', NULL, ''),
(490, 1, 70, 'Add post for services module (70)', '2024-12-18 06:09:47', '2024-12-18', 'services', NULL, ''),
(491, 1, 71, 'Add post for services module (71)', '2024-12-18 06:11:57', '2024-12-18', 'services', NULL, ''),
(492, 1, 59, 'Edit post for services module (59)', '2024-12-18 06:13:07', '2024-12-18', 'services', NULL, ''),
(493, 1, 59, 'Edit post for services module (59)', '2024-12-18 06:15:56', '2024-12-18', 'services', NULL, ''),
(494, 1, 69, 'Edit post for services module (69)', '2024-12-18 06:19:52', '2024-12-18', 'services', NULL, ''),
(495, 1, 71, 'Edit post for services module (71)', '2024-12-18 06:21:56', '2024-12-18', 'services', NULL, ''),
(496, 1, 48, 'Delete posts from teams module (48,47,46,45,34,33,32,31)', '2024-12-18 06:22:20', '2024-12-18', 'teams', NULL, ''),
(497, 1, 1, 'Edit category for projects module (1)', '2024-12-18 06:24:26', '2024-12-18', 'projects', NULL, ''),
(498, 1, 1, 'Edit category for projects module (1)', '2024-12-18 06:24:31', '2024-12-18', 'projects', NULL, ''),
(499, 1, 64, 'Edit post for projects module (64)', '2024-12-18 06:25:08', '2024-12-18', 'projects', NULL, ''),
(500, 1, 64, 'Edit post for projects module (64)', '2024-12-18 06:50:55', '2024-12-18', 'projects', NULL, ''),
(501, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 06:52:51', '2024-12-18', 'projects', NULL, ''),
(502, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 06:58:52', '2024-12-18', 'projects', NULL, ''),
(503, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 06:59:16', '2024-12-18', 'projects', NULL, ''),
(504, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 06:59:31', '2024-12-18', 'projects', NULL, ''),
(505, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 06:59:53', '2024-12-18', 'projects', NULL, ''),
(506, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:00:11', '2024-12-18', 'projects', NULL, ''),
(507, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:00:43', '2024-12-18', 'projects', NULL, ''),
(508, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:01:04', '2024-12-18', 'projects', NULL, ''),
(509, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:01:22', '2024-12-18', 'projects', NULL, ''),
(510, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:01:49', '2024-12-18', 'projects', NULL, ''),
(511, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:02:25', '2024-12-18', 'projects', NULL, ''),
(512, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:02:45', '2024-12-18', 'projects', NULL, ''),
(513, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:03:31', '2024-12-18', 'projects', NULL, ''),
(514, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:03:46', '2024-12-18', 'projects', NULL, ''),
(515, 1, 9, 'Delete gallery from projects module (9)', '2024-12-18 07:06:40', '2024-12-18', 'projects', NULL, ''),
(516, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:07:14', '2024-12-18', 'projects', NULL, ''),
(517, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:07:45', '2024-12-18', 'projects', NULL, ''),
(518, 1, 21, 'Delete gallery from projects module (21)', '2024-12-18 07:07:59', '2024-12-18', 'projects', NULL, ''),
(519, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:08:12', '2024-12-18', 'projects', NULL, ''),
(520, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:08:36', '2024-12-18', 'projects', NULL, ''),
(521, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:08:52', '2024-12-18', 'projects', NULL, ''),
(522, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:09:07', '2024-12-18', 'projects', NULL, ''),
(523, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:09:23', '2024-12-18', 'projects', NULL, ''),
(524, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:09:44', '2024-12-18', 'projects', NULL, ''),
(525, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:10:05', '2024-12-18', 'projects', NULL, ''),
(526, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:10:30', '2024-12-18', 'projects', NULL, ''),
(527, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:10:45', '2024-12-18', 'projects', NULL, ''),
(528, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:11:19', '2024-12-18', 'projects', NULL, ''),
(529, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:11:41', '2024-12-18', 'projects', NULL, ''),
(530, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:12:10', '2024-12-18', 'projects', NULL, ''),
(531, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:12:34', '2024-12-18', 'projects', NULL, ''),
(532, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:13:08', '2024-12-18', 'projects', NULL, ''),
(533, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:13:26', '2024-12-18', 'projects', NULL, ''),
(534, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:13:51', '2024-12-18', 'projects', NULL, ''),
(535, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:14:15', '2024-12-18', 'projects', NULL, ''),
(536, 1, 64, 'Add gallery for projects module (64)', '2024-12-18 07:15:18', '2024-12-18', 'projects', NULL, ''),
(537, 1, 41, 'Delete gallery from projects module (41)', '2024-12-18 07:18:20', '2024-12-18', 'projects', NULL, ''),
(538, 1, 64, 'Edit post for projects module (64)', '2024-12-18 07:18:57', '2024-12-18', 'projects', NULL, ''),
(539, 1, 50, 'Edit post for projects module (50)', '2024-12-18 07:22:41', '2024-12-18', 'projects', NULL, ''),
(540, 1, 64, 'Edit post for projects module (64)', '2024-12-18 07:24:23', '2024-12-18', 'projects', NULL, ''),
(541, 1, 64, 'Edit post for projects module (64)', '2024-12-18 07:29:55', '2024-12-18', 'projects', NULL, ''),
(542, 1, 50, 'Edit post for projects module (50)', '2024-12-18 07:32:00', '2024-12-18', 'projects', NULL, ''),
(543, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:32:26', '2024-12-18', 'projects', NULL, ''),
(544, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:32:44', '2024-12-18', 'projects', NULL, ''),
(545, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:33:38', '2024-12-18', 'projects', NULL, ''),
(546, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:33:56', '2024-12-18', 'projects', NULL, ''),
(547, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:34:17', '2024-12-18', 'projects', NULL, ''),
(548, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:34:34', '2024-12-18', 'projects', NULL, ''),
(549, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:34:49', '2024-12-18', 'projects', NULL, ''),
(550, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:35:28', '2024-12-18', 'projects', NULL, ''),
(551, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:35:46', '2024-12-18', 'projects', NULL, ''),
(552, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:36:02', '2024-12-18', 'projects', NULL, ''),
(553, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:36:44', '2024-12-18', 'projects', NULL, ''),
(554, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:37:08', '2024-12-18', 'projects', NULL, ''),
(555, 1, 51, 'Add gallery for projects module (51)', '2024-12-18 07:37:25', '2024-12-18', 'projects', NULL, ''),
(556, 1, 51, 'Edit post for projects module (51)', '2024-12-18 07:45:59', '2024-12-18', 'projects', NULL, ''),
(557, 1, 51, 'Edit post for projects module (51)', '2024-12-18 07:46:23', '2024-12-18', 'projects', NULL, ''),
(558, 1, 49, 'Edit post for projects module (49)', '2024-12-18 07:50:55', '2024-12-18', 'projects', NULL, ''),
(559, 1, 49, 'Edit post for projects module (49)', '2024-12-18 07:50:57', '2024-12-18', 'projects', NULL, ''),
(560, 1, 49, 'Edit post for projects module (49)', '2024-12-18 07:51:16', '2024-12-18', 'projects', NULL, ''),
(561, 1, 49, 'Edit post for projects module (49)', '2024-12-18 07:51:43', '2024-12-18', 'projects', NULL, ''),
(562, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 07:52:13', '2024-12-18', 'projects', NULL, ''),
(563, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 07:56:48', '2024-12-18', 'projects', NULL, ''),
(564, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 07:57:09', '2024-12-18', 'projects', NULL, ''),
(565, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:00:43', '2024-12-18', 'projects', NULL, ''),
(566, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:02:12', '2024-12-18', 'projects', NULL, ''),
(567, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:02:47', '2024-12-18', 'projects', NULL, ''),
(568, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:03:29', '2024-12-18', 'projects', NULL, ''),
(569, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:03:50', '2024-12-18', 'projects', NULL, ''),
(570, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:04:17', '2024-12-18', 'projects', NULL, ''),
(571, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:04:47', '2024-12-18', 'projects', NULL, ''),
(572, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:05:11', '2024-12-18', 'projects', NULL, ''),
(573, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:06:10', '2024-12-18', 'projects', NULL, ''),
(574, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:06:31', '2024-12-18', 'projects', NULL, ''),
(575, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:06:53', '2024-12-18', 'projects', NULL, ''),
(576, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:07:20', '2024-12-18', 'projects', NULL, ''),
(577, 1, 49, 'Add gallery for projects module (49)', '2024-12-18 08:07:38', '2024-12-18', 'projects', NULL, ''),
(578, 1, 20, 'Edit post for projects module (20)', '2024-12-18 08:10:42', '2024-12-18', 'projects', NULL, ''),
(579, 1, 1, 'Delete gallery from projects module (1)', '2024-12-18 08:11:04', '2024-12-18', 'projects', NULL, ''),
(580, 1, 3, 'Delete gallery from projects module (3)', '2024-12-18 08:12:48', '2024-12-18', 'projects', NULL, ''),
(581, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:21:13', '2024-12-18', 'projects', NULL, ''),
(582, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:38:09', '2024-12-18', 'projects', NULL, ''),
(583, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:38:25', '2024-12-18', 'projects', NULL, ''),
(584, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:38:57', '2024-12-18', 'projects', NULL, ''),
(585, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:39:12', '2024-12-18', 'projects', NULL, ''),
(586, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:39:44', '2024-12-18', 'projects', NULL, ''),
(587, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:39:58', '2024-12-18', 'projects', NULL, ''),
(588, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:40:25', '2024-12-18', 'projects', NULL, ''),
(589, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:40:57', '2024-12-18', 'projects', NULL, ''),
(590, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:41:29', '2024-12-18', 'projects', NULL, ''),
(591, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:42:06', '2024-12-18', 'projects', NULL, ''),
(592, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:42:40', '2024-12-18', 'projects', NULL, ''),
(593, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:42:58', '2024-12-18', 'projects', NULL, ''),
(594, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:43:36', '2024-12-18', 'projects', NULL, ''),
(595, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:43:59', '2024-12-18', 'projects', NULL, ''),
(596, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:44:31', '2024-12-18', 'projects', NULL, ''),
(597, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:44:52', '2024-12-18', 'projects', NULL, ''),
(598, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:45:17', '2024-12-18', 'projects', NULL, ''),
(599, 1, 20, 'Add gallery for projects module (20)', '2024-12-18 08:45:39', '2024-12-18', 'projects', NULL, ''),
(600, 1, 19, 'Edit post for projects module (19)', '2024-12-18 08:52:19', '2024-12-18', 'projects', NULL, ''),
(601, 1, 7, 'Delete gallery from projects module (7)', '2024-12-18 08:53:40', '2024-12-18', 'projects', NULL, ''),
(602, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:54:16', '2024-12-18', 'projects', NULL, ''),
(603, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:54:40', '2024-12-18', 'projects', NULL, ''),
(604, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:55:03', '2024-12-18', 'projects', NULL, ''),
(605, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:55:26', '2024-12-18', 'projects', NULL, ''),
(606, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:55:50', '2024-12-18', 'projects', NULL, ''),
(607, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:56:14', '2024-12-18', 'projects', NULL, ''),
(608, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:56:52', '2024-12-18', 'projects', NULL, ''),
(609, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:57:34', '2024-12-18', 'projects', NULL, ''),
(610, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:57:55', '2024-12-18', 'projects', NULL, ''),
(611, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:58:21', '2024-12-18', 'projects', NULL, ''),
(612, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:58:48', '2024-12-18', 'projects', NULL, ''),
(613, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:59:08', '2024-12-18', 'projects', NULL, ''),
(614, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 08:59:28', '2024-12-18', 'projects', NULL, ''),
(615, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:00:03', '2024-12-18', 'projects', NULL, ''),
(616, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:00:24', '2024-12-18', 'projects', NULL, ''),
(617, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:00:46', '2024-12-18', 'projects', NULL, ''),
(618, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:01:47', '2024-12-18', 'projects', NULL, ''),
(619, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:03:03', '2024-12-18', 'projects', NULL, ''),
(620, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:03:53', '2024-12-18', 'projects', NULL, ''),
(621, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:04:13', '2024-12-18', 'projects', NULL, ''),
(622, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:04:38', '2024-12-18', 'projects', NULL, ''),
(623, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:04:58', '2024-12-18', 'projects', NULL, ''),
(624, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:05:27', '2024-12-18', 'projects', NULL, ''),
(625, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:05:49', '2024-12-18', 'projects', NULL, ''),
(626, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:06:14', '2024-12-18', 'projects', NULL, ''),
(627, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:06:34', '2024-12-18', 'projects', NULL, ''),
(628, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:07:01', '2024-12-18', 'projects', NULL, ''),
(629, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:07:21', '2024-12-18', 'projects', NULL, ''),
(630, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:07:50', '2024-12-18', 'projects', NULL, ''),
(631, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:10:37', '2024-12-18', 'projects', NULL, ''),
(632, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:11:02', '2024-12-18', 'projects', NULL, ''),
(633, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:11:23', '2024-12-18', 'projects', NULL, ''),
(634, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:15:42', '2024-12-18', 'projects', NULL, ''),
(635, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:16:08', '2024-12-18', 'projects', NULL, ''),
(636, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:16:29', '2024-12-18', 'projects', NULL, ''),
(637, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:16:50', '2024-12-18', 'projects', NULL, ''),
(638, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:17:11', '2024-12-18', 'projects', NULL, ''),
(639, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:17:32', '2024-12-18', 'projects', NULL, ''),
(640, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:19:51', '2024-12-18', 'projects', NULL, ''),
(641, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:20:21', '2024-12-18', 'projects', NULL, ''),
(642, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:20:40', '2024-12-18', 'projects', NULL, ''),
(643, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:21:01', '2024-12-18', 'projects', NULL, ''),
(644, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:21:30', '2024-12-18', 'projects', NULL, ''),
(645, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:22:21', '2024-12-18', 'projects', NULL, ''),
(646, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:22:50', '2024-12-18', 'projects', NULL, ''),
(647, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:23:11', '2024-12-18', 'projects', NULL, ''),
(648, 1, 19, 'Add gallery for projects module (19)', '2024-12-18 09:23:49', '2024-12-18', 'projects', NULL, ''),
(649, 1, 18, 'Edit post for projects module (18)', '2024-12-18 09:24:52', '2024-12-18', 'projects', NULL, ''),
(650, 1, 18, 'Edit post for projects module (18)', '2024-12-18 09:26:45', '2024-12-18', 'projects', NULL, ''),
(651, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:27:14', '2024-12-18', 'projects', NULL, ''),
(652, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:27:32', '2024-12-18', 'projects', NULL, ''),
(653, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:27:47', '2024-12-18', 'projects', NULL, ''),
(654, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:29:30', '2024-12-18', 'projects', NULL, ''),
(655, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:29:59', '2024-12-18', 'projects', NULL, ''),
(656, 1, 18, 'Add gallery for projects module (18)', '2024-12-18 09:30:18', '2024-12-18', 'projects', NULL, ''),
(657, 1, 17, 'Delete posts from projects module (17,16,15)', '2024-12-18 09:30:38', '2024-12-18', 'projects', NULL, ''),
(658, 1, 58, 'Delete posts from projects module (58)', '2024-12-18 09:30:52', '2024-12-18', 'projects', NULL, ''),
(659, 1, 7, 'Add category for projects module (7)', '2024-12-18 09:32:26', '2024-12-18', 'projects', NULL, ''),
(660, 1, 2, 'Edit category for projects module (2)', '2024-12-18 09:45:28', '2024-12-18', 'projects', NULL, ''),
(661, 1, 2, 'Edit category for projects module (2)', '2024-12-18 09:47:17', '2024-12-18', 'projects', NULL, ''),
(662, 1, 2, 'Edit category for projects module (2)', '2024-12-18 09:47:53', '2024-12-18', 'projects', NULL, ''),
(663, 1, 3, 'Edit category for projects module (3)', '2024-12-18 09:49:26', '2024-12-18', 'projects', NULL, ''),
(664, 1, 3, 'Edit category for projects module (3)', '2024-12-18 09:50:18', '2024-12-18', 'projects', NULL, ''),
(665, 1, 72, 'Add post for projects module (72)', '2024-12-18 09:54:22', '2024-12-18', 'projects', NULL, ''),
(666, 1, 72, 'Edit post for projects module (72)', '2024-12-18 09:56:02', '2024-12-18', 'projects', NULL, ''),
(667, 1, 72, 'Add gallery for projects module (72)', '2024-12-18 09:56:38', '2024-12-18', 'projects', NULL, ''),
(668, 1, 72, 'Add gallery for projects module (72)', '2024-12-18 09:56:56', '2024-12-18', 'projects', NULL, ''),
(669, 1, 72, 'Add gallery for projects module (72)', '2024-12-18 09:57:16', '2024-12-18', 'projects', NULL, ''),
(670, 1, 72, 'Add gallery for projects module (72)', '2024-12-18 10:00:26', '2024-12-18', 'projects', NULL, ''),
(671, 1, 72, 'Add gallery for projects module (72)', '2024-12-18 10:00:54', '2024-12-18', 'projects', NULL, ''),
(672, 1, 73, 'Add post for projects module (73)', '2024-12-18 10:03:50', '2024-12-18', 'projects', NULL, ''),
(673, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:04:38', '2024-12-18', 'projects', NULL, ''),
(674, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:05:00', '2024-12-18', 'projects', NULL, ''),
(675, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:07:17', '2024-12-18', 'projects', NULL, ''),
(676, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:07:40', '2024-12-18', 'projects', NULL, ''),
(677, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:08:06', '2024-12-18', 'projects', NULL, ''),
(678, 1, 73, 'Add gallery for projects module (73)', '2024-12-18 10:08:34', '2024-12-18', 'projects', NULL, ''),
(679, 1, 74, 'Add post for projects module (74)', '2024-12-18 10:11:41', '2024-12-18', 'projects', NULL, ''),
(680, 1, 74, 'Edit post for projects module (74)', '2024-12-18 10:12:46', '2024-12-18', 'projects', NULL, ''),
(681, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:13:47', '2024-12-18', 'projects', NULL, ''),
(682, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:14:23', '2024-12-18', 'projects', NULL, ''),
(683, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:14:39', '2024-12-18', 'projects', NULL, ''),
(684, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:14:58', '2024-12-18', 'projects', NULL, ''),
(685, 1, 156, 'Delete gallery from projects module (156)', '2024-12-18 10:15:07', '2024-12-18', 'projects', NULL, ''),
(686, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:15:20', '2024-12-18', 'projects', NULL, ''),
(687, 1, 157, 'Delete gallery from projects module (157)', '2024-12-18 10:15:28', '2024-12-18', 'projects', NULL, ''),
(688, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:15:59', '2024-12-18', 'projects', NULL, ''),
(689, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:16:14', '2024-12-18', 'projects', NULL, ''),
(690, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:16:30', '2024-12-18', 'projects', NULL, ''),
(691, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:17:14', '2024-12-18', 'projects', NULL, ''),
(692, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:17:35', '2024-12-18', 'projects', NULL, ''),
(693, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:18:21', '2024-12-18', 'projects', NULL, ''),
(694, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:18:40', '2024-12-18', 'projects', NULL, ''),
(695, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:19:15', '2024-12-18', 'projects', NULL, ''),
(696, 1, 74, 'Add gallery for projects module (74)', '2024-12-18 10:20:19', '2024-12-18', 'projects', NULL, ''),
(697, 1, 74, 'Edit post for projects module (74)', '2024-12-18 10:24:46', '2024-12-18', 'projects', NULL, ''),
(698, 1, 2, 'Edit category for projects module (2)', '2024-12-18 10:27:29', '2024-12-18', 'projects', NULL, ''),
(699, 1, 1, 'Edit post for pages module (1)', '2024-12-18 10:33:42', '2024-12-18', 'pages', NULL, ''),
(700, 1, 1, 'Edit post for pages module (1)', '2024-12-18 10:35:24', '2024-12-18', 'pages', NULL, ''),
(701, 1, 30, 'Make post at HOME is yes for news module (30)', '2024-12-18 11:06:22', '2024-12-18', 'news', NULL, ''),
(702, 1, 30, 'Make post at HOME is no for news module (30)', '2024-12-18 11:06:35', '2024-12-18', 'news', NULL, ''),
(703, 1, 68, 'Deactivate posts from video module (68,67,66,65,62,61,40,39,38,37)', '2024-12-18 11:08:09', '2024-12-18', 'video', NULL, ''),
(704, 1, 14, 'Edit post for pages module (14)', '2024-12-18 11:10:33', '2024-12-18', 'pages', NULL, ''),
(705, 1, 4, 'Delete category from projects module (4)', '2024-12-18 11:27:51', '2024-12-18', 'projects', NULL, ''),
(706, 1, 5, 'Delete category from projects module (5)', '2024-12-18 11:49:01', '2024-12-18', 'projects', NULL, ''),
(707, 1, 6, 'Delete category from projects module (6)', '2024-12-18 11:49:07', '2024-12-18', 'projects', NULL, ''),
(708, 1, 7, 'Delete category from projects module (7)', '2024-12-18 11:49:11', '2024-12-18', 'projects', NULL, ''),
(709, 1, 1, 'Edit Settings  ( 1 )', '2024-12-18 12:05:42', '2024-12-18', 'settings', NULL, ''),
(710, 1, 1, 'Edit post for pages module (1)', '2024-12-18 13:11:39', '2024-12-18', 'pages', NULL, ''),
(711, 1, 1, 'Edit post for pages module (1)', '2024-12-18 13:53:57', '2024-12-18', 'pages', NULL, ''),
(712, 1, 1, 'Edit post for pages module (1)', '2024-12-19 07:44:11', '2024-12-19', 'pages', NULL, ''),
(713, 1, 1, 'Edit Settings  ( 1 )', '2024-12-19 09:19:47', '2024-12-19', 'settings', NULL, ''),
(714, 1, 1, 'Edit Settings  ( 1 )', '2024-12-19 09:37:34', '2024-12-19', 'settings', NULL, ''),
(715, 1, 1, 'Edit admin user id (1)', '2024-12-25 12:09:00', '2024-12-25', 'users', NULL, ''),
(716, 1, 241, 'Edit post for news module (241)', '2025-01-01 09:28:33', '2025-01-01', 'news', NULL, ''),
(717, 1, 241, 'Edit post for news module (241)', '2025-01-01 09:28:43', '2025-01-01', 'news', NULL, ''),
(718, 1, 241, 'Edit post for news module (241)', '2025-01-01 09:32:00', '2025-01-01', 'news', NULL, ''),
(719, 1, 155, 'Edit post for team module (155)', '2025-01-01 10:14:34', '2025-01-01', 'team', NULL, ''),
(720, 1, 156, 'Edit post for team module (156)', '2025-01-01 10:15:14', '2025-01-01', 'team', NULL, ''),
(721, 1, 154, 'Edit post for team module (154)', '2025-01-01 10:21:01', '2025-01-01', 'team', NULL, ''),
(722, 1, 248, 'Add post for services module (248)', '2025-02-17 10:02:59', '2025-02-17', 'services', NULL, ''),
(723, 1, 249, 'Add post for partners module (249)', '2025-02-19 11:28:09', '2025-02-19', 'partners', NULL, ''),
(724, 1, 249, 'Delete post from partners module (249)', '2025-02-19 11:28:47', '2025-02-19', 'partners', NULL, ''),
(725, 1, 250, 'Add post for partners module (250)', '2025-02-23 08:03:50', '2025-02-23', 'partners', NULL, ''),
(726, 1, 250, 'Add gallery for products module (250)', '2025-02-24 07:41:01', '2025-02-24', 'products', NULL, ''),
(727, 1, 251, 'Add post for About module (251)', '2025-03-19 11:53:11', '2025-03-19', 'About', NULL, ''),
(728, 1, 252, 'Add post for About module (252)', '2025-03-19 11:59:17', '2025-03-19', 'About', NULL, ''),
(729, 1, 253, 'Add post for About module (253)', '2025-03-19 12:03:08', '2025-03-19', 'About', NULL, ''),
(730, 1, 254, 'Add post for About module (254)', '2025-03-19 12:05:50', '2025-03-19', 'About', NULL, ''),
(731, 1, 255, 'Add post for About module (255)', '2025-03-19 12:09:09', '2025-03-19', 'About', NULL, ''),
(732, 1, 254, 'Edit post for About module (254)', '2025-03-20 08:35:19', '2025-03-20', 'About', NULL, ''),
(733, 1, 241, 'Delete posts from News module (241,240,239,237,236,235,234,233,232,231)', '2025-03-20 09:24:49', '2025-03-20', 'News', NULL, ''),
(734, 1, 230, 'Delete posts from News module (230,229,228,224,217,212,226,146,145,88)', '2025-03-20 09:25:07', '2025-03-20', 'News', NULL, ''),
(735, 1, 87, 'Delete posts from News module (87,86,85)', '2025-03-20 09:25:16', '2025-03-20', 'News', NULL, ''),
(736, 1, 256, 'Add post for News module (256)', '2025-03-20 09:29:26', '2025-03-20', 'News', NULL, ''),
(737, 1, 257, 'Add post for News module (257)', '2025-03-20 09:47:47', '2025-03-20', 'News', NULL, ''),
(738, 1, 256, 'Edit post for News module (256)', '2025-03-20 09:48:17', '2025-03-20', 'News', NULL, ''),
(739, 1, 256, 'Edit post for News module (256)', '2025-03-20 09:52:52', '2025-03-20', 'News', NULL, ''),
(740, 1, 258, 'Add post for News module (258)', '2025-03-20 10:33:46', '2025-03-20', 'News', NULL, ''),
(741, 1, 259, 'Add post for News module (259)', '2025-03-20 10:36:03', '2025-03-20', 'News', NULL, ''),
(742, 1, 260, 'Add post for News module (260)', '2025-03-20 10:38:56', '2025-03-20', 'News', NULL, ''),
(743, 1, 261, 'Add post for News module (261)', '2025-03-20 10:40:14', '2025-03-20', 'News', NULL, ''),
(744, 1, 262, 'Add post for News module (262)', '2025-03-20 10:41:48', '2025-03-20', 'News', NULL, ''),
(745, 1, 263, 'Add post for Album module (263)', '2025-03-20 10:57:39', '2025-03-20', 'Album', NULL, ''),
(746, 1, 264, 'Add post for Album module (264)', '2025-03-20 10:58:27', '2025-03-20', 'Album', NULL, ''),
(747, 1, 265, 'Add post for Album module (265)', '2025-03-20 10:59:05', '2025-03-20', 'Album', NULL, ''),
(748, 1, 266, 'Add post for Album module (266)', '2025-03-20 11:01:29', '2025-03-20', 'Album', NULL, ''),
(749, 1, 267, 'Add post for Album module (267)', '2025-03-20 11:01:54', '2025-03-20', 'Album', NULL, ''),
(750, 1, 268, 'Add post for Album module (268)', '2025-03-20 11:02:12', '2025-03-20', 'Album', NULL, ''),
(751, 1, 269, 'Add post for Album module (269)', '2025-03-20 11:02:36', '2025-03-20', 'Album', NULL, ''),
(752, 1, 270, 'Add post for Album module (270)', '2025-03-20 11:02:52', '2025-03-20', 'Album', NULL, ''),
(753, 1, 271, 'Add post for Album module (271)', '2025-03-20 11:03:14', '2025-03-20', 'Album', NULL, ''),
(754, 1, 272, 'Add post for Teaching staff module (272)', '2025-03-23 09:15:19', '2025-03-23', 'Teaching staff', NULL, ''),
(755, 1, 272, 'Edit post for Teaching staff module (272)', '2025-03-23 10:35:15', '2025-03-23', 'Teaching staff', NULL, ''),
(756, 1, 273, 'Add post for Teaching staff module (273)', '2025-03-23 10:36:56', '2025-03-23', 'Teaching staff', NULL, ''),
(757, 1, 1, 'Edit Settings  ( 1 )', '2025-03-24 07:44:46', '2025-03-24', 'settings', NULL, ''),
(758, 1, 274, 'Add post for Video module (274)', '2025-03-24 08:51:52', '2025-03-24', 'Video', NULL, ''),
(759, 1, 263, 'Add gallery for Album module (263)', '2025-03-24 08:57:44', '2025-03-24', 'Album', NULL, ''),
(760, 1, 263, 'Add gallery for Album module (263)', '2025-03-24 08:57:52', '2025-03-24', 'Album', NULL, ''),
(761, 1, 263, 'Add gallery for Album module (263)', '2025-03-24 08:58:04', '2025-03-24', 'Album', NULL, ''),
(762, 1, 275, 'Add post for Video module (275)', '2025-03-24 09:04:21', '2025-03-24', 'Video', NULL, ''),
(763, 1, 213, 'Delete posts from Video module (213,221,222,148,111)', '2025-03-24 09:04:44', '2025-03-24', 'Video', NULL, ''),
(764, 1, 276, 'Add post for Video module (276)', '2025-03-24 09:06:34', '2025-03-24', 'Video', NULL, ''),
(765, 1, 277, 'Add post for Video module (277)', '2025-03-24 09:07:09', '2025-03-24', 'Video', NULL, ''),
(766, 1, 278, 'Add post for Video module (278)', '2025-03-24 09:08:15', '2025-03-24', 'Video', NULL, ''),
(767, 1, 279, 'Add post for Video module (279)', '2025-03-24 09:08:53', '2025-03-24', 'Video', NULL, ''),
(768, 1, 280, 'Add post for Jops module (280)', '2025-03-24 12:06:22', '2025-03-24', 'Jops', NULL, ''),
(769, 1, 281, 'Add post for Jops module (281)', '2025-03-24 12:07:59', '2025-03-24', 'Jops', NULL, ''),
(770, 1, 282, 'Add post for Jops module (282)', '2025-03-24 12:08:48', '2025-03-24', 'Jops', NULL, ''),
(771, 1, 283, 'Add post for Jops module (283)', '2025-03-24 12:09:21', '2025-03-24', 'Jops', NULL, ''),
(772, 1, 284, 'Add post for Jops module (284)', '2025-03-24 12:09:52', '2025-03-24', 'Jops', NULL, ''),
(773, 1, 285, 'Add post for Jops module (285)', '2025-03-24 12:10:32', '2025-03-24', 'Jops', NULL, ''),
(774, 1, 286, 'Add post for Jops module (286)', '2025-03-25 07:31:51', '2025-03-25', 'Jops', NULL, ''),
(775, 1, 286, 'Edit post for Jops module (286)', '2025-03-25 07:32:06', '2025-03-25', 'Jops', NULL, ''),
(776, 1, 285, 'Edit post for Jops module (285)', '2025-03-25 07:32:53', '2025-03-25', 'Jops', NULL, ''),
(777, 1, 285, 'Edit post for Jops module (285)', '2025-03-25 07:40:24', '2025-03-25', 'Jops', NULL, ''),
(778, 1, 285, 'Edit post for Jops module (285)', '2025-03-25 08:23:06', '2025-03-25', 'Jops', NULL, ''),
(779, 1, 286, 'Edit post for Jops module (286)', '2025-03-25 08:30:10', '2025-03-25', 'Jops', NULL, ''),
(780, 1, 1, 'Edit Settings  ( 1 )', '2025-03-25 09:09:35', '2025-03-25', 'settings', NULL, ''),
(781, 1, 287, 'Add post for Workshops module (287)', '2025-03-27 12:39:42', '2025-03-27', 'Workshops', NULL, ''),
(782, 1, 288, 'Add post for Workshops module (288)', '2025-04-06 10:42:45', '2025-04-06', 'Workshops', NULL, ''),
(783, 1, 288, 'Add gallery for Workshops module (288)', '2025-04-07 08:31:58', '2025-04-07', 'Workshops', NULL, ''),
(784, 1, 1, 'Edit Settings  ( 1 )', '2025-04-08 09:29:03', '2025-04-08', 'settings', NULL, ''),
(785, 1, 286, 'Edit post for Jops module (286)', '2025-04-08 09:29:57', '2025-04-08', 'Jops', NULL, ''),
(786, 1, 285, 'Edit post for Jops module (285)', '2025-04-08 09:30:35', '2025-04-08', 'Jops', NULL, ''),
(787, 1, 284, 'Edit post for Jops module (284)', '2025-04-08 09:31:50', '2025-04-08', 'Jops', NULL, ''),
(788, 1, 280, 'Edit post for Jops module (280)', '2025-04-08 09:32:17', '2025-04-08', 'Jops', NULL, ''),
(789, 1, 281, 'Edit post for Jops module (281)', '2025-04-08 09:32:42', '2025-04-08', 'Jops', NULL, ''),
(790, 1, 282, 'Edit post for Jops module (282)', '2025-04-08 09:33:02', '2025-04-08', 'Jops', NULL, ''),
(791, 1, 283, 'Edit post for Jops module (283)', '2025-04-08 09:33:22', '2025-04-08', 'Jops', NULL, ''),
(792, 1, 286, 'Edit post for Jops module (286)', '2025-04-08 09:35:53', '2025-04-08', 'Jops', NULL, ''),
(793, 1, 289, 'Add post for Student life module (289)', '2025-04-09 08:31:27', '2025-04-09', 'Student life', NULL, ''),
(794, 1, 290, 'Add post for Student life module (290)', '2025-04-09 08:32:23', '2025-04-09', 'Student life', NULL, ''),
(795, 1, 291, 'Add post for Student life module (291)', '2025-04-09 08:33:55', '2025-04-09', 'Student life', NULL, ''),
(796, 1, 292, 'Add post for Student life module (292)', '2025-04-09 08:34:41', '2025-04-09', 'Student life', NULL, ''),
(797, 1, 293, 'Add post for StudentLife module (293)', '2025-04-09 08:36:33', '2025-04-09', 'StudentLife', NULL, ''),
(798, 1, 294, 'Add post for StudentLife module (294)', '2025-04-09 08:37:08', '2025-04-09', 'StudentLife', NULL, ''),
(799, 1, 295, 'Add post for Student life module (295)', '2025-04-09 08:38:33', '2025-04-09', 'Student life', NULL, ''),
(800, 1, 296, 'Add post for StudentLife module (296)', '2025-04-09 08:46:19', '2025-04-09', 'StudentLife', NULL, ''),
(801, 1, 293, 'Edit post for StudentLife module (293)', '2025-04-09 08:47:18', '2025-04-09', 'StudentLife', NULL, ''),
(802, 1, 297, 'Add post for StudentLife module (297)', '2025-04-09 08:48:59', '2025-04-09', 'StudentLife', NULL, ''),
(803, 1, 298, 'Add post for Programs module (298)', '2025-04-09 10:43:54', '2025-04-09', 'Programs', NULL, ''),
(804, 1, 298, 'Edit post for Programs module (298)', '2025-04-09 11:15:29', '2025-04-09', 'Programs', NULL, ''),
(805, 1, 299, 'Add post for Programs module (299)', '2025-04-09 11:20:27', '2025-04-09', 'Programs', NULL, ''),
(806, 1, 300, 'Add post for Programs module (300)', '2025-04-09 11:21:54', '2025-04-09', 'Programs', NULL, ''),
(807, 1, 301, 'Add post for Programs module (301)', '2025-04-09 11:24:23', '2025-04-09', 'Programs', NULL, ''),
(808, 1, 302, 'Add post for Programs module (302)', '2025-04-09 11:27:01', '2025-04-09', 'Programs', NULL, ''),
(809, 1, 303, 'Add post for Programs module (303)', '2025-04-09 11:30:40', '2025-04-09', 'Programs', NULL, ''),
(810, 1, 304, 'Add post for Programs module (304)', '2025-04-09 11:34:51', '2025-04-09', 'Programs', NULL, ''),
(811, 1, 303, 'Edit post for Programs module (303)', '2025-04-09 11:37:59', '2025-04-09', 'Programs', NULL, ''),
(812, 1, 304, 'Edit post for Programs module (304)', '2025-04-09 11:38:26', '2025-04-09', 'Programs', NULL, ''),
(813, 1, 303, 'Edit post for Programs module (303)', '2025-04-09 11:39:33', '2025-04-09', 'Programs', NULL, ''),
(814, 1, 297, 'Edit post for StudentLife module (297)', '2025-04-09 15:43:45', '2025-04-09', 'StudentLife', NULL, ''),
(815, 1, 296, 'Edit post for StudentLife module (296)', '2025-04-09 15:45:20', '2025-04-09', 'StudentLife', NULL, ''),
(816, 1, 296, 'Edit post for StudentLife module (296)', '2025-04-09 15:47:38', '2025-04-09', 'StudentLife', NULL, ''),
(817, 1, 294, 'Edit post for StudentLife module (294)', '2025-04-09 15:48:25', '2025-04-09', 'StudentLife', NULL, ''),
(818, 1, 293, 'Edit post for StudentLife module (293)', '2025-04-09 15:48:53', '2025-04-09', 'StudentLife', NULL, ''),
(819, 1, 300, 'Edit post for Programs module (300)', '2025-04-10 08:14:51', '2025-04-10', 'Programs', NULL, ''),
(820, 1, 300, 'Edit post for Programs module (300)', '2025-04-10 08:15:27', '2025-04-10', 'Programs', NULL, ''),
(821, 1, 300, 'Edit post for Programs module (300)', '2025-04-10 08:29:08', '2025-04-10', 'Programs', NULL, ''),
(822, 1, 298, 'Edit post for Programs module (298)', '2025-04-10 08:36:47', '2025-04-10', 'Programs', NULL, ''),
(823, 1, 298, 'Edit post for Programs module (298)', '2025-04-10 08:38:34', '2025-04-10', 'Programs', NULL, ''),
(824, 1, 298, 'Edit post for Programs module (298)', '2025-04-10 08:40:19', '2025-04-10', 'Programs', NULL, ''),
(825, 1, 298, 'Edit post for Programs module (298)', '2025-04-10 08:42:13', '2025-04-10', 'Programs', NULL, ''),
(826, 1, 300, 'Edit post for Programs module (300)', '2025-04-10 08:50:14', '2025-04-10', 'Programs', NULL, ''),
(827, 1, 298, 'Edit post for Programs module (298)', '2025-04-10 08:53:20', '2025-04-10', 'Programs', NULL, ''),
(828, 1, 299, 'Edit post for Programs module (299)', '2025-04-10 08:53:24', '2025-04-10', 'Programs', NULL, ''),
(829, 1, 299, 'Edit post for Programs module (299)', '2025-04-10 08:54:14', '2025-04-10', 'Programs', NULL, ''),
(830, 1, 302, 'Edit post for Programs module (302)', '2025-04-10 09:01:39', '2025-04-10', 'Programs', NULL, ''),
(831, 1, 301, 'Edit post for Programs module (301)', '2025-04-10 09:03:15', '2025-04-10', 'Programs', NULL, ''),
(832, 1, 303, 'Edit post for Programs module (303)', '2025-04-10 09:04:52', '2025-04-10', 'Programs', NULL, ''),
(833, 1, 304, 'Edit post for Programs module (304)', '2025-04-10 09:05:39', '2025-04-10', 'Programs', NULL, ''),
(834, 1, 304, 'Edit post for Programs module (304)', '2025-04-10 09:06:28', '2025-04-10', 'Programs', NULL, ''),
(835, 1, 298, 'Edit post for Programs module (298)', '2025-04-17 12:49:06', '2025-04-17', 'Programs', NULL, ''),
(836, 1, 252, 'Edit post for About module (252)', '2025-04-22 12:07:52', '2025-04-22', 'About', NULL, ''),
(837, 1, 252, 'Edit post for About module (252)', '2025-04-22 12:10:41', '2025-04-22', 'About', NULL, ''),
(838, 1, 254, 'Edit post for About module (254)', '2025-04-22 12:17:12', '2025-04-22', 'About', NULL, ''),
(839, 1, 262, 'Edit post for News module (262)', '2025-04-22 13:29:00', '2025-04-22', 'News', NULL, ''),
(840, 1, 261, 'Edit post for News module (261)', '2025-04-22 13:29:40', '2025-04-22', 'News', NULL, ''),
(841, 1, 260, 'Edit post for News module (260)', '2025-04-22 13:30:03', '2025-04-22', 'News', NULL, ''),
(842, 1, 259, 'Edit post for News module (259)', '2025-04-22 13:32:29', '2025-04-22', 'News', NULL, ''),
(843, 1, 258, 'Edit post for News module (258)', '2025-04-22 13:33:07', '2025-04-22', 'News', NULL, ''),
(844, 1, 257, 'Edit post for News module (257)', '2025-04-22 13:34:01', '2025-04-22', 'News', NULL, ''),
(845, 1, 256, 'Edit post for News module (256)', '2025-04-22 13:34:23', '2025-04-22', 'News', NULL, ''),
(846, 1, 254, 'Edit post for About module (254)', '2025-04-23 10:10:15', '2025-04-23', 'About', NULL, ''),
(847, 1, 254, 'Edit post for About module (254)', '2025-04-23 10:12:28', '2025-04-23', 'About', NULL, ''),
(848, 1, 307, 'Edit post for pages module (307)', '2025-04-23 10:20:14', '2025-04-23', 'pages', NULL, ''),
(849, 1, 255, 'Edit post for About module (255)', '2025-04-23 12:07:43', '2025-04-23', 'About', NULL, ''),
(850, 1, 253, 'Edit post for About module (253)', '2025-04-23 12:08:09', '2025-04-23', 'About', NULL, ''),
(851, 1, 298, 'Edit post for Programs module (298)', '2025-05-05 10:08:29', '2025-05-05', 'Programs', NULL, ''),
(852, 1, 298, 'Edit post for Programs module (298)', '2025-05-05 10:14:11', '2025-05-05', 'Programs', NULL, ''),
(853, 1, 255, 'Edit post for About module (255)', '2025-05-05 10:19:09', '2025-05-05', 'About', NULL, ''),
(854, 1, 251, 'Edit post for About module (251)', '2025-05-05 10:21:56', '2025-05-05', 'About', NULL, ''),
(855, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:22:57', '2025-05-05', 'About', NULL, ''),
(856, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 10:23:20', '2025-05-05', 'Programs', NULL, ''),
(857, 1, 253, 'Edit post for About module (253)', '2025-05-05 10:23:44', '2025-05-05', 'About', NULL, ''),
(858, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 10:24:27', '2025-05-05', 'Programs', NULL, ''),
(859, 1, 254, 'Edit post for About module (254)', '2025-05-05 10:24:30', '2025-05-05', 'About', NULL, ''),
(860, 1, 251, 'Edit post for About module (251)', '2025-05-05 10:30:07', '2025-05-05', 'About', NULL, ''),
(861, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:32:19', '2025-05-05', 'About', NULL, ''),
(862, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:35:32', '2025-05-05', 'About', NULL, ''),
(863, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:36:52', '2025-05-05', 'About', NULL, ''),
(864, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:38:06', '2025-05-05', 'About', NULL, ''),
(865, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 10:38:23', '2025-05-05', 'Programs', NULL, ''),
(866, 1, 251, 'Edit post for About module (251)', '2025-05-05 10:39:07', '2025-05-05', 'About', NULL, ''),
(867, 1, 254, 'Edit post for About module (254)', '2025-05-05 10:42:00', '2025-05-05', 'About', NULL, ''),
(868, 1, 253, 'Edit post for About module (253)', '2025-05-05 10:42:52', '2025-05-05', 'About', NULL, ''),
(869, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 10:43:27', '2025-05-05', 'Programs', NULL, ''),
(870, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:47:03', '2025-05-05', 'About', NULL, ''),
(871, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:47:33', '2025-05-05', 'About', NULL, ''),
(872, 1, 252, 'Edit post for About module (252)', '2025-05-05 10:48:20', '2025-05-05', 'About', NULL, ''),
(873, 1, 255, 'Edit post for About module (255)', '2025-05-05 10:54:26', '2025-05-05', 'About', NULL, ''),
(874, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 10:58:04', '2025-05-05', 'Programs', NULL, ''),
(875, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 11:00:16', '2025-05-05', 'Programs', NULL, ''),
(876, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 11:01:23', '2025-05-05', 'Programs', NULL, ''),
(877, 1, 255, 'Edit post for About module (255)', '2025-05-05 11:03:16', '2025-05-05', 'About', NULL, ''),
(878, 1, 255, 'Edit post for About module (255)', '2025-05-05 11:03:34', '2025-05-05', 'About', NULL, ''),
(879, 1, 255, 'Edit post for About module (255)', '2025-05-05 11:04:06', '2025-05-05', 'About', NULL, ''),
(880, 1, 255, 'Edit post for About module (255)', '2025-05-05 11:04:52', '2025-05-05', 'About', NULL, ''),
(881, 1, 299, 'Edit post for Programs module (299)', '2025-05-05 11:05:14', '2025-05-05', 'Programs', NULL, ''),
(882, 1, 253, 'Edit post for About module (253)', '2025-05-05 11:05:24', '2025-05-05', 'About', NULL, ''),
(883, 1, 254, 'Edit post for About module (254)', '2025-05-05 11:07:08', '2025-05-05', 'About', NULL, ''),
(884, 1, 254, 'Edit post for About module (254)', '2025-05-05 11:07:35', '2025-05-05', 'About', NULL, ''),
(885, 1, 304, 'Edit post for Programs module (304)', '2025-05-05 11:10:02', '2025-05-05', 'Programs', NULL, ''),
(886, 1, 303, 'Edit post for Programs module (303)', '2025-05-05 11:10:05', '2025-05-05', 'Programs', NULL, ''),
(887, 1, 251, 'Edit post for About module (251)', '2025-05-05 11:10:05', '2025-05-05', 'About', NULL, ''),
(888, 1, 301, 'Edit post for Programs module (301)', '2025-05-05 11:10:09', '2025-05-05', 'Programs', NULL, ''),
(889, 1, 302, 'Edit post for Programs module (302)', '2025-05-05 11:10:15', '2025-05-05', 'Programs', NULL, ''),
(890, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 11:11:05', '2025-05-05', 'Programs', NULL, ''),
(891, 1, 298, 'Edit post for Programs module (298)', '2025-05-05 11:17:21', '2025-05-05', 'Programs', NULL, ''),
(892, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 11:17:37', '2025-05-05', 'Programs', NULL, ''),
(893, 1, 299, 'Edit post for Programs module (299)', '2025-05-05 11:18:07', '2025-05-05', 'Programs', NULL, ''),
(894, 1, 302, 'Edit post for Programs module (302)', '2025-05-05 11:19:05', '2025-05-05', 'Programs', NULL, ''),
(895, 1, 298, 'Edit post for Programs module (298)', '2025-05-05 11:19:13', '2025-05-05', 'Programs', NULL, ''),
(896, 1, 300, 'Edit post for Programs module (300)', '2025-05-05 11:19:34', '2025-05-05', 'Programs', NULL, ''),
(897, 1, 299, 'Edit post for Programs module (299)', '2025-05-05 11:20:03', '2025-05-05', 'Programs', NULL, ''),
(898, 1, 301, 'Edit post for Programs module (301)', '2025-05-05 11:20:24', '2025-05-05', 'Programs', NULL, ''),
(899, 1, 304, 'Edit post for Programs module (304)', '2025-05-05 11:21:24', '2025-05-05', 'Programs', NULL, ''),
(900, 1, 303, 'Edit post for Programs module (303)', '2025-05-05 11:21:44', '2025-05-05', 'Programs', NULL, ''),
(901, 1, 307, 'Edit post for pages module (307)', '2025-05-05 13:08:15', '2025-05-05', 'pages', NULL, ''),
(902, 1, 306, 'Edit post for pages module (306)', '2025-05-05 13:08:46', '2025-05-05', 'pages', NULL, ''),
(903, 1, 305, 'Edit post for pages module (305)', '2025-05-05 13:09:12', '2025-05-05', 'pages', NULL, ''),
(904, 1, 308, 'Add post for Video module (308)', '2025-05-06 06:08:44', '2025-05-06', 'Video', NULL, ''),
(905, 1, 1, 'Edit Settings  ( 1 )', '2025-05-06 10:13:21', '2025-05-06', 'settings', NULL, ''),
(906, 1, 251, 'Edit post for About module (251)', '2025-05-06 10:24:29', '2025-05-06', 'About', NULL, ''),
(907, 1, 253, 'Edit post for About module (253)', '2025-05-06 10:27:20', '2025-05-06', 'About', NULL, ''),
(908, 1, 253, 'Edit post for About module (253)', '2025-05-06 10:28:22', '2025-05-06', 'About', NULL, ''),
(909, 1, 253, 'Edit post for About module (253)', '2025-05-06 10:29:43', '2025-05-06', 'About', NULL, ''),
(910, 1, 253, 'Edit post for About module (253)', '2025-05-06 10:30:02', '2025-05-06', 'About', NULL, ''),
(911, 1, 253, 'Edit post for About module (253)', '2025-05-06 10:30:55', '2025-05-06', 'About', NULL, ''),
(912, 1, 261, 'Delete post from News module (261)', '2025-05-06 10:44:38', '2025-05-06', 'News', NULL, ''),
(913, 1, 309, 'Add post for News module (309)', '2025-05-06 10:47:34', '2025-05-06', 'News', NULL, ''),
(914, 1, 262, 'Edit post for News module (262)', '2025-05-06 10:52:38', '2025-05-06', 'News', NULL, ''),
(915, 1, 310, 'Add post for Teaching staff module (310)', '2025-05-06 10:56:28', '2025-05-06', 'Teaching staff', NULL, ''),
(916, 1, 311, 'Add post for Album module (311)', '2025-05-06 11:00:23', '2025-05-06', 'Album', NULL, ''),
(917, 1, 311, 'Edit post for Album module (311)', '2025-05-06 11:01:32', '2025-05-06', 'Album', NULL, ''),
(918, 1, 46, 'Add test group (46)', '2025-05-06 11:06:08', '2025-05-06', 'groups', NULL, ''),
(919, 1, 309, 'Edit post for News module (309)', '2025-05-06 11:10:12', '2025-05-06', 'News', NULL, ''),
(920, 1, 260, 'Edit post for News module (260)', '2025-05-06 11:11:04', '2025-05-06', 'News', NULL, ''),
(921, 1, 309, 'Edit post for News module (309)', '2025-05-06 11:11:21', '2025-05-06', 'News', NULL, ''),
(922, 1, 1, 'Edit Settings  ( 1 )', '2025-05-06 11:12:25', '2025-05-06', 'settings', NULL, ''),
(923, 1, 312, 'Add post for Album module (312)', '2025-05-06 11:22:28', '2025-05-06', 'Album', NULL, ''),
(924, 1, 312, 'Make post at HOME is yes for Album module (312)', '2025-05-06 11:24:21', '2025-05-06', 'Album', NULL, ''),
(925, 1, 286, 'Edit post for Jops module (286)', '2025-05-06 11:46:58', '2025-05-06', 'Jops', NULL, ''),
(926, 1, 314, 'Add post for News module (314)', '2025-05-06 11:51:04', '2025-05-06', 'News', NULL, ''),
(927, 1, 313, 'Delete post from News module (313)', '2025-05-06 11:52:02', '2025-05-06', 'News', NULL, ''),
(928, 1, 262, 'Delete posts from News module (262,309,260,259,258,257,256)', '2025-05-06 11:53:51', '2025-05-06', 'News', NULL, ''),
(929, 1, 315, 'Add post for News module (315)', '2025-05-06 11:57:33', '2025-05-06', 'News', NULL, ''),
(930, 1, 316, 'Add post for News module (316)', '2025-05-06 12:12:55', '2025-05-06', 'News', NULL, ''),
(931, 1, 315, 'Delete posts from News module (315,314)', '2025-05-06 12:13:09', '2025-05-06', 'News', NULL, ''),
(932, 1, 316, 'Edit post for News module (316)', '2025-05-06 12:14:39', '2025-05-06', 'News', NULL, ''),
(933, 1, 317, 'Add post for News module (317)', '2025-05-06 12:14:49', '2025-05-06', 'News', NULL, ''),
(934, 1, 318, 'Add post for News module (318)', '2025-05-06 12:16:12', '2025-05-06', 'News', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(935, 1, 318, 'Edit post for News module (318)', '2025-05-06 12:16:34', '2025-05-06', 'News', NULL, ''),
(936, 1, 316, 'Make post at HOME is yes for News module (316)', '2025-05-06 12:31:51', '2025-05-06', 'News', NULL, ''),
(937, 1, 318, 'Make post at HOME is yes for News module (318)', '2025-05-06 12:31:59', '2025-05-06', 'News', NULL, ''),
(938, 1, 312, 'Add gallery for Album module (312)', '2025-05-06 12:37:24', '2025-05-06', 'Album', NULL, ''),
(939, 1, 312, 'Add gallery for Album module (312)', '2025-05-06 12:37:39', '2025-05-06', 'Album', NULL, ''),
(940, 1, 251, 'Edit post for About module (251)', '2025-05-06 12:55:27', '2025-05-06', 'About', NULL, ''),
(941, 1, 312, 'Make post at HOME is no for Album module (312)', '2025-05-06 13:03:20', '2025-05-06', 'Album', NULL, ''),
(942, 1, 312, 'Make post at HOME is yes for Album module (312)', '2025-05-06 13:03:56', '2025-05-06', 'Album', NULL, ''),
(943, 1, 21, 'Edit post for pages module (21)', '2025-05-06 13:21:42', '2025-05-06', 'pages', NULL, ''),
(944, 1, 52, 'Delete contact (52,51,50,49,48,47,46,45,44,43)', '2025-05-06 13:46:07', '2025-05-06', 'contact', NULL, ''),
(945, 1, 42, 'Delete contact (42,41,40,39,38,37,36,35,34,33)', '2025-05-06 13:46:19', '2025-05-06', 'contact', NULL, ''),
(946, 1, 32, 'Delete contact (32)', '2025-05-06 13:46:31', '2025-05-06', 'contact', NULL, ''),
(947, 1, 21, 'Edit post for pages module (21)', '2025-05-06 14:43:31', '2025-05-06', 'pages', NULL, ''),
(948, 1, 272, 'Edit post for Teaching staff module (272)', '2025-05-06 15:28:02', '2025-05-06', 'Teaching staff', NULL, ''),
(949, 1, 273, 'Edit post for Teaching staff module (273)', '2025-05-06 15:28:06', '2025-05-06', 'Teaching staff', NULL, ''),
(950, 1, 293, 'Edit post for StudentLife module (293)', '2025-05-06 15:30:10', '2025-05-06', 'StudentLife', NULL, ''),
(951, 1, 297, 'Edit post for StudentLife module (297)', '2025-05-06 15:30:13', '2025-05-06', 'StudentLife', NULL, ''),
(952, 1, 294, 'Edit post for StudentLife module (294)', '2025-05-06 15:30:17', '2025-05-06', 'StudentLife', NULL, ''),
(953, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 06:28:04', '2025-05-07', 'settings', NULL, ''),
(954, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 06:32:39', '2025-05-07', 'settings', NULL, ''),
(955, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 07:05:02', '2025-05-07', 'settings', NULL, ''),
(956, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 07:15:15', '2025-05-07', 'settings', NULL, ''),
(957, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 07:20:32', '2025-05-07', 'settings', NULL, ''),
(958, 1, 252, 'Edit post for About module (252)', '2025-05-07 07:43:15', '2025-05-07', 'About', NULL, ''),
(959, 1, 252, 'Edit post for About module (252)', '2025-05-07 07:45:49', '2025-05-07', 'About', NULL, ''),
(960, 1, 311, 'Delete post from Album module (311)', '2025-05-07 07:51:34', '2025-05-07', 'Album', NULL, ''),
(961, 1, 270, 'Add gallery for Album module (270)', '2025-05-07 07:54:08', '2025-05-07', 'Album', NULL, ''),
(962, 1, 312, 'Make post at HOME is no for Album module (312)', '2025-05-07 07:55:52', '2025-05-07', 'Album', NULL, ''),
(963, 1, 319, 'Add post for Album module (319)', '2025-05-07 08:02:05', '2025-05-07', 'Album', NULL, ''),
(964, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 08:03:24', '2025-05-07', 'settings', NULL, ''),
(965, 1, 1, 'Edit Settings  ( 1 )', '2025-05-07 08:05:51', '2025-05-07', 'settings', NULL, ''),
(966, 1, 320, 'Add post for Video module (320)', '2025-05-07 08:17:04', '2025-05-07', 'Video', NULL, ''),
(967, 1, 320, 'Delete post from Video module (320)', '2025-05-07 08:19:09', '2025-05-07', 'Video', NULL, ''),
(968, 1, 320, 'Delete post from Video module (320)', '2025-05-07 08:19:16', '2025-05-07', 'Video', NULL, ''),
(969, 1, 321, 'Add post for Jobs module (321)', '2025-05-07 08:46:43', '2025-05-07', 'Jobs', NULL, ''),
(970, 1, 321, 'Delete post from Jobs module (321)', '2025-05-07 08:47:48', '2025-05-07', 'Jobs', NULL, ''),
(971, 1, 317, 'Make post at HOME is yes for News module (317)', '2025-05-07 08:51:34', '2025-05-07', 'News', NULL, ''),
(972, 1, 322, 'Add post for Teaching staff module (322)', '2025-05-07 09:01:32', '2025-05-07', 'Teaching staff', NULL, ''),
(973, 1, 322, 'Edit post for Teaching staff module (322)', '2025-05-07 09:04:04', '2025-05-07', 'Teaching staff', NULL, ''),
(974, 1, 322, 'Edit post for Teaching staff module (322)', '2025-05-07 09:07:01', '2025-05-07', 'Teaching staff', NULL, ''),
(975, 1, 322, 'Delete post from Teaching staff module (322)', '2025-05-07 09:15:14', '2025-05-07', 'Teaching staff', NULL, ''),
(976, 1, 316, 'Edit post for News module (316)', '2025-05-07 09:18:37', '2025-05-07', 'News', NULL, ''),
(977, 1, 323, 'Add post for News module (323)', '2025-05-07 09:20:56', '2025-05-07', 'News', NULL, ''),
(978, 1, 24, 'Delete contact (24)', '2025-05-07 09:57:51', '2025-05-07', 'cvs', NULL, ''),
(979, 1, 323, 'Delete post from News module (323)', '2025-05-07 09:59:44', '2025-05-07', 'News', NULL, ''),
(980, 1, 317, 'Make post at HOME is no for News module (317)', '2025-05-07 09:59:50', '2025-05-07', 'News', NULL, ''),
(981, 1, 317, 'Make post at HOME is yes for News module (317)', '2025-05-07 10:00:07', '2025-05-07', 'News', NULL, ''),
(982, 1, 296, 'Edit post for StudentLife module (296)', '2025-05-07 10:02:53', '2025-05-07', 'StudentLife', NULL, ''),
(983, 1, 294, 'Delete post from StudentLife module (294)', '2025-05-07 10:06:59', '2025-05-07', 'StudentLife', NULL, ''),
(984, 1, 26, 'Delete contact (26)', '2025-05-07 10:07:52', '2025-05-07', 'cvs', NULL, ''),
(985, 1, 324, 'Add post for StudentLife module (324)', '2025-05-07 10:09:34', '2025-05-07', 'StudentLife', NULL, ''),
(986, 1, 298, 'Edit post for Programs module (298)', '2025-05-07 10:10:49', '2025-05-07', 'Programs', NULL, ''),
(987, 1, 298, 'Edit post for Programs module (298)', '2025-05-07 10:11:18', '2025-05-07', 'Programs', NULL, ''),
(988, 1, 22, 'Edit post for pages module (22)', '2025-05-07 10:54:10', '2025-05-07', 'pages', NULL, ''),
(989, 1, 252, 'Edit post for About module (252)', '2025-05-07 11:35:26', '2025-05-07', 'About', NULL, ''),
(990, 1, 252, 'Edit post for About module (252)', '2025-05-07 11:42:16', '2025-05-07', 'About', NULL, ''),
(991, 1, 255, 'Edit post for About module (255)', '2025-05-07 11:47:05', '2025-05-07', 'About', NULL, ''),
(992, 1, 319, 'Edit post for Album module (319)', '2025-05-07 14:24:47', '2025-05-07', 'Album', NULL, ''),
(993, 1, 319, 'Edit post for Album module (319)', '2025-05-07 14:26:06', '2025-05-07', 'Album', NULL, ''),
(994, 1, 319, 'Edit post for Album module (319)', '2025-05-07 14:28:29', '2025-05-07', 'Album', NULL, ''),
(995, 1, 319, 'Edit post for Album module (319)', '2025-05-07 14:29:03', '2025-05-07', 'Album', NULL, ''),
(996, 1, 310, 'Edit post for Teaching staff module (310)', '2025-05-07 14:30:17', '2025-05-07', 'Teaching staff', NULL, ''),
(997, 1, 310, 'Edit post for Teaching staff module (310)', '2025-05-07 14:30:59', '2025-05-07', 'Teaching staff', NULL, ''),
(998, 1, 316, 'Edit post for News module (316)', '2025-05-07 14:32:01', '2025-05-07', 'News', NULL, ''),
(999, 1, 316, 'Edit post for News module (316)', '2025-05-07 14:32:34', '2025-05-07', 'News', NULL, ''),
(1000, 1, 324, 'Edit post for StudentLife module (324)', '2025-05-07 14:33:01', '2025-05-07', 'StudentLife', NULL, ''),
(1001, 1, 324, 'Edit post for StudentLife module (324)', '2025-05-07 14:33:37', '2025-05-07', 'StudentLife', NULL, ''),
(1002, 1, 251, 'Edit post for About module (251)', '2025-05-09 06:33:31', '2025-05-09', 'About', NULL, ''),
(1003, 1, 1, 'Edit Settings  ( 1 )', '2025-05-09 06:54:51', '2025-05-09', 'settings', NULL, ''),
(1004, 1, 254, 'Edit post for About module (254)', '2025-05-09 06:56:31', '2025-05-09', 'About', NULL, ''),
(1005, 1, 252, 'Edit post for About module (252)', '2025-05-09 07:11:59', '2025-05-09', 'About', NULL, ''),
(1006, 1, 254, 'Edit post for About module (254)', '2025-05-12 05:18:32', '2025-05-12', 'About', NULL, ''),
(1007, 1, 254, 'Edit post for About module (254)', '2025-05-12 05:20:03', '2025-05-12', 'About', NULL, ''),
(1008, 1, 254, 'Edit post for About module (254)', '2025-05-12 05:20:43', '2025-05-12', 'About', NULL, ''),
(1009, 1, 254, 'Edit post for About module (254)', '2025-05-12 05:22:28', '2025-05-12', 'About', NULL, ''),
(1010, 1, 252, 'Edit post for About module (252)', '2025-05-12 05:30:22', '2025-05-12', 'About', NULL, ''),
(1011, 1, 251, 'Edit post for About module (251)', '2025-05-12 05:31:57', '2025-05-12', 'About', NULL, ''),
(1012, 1, 254, 'Edit post for About module (254)', '2025-05-12 05:35:05', '2025-05-12', 'About', NULL, ''),
(1013, 1, 253, 'Edit post for About module (253)', '2025-05-12 05:40:55', '2025-05-12', 'About', NULL, ''),
(1014, 1, 253, 'Edit post for About module (253)', '2025-05-12 05:44:35', '2025-05-12', 'About', NULL, ''),
(1015, 1, 22, 'Edit post for pages module (22)', '2025-05-12 05:50:19', '2025-05-12', 'pages', NULL, ''),
(1016, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 05:58:22', '2025-05-12', 'settings', NULL, ''),
(1017, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 06:00:59', '2025-05-12', 'settings', NULL, ''),
(1018, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 06:03:30', '2025-05-12', 'settings', NULL, ''),
(1019, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 06:04:18', '2025-05-12', 'settings', NULL, ''),
(1020, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 06:12:25', '2025-05-12', 'settings', NULL, ''),
(1021, 1, 251, 'Edit post for About module (251)', '2025-05-12 06:31:05', '2025-05-12', 'About', NULL, ''),
(1022, 1, 254, 'Edit post for About module (254)', '2025-05-12 06:33:47', '2025-05-12', 'About', NULL, ''),
(1023, 1, 252, 'Edit post for About module (252)', '2025-05-12 06:34:52', '2025-05-12', 'About', NULL, ''),
(1024, 1, 253, 'Edit post for About module (253)', '2025-05-12 06:35:53', '2025-05-12', 'About', NULL, ''),
(1025, 1, 253, 'Edit post for About module (253)', '2025-05-12 06:36:10', '2025-05-12', 'About', NULL, ''),
(1026, 1, 272, 'Delete posts from Teaching staff module (272,273,310)', '2025-05-12 06:38:36', '2025-05-12', 'Teaching staff', NULL, ''),
(1027, 1, 325, 'Add post for Teaching staff module (325)', '2025-05-12 06:46:47', '2025-05-12', 'Teaching staff', NULL, ''),
(1028, 1, 325, 'Edit post for Teaching staff module (325)', '2025-05-12 06:47:25', '2025-05-12', 'Teaching staff', NULL, ''),
(1029, 1, 325, 'Edit post for Teaching staff module (325)', '2025-05-12 06:48:37', '2025-05-12', 'Teaching staff', NULL, ''),
(1030, 1, 325, 'Edit post for Teaching staff module (325)', '2025-05-12 06:48:44', '2025-05-12', 'Teaching staff', NULL, ''),
(1031, 1, 325, 'Edit post for Teaching staff module (325)', '2025-05-12 06:49:19', '2025-05-12', 'Teaching staff', NULL, ''),
(1032, 1, 326, 'Add post for Teaching staff module (326)', '2025-05-12 06:54:09', '2025-05-12', 'Teaching staff', NULL, ''),
(1033, 1, 327, 'Add post for Teaching staff module (327)', '2025-05-12 07:01:25', '2025-05-12', 'Teaching staff', NULL, ''),
(1034, 1, 326, 'Edit post for Teaching staff module (326)', '2025-05-12 07:12:36', '2025-05-12', 'Teaching staff', NULL, ''),
(1035, 1, 327, 'Edit post for Teaching staff module (327)', '2025-05-12 07:13:22', '2025-05-12', 'Teaching staff', NULL, ''),
(1036, 1, 326, 'Edit post for Teaching staff module (326)', '2025-05-12 07:13:54', '2025-05-12', 'Teaching staff', NULL, ''),
(1037, 1, 254, 'Edit post for About module (254)', '2025-05-12 07:34:57', '2025-05-12', 'About', NULL, ''),
(1038, 1, 251, 'Edit post for About module (251)', '2025-05-12 07:36:14', '2025-05-12', 'About', NULL, ''),
(1039, 1, 242, 'Delete posts from slider module (242,238,227,225,139,157,137,158)', '2025-05-12 08:25:13', '2025-05-12', 'slider', NULL, ''),
(1040, 1, 328, 'Add post for slider module (328)', '2025-05-12 08:40:13', '2025-05-12', 'slider', NULL, ''),
(1041, 1, 328, 'Edit post for slider module (328)', '2025-05-12 08:42:58', '2025-05-12', 'slider', NULL, ''),
(1042, 1, 329, 'Add post for slider module (329)', '2025-05-12 08:47:48', '2025-05-12', 'slider', NULL, ''),
(1043, 1, 330, 'Add post for slider module (330)', '2025-05-12 08:49:01', '2025-05-12', 'slider', NULL, ''),
(1044, 1, 330, 'Edit post for slider module (330)', '2025-05-12 11:43:38', '2025-05-12', 'slider', NULL, ''),
(1045, 1, 329, 'Edit post for slider module (329)', '2025-05-12 11:44:09', '2025-05-12', 'slider', NULL, ''),
(1046, 1, 328, 'Edit post for slider module (328)', '2025-05-12 11:44:21', '2025-05-12', 'slider', NULL, ''),
(1047, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 12:04:50', '2025-05-12', 'settings', NULL, ''),
(1048, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 12:05:32', '2025-05-12', 'settings', NULL, ''),
(1049, 1, 1, 'Edit Settings  ( 1 )', '2025-05-12 12:53:37', '2025-05-12', 'settings', NULL, ''),
(1050, 1, 298, 'Edit post for Programs module (298)', '2025-05-13 17:24:53', '2025-05-13', 'Programs', NULL, ''),
(1051, 1, 299, 'Edit post for Programs module (299)', '2025-05-13 17:34:05', '2025-05-13', 'Programs', NULL, ''),
(1052, 1, 299, 'Edit post for Programs module (299)', '2025-05-13 17:43:56', '2025-05-13', 'Programs', NULL, ''),
(1053, 1, 298, 'Edit post for Programs module (298)', '2025-05-13 17:46:27', '2025-05-13', 'Programs', NULL, ''),
(1054, 1, 300, 'Edit post for Programs module (300)', '2025-05-13 17:50:35', '2025-05-13', 'Programs', NULL, ''),
(1055, 1, 300, 'Edit post for Programs module (300)', '2025-05-13 17:50:44', '2025-05-13', 'Programs', NULL, ''),
(1056, 1, 300, 'Edit post for Programs module (300)', '2025-05-13 17:52:22', '2025-05-13', 'Programs', NULL, ''),
(1057, 1, 300, 'Edit post for Programs module (300)', '2025-05-13 17:53:47', '2025-05-13', 'Programs', NULL, ''),
(1058, 1, 302, 'Edit post for Programs module (302)', '2025-05-13 17:56:55', '2025-05-13', 'Programs', NULL, ''),
(1059, 1, 302, 'Edit post for Programs module (302)', '2025-05-13 18:06:05', '2025-05-13', 'Programs', NULL, ''),
(1060, 1, 301, 'Edit post for Programs module (301)', '2025-05-13 18:08:28', '2025-05-13', 'Programs', NULL, ''),
(1061, 1, 303, 'Edit post for Programs module (303)', '2025-05-13 18:11:25', '2025-05-13', 'Programs', NULL, ''),
(1062, 1, 304, 'Edit post for Programs module (304)', '2025-05-13 18:14:37', '2025-05-13', 'Programs', NULL, ''),
(1063, 1, 251, 'Edit post for About module (251)', '2025-05-14 05:30:59', '2025-05-14', 'About', NULL, ''),
(1064, 1, 254, 'Edit post for About module (254)', '2025-05-14 05:33:20', '2025-05-14', 'About', NULL, ''),
(1065, 1, 252, 'Edit post for About module (252)', '2025-05-14 05:34:49', '2025-05-14', 'About', NULL, ''),
(1066, 1, 253, 'Edit post for About module (253)', '2025-05-14 05:36:37', '2025-05-14', 'About', NULL, ''),
(1067, 1, 255, 'Edit post for About module (255)', '2025-05-14 05:39:10', '2025-05-14', 'About', NULL, ''),
(1068, 1, 305, 'Edit post for pages module (305)', '2025-05-14 05:50:55', '2025-05-14', 'pages', NULL, ''),
(1069, 1, 22, 'Edit post for pages module (22)', '2025-05-14 06:01:59', '2025-05-14', 'pages', NULL, ''),
(1070, 1, 22, 'Edit post for pages module (22)', '2025-05-14 06:03:08', '2025-05-14', 'pages', NULL, ''),
(1071, 1, 22, 'Edit post for pages module (22)', '2025-05-14 06:04:47', '2025-05-14', 'pages', NULL, ''),
(1072, 1, 22, 'Edit post for pages module (22)', '2025-05-14 06:04:53', '2025-05-14', 'pages', NULL, ''),
(1073, 1, 22, 'Edit post for pages module (22)', '2025-05-14 06:32:01', '2025-05-14', 'pages', NULL, ''),
(1074, 1, 298, 'Edit post for Programs module (298)', '2025-05-14 06:50:59', '2025-05-14', 'Programs', NULL, ''),
(1075, 1, 1, 'Edit Settings  ( 1 )', '2025-05-14 06:57:26', '2025-05-14', 'settings', NULL, ''),
(1076, 1, 1, 'Edit Settings  ( 1 )', '2025-05-14 07:02:16', '2025-05-14', 'settings', NULL, ''),
(1077, 1, 254, 'Edit post for About module (254)', '2025-05-14 07:05:29', '2025-05-14', 'About', NULL, ''),
(1078, 1, 327, 'Edit post for Teaching staff module (327)', '2025-05-14 08:49:17', '2025-05-14', 'Teaching staff', NULL, ''),
(1079, 1, 327, 'Edit post for Teaching staff module (327)', '2025-05-14 08:49:26', '2025-05-14', 'Teaching staff', NULL, ''),
(1080, 1, 327, 'Edit post for Teaching staff module (327)', '2025-05-14 08:51:34', '2025-05-14', 'Teaching staff', NULL, ''),
(1081, 1, 326, 'Edit post for Teaching staff module (326)', '2025-05-14 08:53:09', '2025-05-14', 'Teaching staff', NULL, ''),
(1082, 1, 325, 'Edit post for Teaching staff module (325)', '2025-05-14 09:25:13', '2025-05-14', 'Teaching staff', NULL, ''),
(1083, 1, 328, 'Edit post for slider module (328)', '2025-05-14 09:42:30', '2025-05-14', 'slider', NULL, ''),
(1084, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:40:31', '2025-05-15', 'slider', NULL, ''),
(1085, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:40:46', '2025-05-15', 'slider', NULL, ''),
(1086, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:41:21', '2025-05-15', 'slider', NULL, ''),
(1087, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:42:13', '2025-05-15', 'slider', NULL, ''),
(1088, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:42:53', '2025-05-15', 'slider', NULL, ''),
(1089, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:43:35', '2025-05-15', 'slider', NULL, ''),
(1090, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:44:18', '2025-05-15', 'slider', NULL, ''),
(1091, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:45:10', '2025-05-15', 'slider', NULL, ''),
(1092, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:45:21', '2025-05-15', 'slider', NULL, ''),
(1093, 1, 330, 'Edit post for slider module (330)', '2025-05-15 05:47:10', '2025-05-15', 'slider', NULL, ''),
(1094, 1, 279, 'Edit post for Video module (279)', '2025-05-15 05:54:58', '2025-05-15', 'Video', NULL, ''),
(1095, 1, 278, 'Delete post from Video module (278)', '2025-05-19 07:30:21', '2025-05-19', 'Video', NULL, ''),
(1096, 1, 308, 'Delete post from Video module (308)', '2025-05-19 07:30:26', '2025-05-19', 'Video', NULL, ''),
(1097, 1, 276, 'Delete post from Video module (276)', '2025-05-19 07:30:38', '2025-05-19', 'Video', NULL, ''),
(1098, 1, 277, 'Delete posts from Video module (277,275,274)', '2025-05-19 07:30:48', '2025-05-19', 'Video', NULL, ''),
(1099, 1, 123, 'Edit shimaa user id (123)', '2025-05-21 07:47:31', '2025-05-21', 'users', NULL, ''),
(1100, 1, 327, 'Edit post for Teaching_staff module (327)', '2025-05-26 06:30:47', '2025-05-26', 'Teaching_staff', NULL, ''),
(1101, 1, 327, 'Edit post for Teaching_staff module (327)', '2025-05-26 08:23:57', '2025-05-26', 'Teaching_staff', NULL, ''),
(1102, 1, 325, 'Edit post for Teaching_staff module (325)', '2025-05-26 08:28:17', '2025-05-26', 'Teaching_staff', NULL, ''),
(1103, 1, 279, 'Edit post for Video module (279)', '2025-05-28 09:57:52', '2025-05-28', 'Video', NULL, ''),
(1104, 1, 279, 'Edit post for Video module (279)', '2025-05-28 10:00:19', '2025-05-28', 'Video', NULL, ''),
(1105, 1, 279, 'Edit post for Video module (279)', '2025-05-29 08:52:10', '2025-05-29', 'Video', NULL, ''),
(1106, 1, 330, 'Edit post for slider module (330)', '2025-06-10 05:31:33', '2025-06-10', 'slider', NULL, ''),
(1107, 1, 330, 'Edit post for slider module (330)', '2025-06-10 05:32:02', '2025-06-10', 'slider', NULL, ''),
(1108, 1, 330, 'Edit post for slider module (330)', '2025-06-10 05:32:30', '2025-06-10', 'slider', NULL, ''),
(1109, 1, 329, 'Edit post for slider module (329)', '2025-06-10 05:34:05', '2025-06-10', 'slider', NULL, ''),
(1110, 1, 329, 'Edit post for slider module (329)', '2025-06-10 05:34:48', '2025-06-10', 'slider', NULL, ''),
(1111, 1, 329, 'Edit post for slider module (329)', '2025-06-10 05:35:36', '2025-06-10', 'slider', NULL, ''),
(1112, 1, 329, 'Edit post for slider module (329)', '2025-06-10 05:35:49', '2025-06-10', 'slider', NULL, ''),
(1113, 1, 330, 'Edit post for slider module (330)', '2025-06-10 05:58:58', '2025-06-10', 'slider', NULL, ''),
(1114, 1, 329, 'Edit post for slider module (329)', '2025-06-10 05:59:13', '2025-06-10', 'slider', NULL, ''),
(1115, 1, 328, 'Edit post for slider module (328)', '2025-06-10 05:59:25', '2025-06-10', 'slider', NULL, ''),
(1116, 1, 328, 'Edit post for slider module (328)', '2025-06-10 06:00:21', '2025-06-10', 'slider', NULL, ''),
(1117, 1, 328, 'Edit post for slider module (328)', '2025-06-10 06:01:00', '2025-06-10', 'slider', NULL, ''),
(1118, 1, 328, 'Edit post for slider module (328)', '2025-06-10 06:01:26', '2025-06-10', 'slider', NULL, ''),
(1119, 1, 331, 'Add post for Video module (331)', '2025-06-10 06:32:58', '2025-06-10', 'Video', NULL, ''),
(1120, 1, 279, 'Edit post for Video module (279)', '2025-06-10 06:51:06', '2025-06-10', 'Video', NULL, ''),
(1121, 1, 279, 'Edit post for Video module (279)', '2025-06-10 06:56:04', '2025-06-10', 'Video', NULL, ''),
(1122, 1, 319, 'Edit post for Album module (319)', '2025-06-10 07:01:28', '2025-06-10', 'Album', NULL, ''),
(1123, 1, 319, 'Edit post for Album module (319)', '2025-06-10 07:01:51', '2025-06-10', 'Album', NULL, ''),
(1124, 1, 319, 'Edit post for Album module (319)', '2025-06-10 07:02:03', '2025-06-10', 'Album', NULL, ''),
(1125, 1, 319, 'Edit post for Album module (319)', '2025-06-10 07:02:37', '2025-06-10', 'Album', NULL, ''),
(1126, 1, 319, 'Edit post for Album module (319)', '2025-06-10 07:03:15', '2025-06-10', 'Album', NULL, ''),
(1127, 1, 270, 'Edit post for Album module (270)', '2025-06-10 07:03:47', '2025-06-10', 'Album', NULL, ''),
(1128, 1, 270, 'Edit post for Album module (270)', '2025-06-10 07:04:14', '2025-06-10', 'Album', NULL, ''),
(1129, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:05:33', '2025-06-10', 'Album', NULL, ''),
(1130, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:07:52', '2025-06-10', 'Album', NULL, ''),
(1131, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:09:32', '2025-06-10', 'Album', NULL, ''),
(1132, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:09:46', '2025-06-10', 'Album', NULL, ''),
(1133, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:09:55', '2025-06-10', 'Album', NULL, ''),
(1134, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:10:18', '2025-06-10', 'Album', NULL, ''),
(1135, 1, 312, 'Edit post for Album module (312)', '2025-06-10 07:10:43', '2025-06-10', 'Album', NULL, ''),
(1136, 1, 264, 'Delete post from Album module (264)', '2025-06-10 07:11:10', '2025-06-10', 'Album', NULL, ''),
(1137, 1, 271, 'Delete posts from Album module (271,268,267,266,265,263)', '2025-06-10 07:11:28', '2025-06-10', 'Album', NULL, ''),
(1138, 1, 269, 'Delete posts from Album module (269)', '2025-06-10 07:11:36', '2025-06-10', 'Album', NULL, ''),
(1139, 1, 312, 'Delete posts from Album module (312)', '2025-06-10 07:11:43', '2025-06-10', 'Album', NULL, ''),
(1140, 1, 332, 'Add post for Album module (332)', '2025-06-10 07:16:29', '2025-06-10', 'Album', NULL, ''),
(1141, 1, 332, 'Edit post for Album module (332)', '2025-06-10 07:25:46', '2025-06-10', 'Album', NULL, ''),
(1142, 1, 333, 'Add post for Album module (333)', '2025-06-10 07:27:37', '2025-06-10', 'Album', NULL, ''),
(1143, 1, 333, 'Edit post for Album module (333)', '2025-06-10 07:29:37', '2025-06-10', 'Album', NULL, ''),
(1144, 1, 22, 'Edit post for pages module (22)', '2025-06-10 07:32:14', '2025-06-10', 'pages', NULL, ''),
(1145, 1, 22, 'Edit post for pages module (22)', '2025-06-10 07:35:52', '2025-06-10', 'pages', NULL, ''),
(1146, 1, 22, 'Edit post for pages module (22)', '2025-06-10 07:36:56', '2025-06-10', 'pages', NULL, ''),
(1147, 1, 298, 'Edit post for Programs module (298)', '2025-06-11 08:11:38', '2025-06-11', 'Programs', NULL, ''),
(1148, 1, 300, 'Edit post for Programs module (300)', '2025-06-11 08:12:14', '2025-06-11', 'Programs', NULL, ''),
(1149, 1, 306, 'Edit post for pages module (306)', '2025-06-13 14:06:44', '2025-06-13', 'pages', NULL, ''),
(1150, 1, 307, 'Edit post for pages module (307)', '2025-06-13 14:10:58', '2025-06-13', 'pages', NULL, ''),
(1151, 1, 1, 'Edit Settings  ( 1 )', '2025-06-16 06:25:35', '2025-06-16', 'settings', NULL, ''),
(1152, 1, 1, 'Edit Settings  ( 1 )', '2025-06-16 06:26:36', '2025-06-16', 'settings', NULL, ''),
(1153, 1, 1, 'Edit Settings  ( 1 )', '2025-06-16 06:27:46', '2025-06-16', 'settings', NULL, ''),
(1154, 1, 318, 'Delete posts from News module (318,317)', '2025-06-16 06:53:17', '2025-06-16', 'News', NULL, ''),
(1155, 1, 316, 'Edit post for News module (316)', '2025-06-16 07:01:52', '2025-06-16', 'News', NULL, ''),
(1156, 1, 316, 'Edit post for News module (316)', '2025-06-16 07:06:08', '2025-06-16', 'News', NULL, ''),
(1157, 1, 316, 'Edit post for News module (316)', '2025-06-16 07:07:26', '2025-06-16', 'News', NULL, ''),
(1158, 1, 316, 'Edit post for News module (316)', '2025-06-16 08:18:23', '2025-06-16', 'News', NULL, ''),
(1159, 1, 334, 'Add post for News module (334)', '2025-06-16 08:30:04', '2025-06-16', 'News', NULL, ''),
(1160, 1, 334, 'Edit post for News module (334)', '2025-06-16 08:32:01', '2025-06-16', 'News', NULL, ''),
(1161, 1, 334, 'Edit post for News module (334)', '2025-06-16 08:52:24', '2025-06-16', 'News', NULL, ''),
(1162, 1, 333, 'Edit post for Album module (333)', '2025-06-16 08:54:02', '2025-06-16', 'Album', NULL, ''),
(1163, 1, 328, 'Edit post for slider module (328)', '2025-06-17 05:55:08', '2025-06-17', 'slider', NULL, ''),
(1164, 1, 328, 'Edit post for slider module (328)', '2025-06-17 06:04:40', '2025-06-17', 'slider', NULL, ''),
(1165, 1, 328, 'Edit post for slider module (328)', '2025-06-17 06:05:55', '2025-06-17', 'slider', NULL, ''),
(1166, 1, 328, 'Edit post for slider module (328)', '2025-06-17 06:06:30', '2025-06-17', 'slider', NULL, ''),
(1167, 1, 316, 'Delete post from News module (316)', '2025-06-17 09:01:59', '2025-06-17', 'News', NULL, ''),
(1168, 1, 270, 'Delete post from Album module (270)', '2025-06-17 09:03:42', '2025-06-17', 'Album', NULL, ''),
(1169, 1, 319, 'Delete post from Album module (319)', '2025-06-17 09:03:49', '2025-06-17', 'Album', NULL, ''),
(1170, 1, 332, 'Add gallery for Album module (332)', '2025-06-17 09:05:42', '2025-06-17', 'Album', NULL, ''),
(1171, 1, 335, 'Add post for Album module (335)', '2025-06-17 09:12:53', '2025-06-17', 'Album', NULL, ''),
(1172, 1, 335, 'Edit post for Album module (335)', '2025-06-17 09:13:25', '2025-06-17', 'Album', NULL, ''),
(1173, 1, 335, 'Edit post for Album module (335)', '2025-06-17 09:14:19', '2025-06-17', 'Album', NULL, ''),
(1174, 1, 335, 'Edit post for Album module (335)', '2025-06-17 09:14:20', '2025-06-17', 'Album', NULL, ''),
(1175, 1, 333, 'Add gallery for Album module (333)', '2025-06-17 09:15:02', '2025-06-17', 'Album', NULL, ''),
(1176, 1, 333, 'Add gallery for Album module (333)', '2025-06-17 09:21:10', '2025-06-17', 'Album', NULL, ''),
(1177, 1, 333, 'Add gallery for Album module (333)', '2025-06-17 09:21:41', '2025-06-17', 'Album', NULL, ''),
(1178, 1, 333, 'Add gallery for Album module (333)', '2025-06-17 09:22:50', '2025-06-17', 'Album', NULL, ''),
(1179, 1, 333, 'Add gallery for Album module (333)', '2025-06-17 09:23:25', '2025-06-17', 'Album', NULL, ''),
(1180, 1, 333, 'Edit post for Album module (333)', '2025-06-17 09:46:17', '2025-06-17', 'Album', NULL, ''),
(1181, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 09:54:39', '2025-06-17', 'Jobs', NULL, ''),
(1182, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 09:54:48', '2025-06-17', 'Jobs', NULL, ''),
(1183, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 09:54:56', '2025-06-17', 'Jobs', NULL, ''),
(1184, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 09:57:19', '2025-06-17', 'Jobs', NULL, ''),
(1185, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 09:57:28', '2025-06-17', 'Jobs', NULL, ''),
(1186, 1, 285, 'Edit post for Jobs module (285)', '2025-06-17 10:01:04', '2025-06-17', 'Jobs', NULL, ''),
(1187, 1, 285, 'Edit post for Jobs module (285)', '2025-06-17 10:01:16', '2025-06-17', 'Jobs', NULL, ''),
(1188, 1, 285, 'Edit post for Jobs module (285)', '2025-06-17 10:08:08', '2025-06-17', 'Jobs', NULL, ''),
(1189, 1, 285, 'Edit post for Jobs module (285)', '2025-06-17 10:08:18', '2025-06-17', 'Jobs', NULL, ''),
(1190, 1, 285, 'Edit post for Jobs module (285)', '2025-06-17 10:08:24', '2025-06-17', 'Jobs', NULL, ''),
(1191, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 10:08:47', '2025-06-17', 'Jobs', NULL, ''),
(1192, 1, 286, 'Edit post for Jobs module (286)', '2025-06-17 10:08:54', '2025-06-17', 'Jobs', NULL, ''),
(1193, 1, 336, 'Add post for Video module (336)', '2025-06-17 10:17:59', '2025-06-17', 'Video', NULL, ''),
(1194, 1, 284, 'Edit post for Jobs module (284)', '2025-06-17 10:18:39', '2025-06-17', 'Jobs', NULL, ''),
(1195, 1, 284, 'Edit post for Jobs module (284)', '2025-06-17 10:18:47', '2025-06-17', 'Jobs', NULL, ''),
(1196, 1, 283, 'Edit post for Jobs module (283)', '2025-06-17 10:21:18', '2025-06-17', 'Jobs', NULL, ''),
(1197, 1, 283, 'Edit post for Jobs module (283)', '2025-06-17 10:21:25', '2025-06-17', 'Jobs', NULL, ''),
(1198, 1, 282, 'Delete posts from Jobs module (282,281,280)', '2025-06-17 10:32:16', '2025-06-17', 'Jobs', NULL, ''),
(1199, 1, 251, 'Edit post for About module (251)', '2025-06-17 13:42:02', '2025-06-17', 'About', NULL, ''),
(1200, 1, 334, 'Edit post for News module (334)', '2025-06-18 06:16:59', '2025-06-18', 'News', NULL, ''),
(1201, 1, 334, 'Edit post for News module (334)', '2025-06-18 06:17:43', '2025-06-18', 'News', NULL, ''),
(1202, 1, 337, 'Add post for Teaching_staff module (337)', '2025-06-18 06:48:50', '2025-06-18', 'Teaching_staff', NULL, ''),
(1203, 1, 335, 'Delete posts from Album module (335)', '2025-06-18 07:08:56', '2025-06-18', 'Album', NULL, ''),
(1204, 1, 338, 'Add post for Album module (338)', '2025-06-18 07:34:44', '2025-06-18', 'Album', NULL, ''),
(1205, 1, 339, 'Add post for Teaching_staff module (339)', '2025-06-18 07:54:30', '2025-06-18', 'Teaching_staff', NULL, ''),
(1206, 1, 339, 'Edit post for Teaching_staff module (339)', '2025-06-18 07:57:23', '2025-06-18', 'Teaching_staff', NULL, ''),
(1207, 1, 339, 'Edit post for Teaching_staff module (339)', '2025-06-18 07:58:40', '2025-06-18', 'Teaching_staff', NULL, ''),
(1208, 1, 337, 'Edit post for Teaching_staff module (337)', '2025-06-18 08:20:40', '2025-06-18', 'Teaching_staff', NULL, ''),
(1209, 1, 339, 'Edit post for Teaching_staff module (339)', '2025-06-18 08:21:18', '2025-06-18', 'Teaching_staff', NULL, ''),
(1210, 1, 338, 'Edit post for Album module (338)', '2025-06-18 08:40:24', '2025-06-18', 'Album', NULL, ''),
(1211, 1, 339, 'Edit post for Teaching_staff module (339)', '2025-06-18 09:14:05', '2025-06-18', 'Teaching_staff', NULL, ''),
(1212, 1, 337, 'Edit post for Teaching_staff module (337)', '2025-06-18 09:14:31', '2025-06-18', 'Teaching_staff', NULL, ''),
(1213, 1, 334, 'Edit post for News module (334)', '2025-06-18 09:20:02', '2025-06-18', 'News', NULL, ''),
(1214, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:20:42', '2025-06-18', 'Album', NULL, ''),
(1215, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:21:10', '2025-06-18', 'Album', NULL, ''),
(1216, 1, 340, 'Add post for Album module (340)', '2025-06-18 09:22:48', '2025-06-18', 'Album', NULL, ''),
(1217, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:24:02', '2025-06-18', 'Album', NULL, ''),
(1218, 1, 340, 'Delete post from Album module (340)', '2025-06-18 09:24:21', '2025-06-18', 'Album', NULL, ''),
(1219, 1, 333, 'Add gallery for Album module (333)', '2025-06-18 09:31:11', '2025-06-18', 'Album', NULL, ''),
(1220, 1, 182, 'Delete gallery from Album module (182)', '2025-06-18 09:31:53', '2025-06-18', 'Album', NULL, ''),
(1221, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:38:49', '2025-06-18', 'Album', NULL, ''),
(1222, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:39:08', '2025-06-18', 'Album', NULL, ''),
(1223, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:40:02', '2025-06-18', 'Album', NULL, ''),
(1224, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:40:35', '2025-06-18', 'Album', NULL, ''),
(1225, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:41:19', '2025-06-18', 'Album', NULL, ''),
(1226, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:46:43', '2025-06-18', 'Album', NULL, ''),
(1227, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:47:23', '2025-06-18', 'Album', NULL, ''),
(1228, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:48:13', '2025-06-18', 'Album', NULL, ''),
(1229, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:49:02', '2025-06-18', 'Album', NULL, ''),
(1230, 1, 338, 'Edit post for Album module (338)', '2025-06-18 09:52:51', '2025-06-18', 'Album', NULL, ''),
(1231, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:00:14', '2025-06-18', 'Album', NULL, ''),
(1232, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:00:29', '2025-06-18', 'Album', NULL, ''),
(1233, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:00:31', '2025-06-18', 'Album', NULL, ''),
(1234, 1, 185, 'Delete gallery from Album module (185)', '2025-06-18 10:00:37', '2025-06-18', 'Album', NULL, ''),
(1235, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:02:06', '2025-06-18', 'Album', NULL, ''),
(1236, 1, 184, 'Delete gallery from Album module (184)', '2025-06-18 10:02:12', '2025-06-18', 'Album', NULL, ''),
(1237, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:02:28', '2025-06-18', 'Album', NULL, ''),
(1238, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:04:07', '2025-06-18', 'Album', NULL, ''),
(1239, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:05:23', '2025-06-18', 'Album', NULL, ''),
(1240, 1, 189, 'Delete gallery from Album module (189)', '2025-06-18 10:05:29', '2025-06-18', 'Album', NULL, ''),
(1241, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:07:08', '2025-06-18', 'Album', NULL, ''),
(1242, 1, 338, 'Add gallery for Album module (338)', '2025-06-18 10:07:10', '2025-06-18', 'Album', NULL, ''),
(1243, 1, 190, 'Delete gallery from Album module (190)', '2025-06-18 10:07:22', '2025-06-18', 'Album', NULL, ''),
(1244, 1, 341, 'Add post for News module (341)', '2025-06-19 05:57:32', '2025-06-19', 'News', NULL, ''),
(1245, 1, 341, 'Edit post for News module (341)', '2025-06-19 05:58:38', '2025-06-19', 'News', NULL, ''),
(1246, 1, 342, 'Add post for Album module (342)', '2025-06-19 06:06:57', '2025-06-19', 'Album', NULL, ''),
(1247, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:07:39', '2025-06-19', 'Album', NULL, ''),
(1248, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:08:14', '2025-06-19', 'Album', NULL, ''),
(1249, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:08:36', '2025-06-19', 'Album', NULL, ''),
(1250, 1, 193, 'Delete gallery from Album module (193)', '2025-06-19 06:08:44', '2025-06-19', 'Album', NULL, ''),
(1251, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:09:08', '2025-06-19', 'Album', NULL, ''),
(1252, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:11:51', '2025-06-19', 'Album', NULL, ''),
(1253, 1, 342, 'Add gallery for Album module (342)', '2025-06-19 06:12:13', '2025-06-19', 'Album', NULL, ''),
(1254, 1, 334, 'Edit post for News module (334)', '2025-06-19 06:18:33', '2025-06-19', 'News', NULL, ''),
(1255, 1, 334, 'Edit post for News module (334)', '2025-06-19 06:22:18', '2025-06-19', 'News', NULL, ''),
(1256, 1, 334, 'Edit post for News module (334)', '2025-06-19 06:22:54', '2025-06-19', 'News', NULL, ''),
(1257, 1, 334, 'Edit post for News module (334)', '2025-06-19 06:23:47', '2025-06-19', 'News', NULL, ''),
(1258, 1, 324, 'Delete posts from StudentLife module (324,296,297,293)', '2025-06-19 06:57:14', '2025-06-19', 'StudentLife', NULL, ''),
(1259, 1, 349, 'Delete posts from StudentLife module (349,348,347,345,344)', '2025-06-19 07:36:20', '2025-06-19', 'StudentLife', NULL, ''),
(1260, 1, 343, 'Delete post from StudentLife module (343)', '2025-06-19 07:36:31', '2025-06-19', 'StudentLife', NULL, ''),
(1261, 1, 351, 'Add post for StudentLife module (351)', '2025-06-19 08:03:41', '2025-06-19', 'StudentLife', NULL, ''),
(1262, 1, 351, 'Edit post for StudentLife module (351)', '2025-06-19 08:04:55', '2025-06-19', 'StudentLife', NULL, ''),
(1263, 1, 351, 'Delete posts from StudentLife module (351,350,346)', '2025-06-19 08:06:21', '2025-06-19', 'StudentLife', NULL, ''),
(1264, 1, 352, 'Add post for StudentLife module (352)', '2025-06-19 08:07:50', '2025-06-19', 'StudentLife', NULL, ''),
(1265, 1, 353, 'Add post for StudentLife module (353)', '2025-06-19 08:08:59', '2025-06-19', 'StudentLife', NULL, ''),
(1266, 1, 354, 'Add post for StudentLife module (354)', '2025-06-19 08:12:58', '2025-06-19', 'StudentLife', NULL, ''),
(1267, 1, 354, 'Edit post for StudentLife module (354)', '2025-06-19 08:41:46', '2025-06-19', 'StudentLife', NULL, ''),
(1268, 1, 353, 'Delete posts from StudentLife module (353,352)', '2025-06-19 08:42:36', '2025-06-19', 'StudentLife', NULL, ''),
(1269, 1, 354, 'Edit post for StudentLife module (354)', '2025-06-19 08:43:04', '2025-06-19', 'StudentLife', NULL, ''),
(1270, 1, 354, 'Edit post for StudentLife module (354)', '2025-06-19 08:43:06', '2025-06-19', 'StudentLife', NULL, ''),
(1271, 1, 354, 'Edit post for StudentLife module (354)', '2025-06-19 08:43:25', '2025-06-19', 'StudentLife', NULL, ''),
(1272, 1, 336, 'Edit post for Video module (336)', '2025-06-19 08:49:55', '2025-06-19', 'Video', NULL, ''),
(1273, 1, 355, 'Add post for Video module (355)', '2025-06-19 09:21:11', '2025-06-19', 'Video', NULL, ''),
(1274, 1, 336, 'Edit post for Video module (336)', '2025-06-19 09:23:23', '2025-06-19', 'Video', NULL, ''),
(1275, 1, 279, 'Delete post from Video module (279)', '2025-06-19 09:26:36', '2025-06-19', 'Video', NULL, ''),
(1276, 1, 337, 'Activate posts from Teaching_staff module (337)', '2025-06-19 09:43:04', '2025-06-19', 'Teaching_staff', NULL, ''),
(1277, 1, 356, 'Add post for Video module (356)', '2025-06-19 09:52:48', '2025-06-19', 'Video', NULL, ''),
(1278, 1, 330, 'Edit post for slider module (330)', '2025-06-19 10:22:24', '2025-06-19', 'slider', NULL, ''),
(1279, 1, 330, 'Edit post for slider module (330)', '2025-06-19 10:33:21', '2025-06-19', 'slider', NULL, ''),
(1280, 1, 341, 'Make post at HOME is yes for News module (341)', '2025-06-19 15:19:22', '2025-06-19', 'News', NULL, ''),
(1281, 1, 334, 'Make post at HOME is yes for News module (334)', '2025-06-19 15:19:26', '2025-06-19', 'News', NULL, ''),
(1282, 1, 338, 'Make post at HOME is yes for Album module (338)', '2025-06-19 15:23:03', '2025-06-19', 'Album', NULL, ''),
(1283, 1, 333, 'Make post at HOME is yes for Album module (333)', '2025-06-19 15:23:06', '2025-06-19', 'Album', NULL, ''),
(1284, 1, 332, 'Make post at HOME is yes for Album module (332)', '2025-06-19 15:23:09', '2025-06-19', 'Album', NULL, ''),
(1285, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:26:08', '2025-06-23', 'slider', NULL, ''),
(1286, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:26:25', '2025-06-23', 'slider', NULL, ''),
(1287, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:33:54', '2025-06-23', 'slider', NULL, ''),
(1288, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:34:13', '2025-06-23', 'slider', NULL, ''),
(1289, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:35:04', '2025-06-23', 'slider', NULL, ''),
(1290, 1, 329, 'Edit post for slider module (329)', '2025-06-23 07:56:05', '2025-06-23', 'slider', NULL, ''),
(1291, 1, 330, 'Edit post for slider module (330)', '2025-06-23 07:59:05', '2025-06-23', 'slider', NULL, ''),
(1292, 1, 330, 'Edit post for slider module (330)', '2025-06-23 07:59:39', '2025-06-23', 'slider', NULL, ''),
(1293, 1, 328, 'Edit post for slider module (328)', '2025-06-23 08:58:04', '2025-06-23', 'slider', NULL, ''),
(1294, 1, 328, 'Edit post for slider module (328)', '2025-06-23 08:58:23', '2025-06-23', 'slider', NULL, ''),
(1295, 1, 334, 'Make post at HOME is no for News module (334)', '2025-06-23 09:12:13', '2025-06-23', 'News', NULL, ''),
(1296, 1, 334, 'Make post at HOME is yes for News module (334)', '2025-06-23 09:12:41', '2025-06-23', 'News', NULL, ''),
(1297, 1, 334, 'Make post at HOME is no for News module (334)', '2025-06-23 09:13:43', '2025-06-23', 'News', NULL, ''),
(1298, 1, 334, 'Make post at HOME is yes for News module (334)', '2025-06-23 09:14:17', '2025-06-23', 'News', NULL, ''),
(1299, 1, 1, 'Edit Settings  ( 1 )', '2025-06-23 09:57:08', '2025-06-23', 'settings', NULL, ''),
(1300, 1, 328, 'Edit post for slider module (328)', '2025-06-24 07:22:35', '2025-06-24', 'slider', NULL, ''),
(1301, 1, 333, 'Edit post for Album module (333)', '2025-06-24 08:23:08', '2025-06-24', 'Album', NULL, ''),
(1302, 1, 333, 'Edit post for Album module (333)', '2025-06-24 08:23:33', '2025-06-24', 'Album', NULL, ''),
(1303, 1, 333, 'Edit post for Album module (333)', '2025-06-24 08:23:53', '2025-06-24', 'Album', NULL, ''),
(1304, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:26:00', '2025-06-24', 'Album', NULL, ''),
(1305, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:27:31', '2025-06-24', 'Album', NULL, ''),
(1306, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:28:15', '2025-06-24', 'Album', NULL, ''),
(1307, 1, 200, 'Delete gallery from Album module (200)', '2025-06-24 08:28:29', '2025-06-24', 'Album', NULL, ''),
(1308, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:29:05', '2025-06-24', 'Album', NULL, ''),
(1309, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:30:01', '2025-06-24', 'Album', NULL, ''),
(1310, 1, 333, 'Add gallery for Album module (333)', '2025-06-24 08:30:41', '2025-06-24', 'Album', NULL, ''),
(1311, 1, 252, 'Edit post for About module (252)', '2025-06-24 11:08:16', '2025-06-24', 'About', NULL, ''),
(1312, 1, 252, 'Edit post for About module (252)', '2025-06-24 11:08:28', '2025-06-24', 'About', NULL, ''),
(1313, 1, 252, 'Edit post for About module (252)', '2025-06-24 11:09:31', '2025-06-24', 'About', NULL, ''),
(1314, 1, 328, 'Edit post for slider module (328)', '2025-07-03 05:39:23', '2025-07-03', 'slider', NULL, ''),
(1315, 1, 330, 'Edit post for slider module (330)', '2025-07-03 06:15:24', '2025-07-03', 'slider', NULL, ''),
(1316, 1, 330, 'Edit post for slider module (330)', '2025-07-03 06:17:49', '2025-07-03', 'slider', NULL, ''),
(1317, 1, 330, 'Edit post for slider module (330)', '2025-07-03 06:22:27', '2025-07-03', 'slider', NULL, ''),
(1318, 1, 330, 'Edit post for slider module (330)', '2025-07-03 06:22:52', '2025-07-03', 'slider', NULL, ''),
(1319, 1, 332, 'Edit post for Album module (332)', '2025-07-03 06:25:21', '2025-07-03', 'Album', NULL, ''),
(1320, 1, 332, 'Add gallery for Album module (332)', '2025-07-03 06:27:04', '2025-07-03', 'Album', NULL, ''),
(1321, 1, 176, 'Delete gallery from Album module (176)', '2025-07-03 06:27:11', '2025-07-03', 'Album', NULL, ''),
(1322, 1, 332, 'Add gallery for Album module (332)', '2025-07-03 06:29:36', '2025-07-03', 'Album', NULL, ''),
(1323, 1, 332, 'Add gallery for Album module (332)', '2025-07-03 06:31:07', '2025-07-03', 'Album', NULL, ''),
(1324, 1, 326, 'Edit post for Teaching_staff module (326)', '2025-07-08 19:15:09', '2025-07-08', 'Teaching_staff', NULL, ''),
(1325, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:02:06', '2025-07-09', 'slider', NULL, ''),
(1326, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:02:40', '2025-07-09', 'slider', NULL, ''),
(1327, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:07:15', '2025-07-09', 'slider', NULL, ''),
(1328, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:20:19', '2025-07-09', 'slider', NULL, ''),
(1329, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:22:46', '2025-07-09', 'slider', NULL, ''),
(1330, 1, 330, 'Edit post for slider module (330)', '2025-07-09 09:25:46', '2025-07-09', 'slider', NULL, ''),
(1331, 1, 325, 'Edit post for Teaching_staff module (325)', '2025-07-13 17:51:55', '2025-07-13', 'Teaching_staff', NULL, ''),
(1332, 1, 325, 'Edit post for Teaching_staff module (325)', '2025-07-13 17:52:23', '2025-07-13', 'Teaching_staff', NULL, ''),
(1333, 1, 357, 'Add post for Video module (357)', '2025-07-14 07:34:21', '2025-07-14', 'Video', NULL, ''),
(1334, 1, 357, 'Edit post for Video module (357)', '2025-07-14 07:39:15', '2025-07-14', 'Video', NULL, ''),
(1335, 1, 358, 'Add post for Album module (358)', '2025-07-25 08:08:37', '2025-07-25', 'Album', NULL, ''),
(1336, 1, 358, 'Add gallery for Album module (358)', '2025-07-25 08:10:23', '2025-07-25', 'Album', NULL, ''),
(1337, 1, 358, 'Add gallery for Album module (358)', '2025-07-25 08:10:25', '2025-07-25', 'Album', NULL, ''),
(1338, 1, 208, 'Edit gallery for Album module (208)', '2025-07-25 08:12:49', '2025-07-25', 'Album', NULL, ''),
(1339, 1, 358, 'Add gallery for Album module (358)', '2025-07-25 08:13:17', '2025-07-25', 'Album', NULL, ''),
(1340, 1, 358, 'Add gallery for Album module (358)', '2025-07-25 08:13:41', '2025-07-25', 'Album', NULL, ''),
(1341, 1, 358, 'Add gallery for Album module (358)', '2025-07-25 08:18:27', '2025-07-25', 'Album', NULL, ''),
(1342, 1, 55, 'Delete contact (55)', '2025-07-28 06:27:42', '2025-07-28', 'contact', NULL, ''),
(1343, 1, 54, 'Delete contact (54)', '2025-07-28 06:27:45', '2025-07-28', 'contact', NULL, ''),
(1344, 1, 53, 'Delete contact (53)', '2025-07-28 06:27:48', '2025-07-28', 'contact', NULL, ''),
(1345, 1, 358, 'Add gallery for Album module (358)', '2025-07-28 06:33:14', '2025-07-28', 'Album', NULL, ''),
(1346, 1, 358, 'Add gallery for Album module (358)', '2025-07-28 06:33:32', '2025-07-28', 'Album', NULL, ''),
(1347, 1, 358, 'Add gallery for Album module (358)', '2025-07-28 06:34:30', '2025-07-28', 'Album', NULL, ''),
(1348, 1, 358, 'Add gallery for Album module (358)', '2025-07-28 06:36:00', '2025-07-28', 'Album', NULL, ''),
(1349, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:16:00', '2025-07-31', 'Album', NULL, ''),
(1350, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:16:19', '2025-07-31', 'Album', NULL, ''),
(1351, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:16:34', '2025-07-31', 'Album', NULL, ''),
(1352, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:16:50', '2025-07-31', 'Album', NULL, ''),
(1353, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:17:12', '2025-07-31', 'Album', NULL, ''),
(1354, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:17:30', '2025-07-31', 'Album', NULL, ''),
(1355, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:17:57', '2025-07-31', 'Album', NULL, ''),
(1356, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:19:02', '2025-07-31', 'Album', NULL, ''),
(1357, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:19:17', '2025-07-31', 'Album', NULL, ''),
(1358, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:19:30', '2025-07-31', 'Album', NULL, ''),
(1359, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:19:56', '2025-07-31', 'Album', NULL, ''),
(1360, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:20:27', '2025-07-31', 'Album', NULL, ''),
(1361, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:21:00', '2025-07-31', 'Album', NULL, ''),
(1362, 1, 358, 'Add gallery for Album module (358)', '2025-07-31 06:21:15', '2025-07-31', 'Album', NULL, ''),
(1363, 1, 1, 'Edit Settings  ( 1 )', '2025-08-04 06:55:19', '2025-08-04', 'settings', NULL, ''),
(1364, 1, 359, 'Add post for Video module (359)', '2025-08-05 07:27:58', '2025-08-05', 'Video', NULL, ''),
(1365, 1, 360, 'Add post for News module (360)', '2025-08-06 07:25:13', '2025-08-06', 'News', NULL, ''),
(1366, 1, 360, 'Edit post for News module (360)', '2025-08-06 07:30:13', '2025-08-06', 'News', NULL, ''),
(1367, 1, 361, 'Add post for News module (361)', '2025-08-06 07:37:17', '2025-08-06', 'News', NULL, ''),
(1368, 1, 362, 'Add post for News module (362)', '2025-08-06 07:37:18', '2025-08-06', 'News', NULL, ''),
(1369, 1, 363, 'Add post for News module (363)', '2025-08-06 07:39:35', '2025-08-06', 'News', NULL, ''),
(1370, 1, 364, 'Add post for News module (364)', '2025-08-06 08:10:44', '2025-08-06', 'News', NULL, ''),
(1371, 1, 362, 'Delete post from News module (362)', '2025-08-06 09:32:17', '2025-08-06', 'News', NULL, ''),
(1372, 1, 361, 'Delete post from News module (361)', '2025-08-06 09:32:27', '2025-08-06', 'News', NULL, ''),
(1373, 1, 365, 'Add post for Album module (365)', '2025-08-07 07:43:53', '2025-08-07', 'Album', NULL, ''),
(1374, 1, 366, 'Add post for Album module (366)', '2025-08-07 07:43:56', '2025-08-07', 'Album', NULL, ''),
(1375, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 09:52:40', '2025-08-08', 'Album', NULL, ''),
(1376, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 09:54:42', '2025-08-08', 'Album', NULL, ''),
(1377, 1, 231, 'Delete gallery from Album module (231)', '2025-08-08 10:06:04', '2025-08-08', 'Album', NULL, ''),
(1378, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:06:43', '2025-08-08', 'Album', NULL, ''),
(1379, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:07:37', '2025-08-08', 'Album', NULL, ''),
(1380, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:08:23', '2025-08-08', 'Album', NULL, ''),
(1381, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:09:50', '2025-08-08', 'Album', NULL, ''),
(1382, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:10:46', '2025-08-08', 'Album', NULL, ''),
(1383, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:11:26', '2025-08-08', 'Album', NULL, ''),
(1384, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:12:00', '2025-08-08', 'Album', NULL, ''),
(1385, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:13:47', '2025-08-08', 'Album', NULL, ''),
(1386, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:33:22', '2025-08-08', 'Album', NULL, ''),
(1387, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:34:36', '2025-08-08', 'Album', NULL, ''),
(1388, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:34:43', '2025-08-08', 'Album', NULL, ''),
(1389, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:35:12', '2025-08-08', 'Album', NULL, ''),
(1390, 1, 242, 'Delete gallery from Album module (242)', '2025-08-08 10:35:23', '2025-08-08', 'Album', NULL, ''),
(1391, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:35:51', '2025-08-08', 'Album', NULL, ''),
(1392, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:37:16', '2025-08-08', 'Album', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(1393, 1, 366, 'Add gallery for Album module (366)', '2025-08-08 10:37:31', '2025-08-08', 'Album', NULL, ''),
(1394, 1, 245, 'Delete gallery from Album module (245)', '2025-08-08 10:38:29', '2025-08-08', 'Album', NULL, ''),
(1395, 1, 332, 'Add gallery for Album module (332)', '2025-08-08 10:46:07', '2025-08-08', 'Album', NULL, ''),
(1396, 1, 332, 'Add gallery for Album module (332)', '2025-08-08 10:46:40', '2025-08-08', 'Album', NULL, ''),
(1397, 1, 332, 'Add gallery for Album module (332)', '2025-08-08 10:47:53', '2025-08-08', 'Album', NULL, ''),
(1398, 1, 332, 'Add gallery for Album module (332)', '2025-08-08 10:51:53', '2025-08-08', 'Album', NULL, ''),
(1399, 1, 250, 'Delete gallery from Album module (250)', '2025-08-08 10:51:57', '2025-08-08', 'Album', NULL, ''),
(1400, 1, 215, 'Delete gallery from Album module (215)', '2025-08-08 10:53:05', '2025-08-08', 'Album', NULL, ''),
(1401, 1, 360, 'Edit post for News module (360)', '2025-08-08 11:06:54', '2025-08-08', 'News', NULL, ''),
(1402, 1, 363, 'Edit post for News module (363)', '2025-08-08 11:07:59', '2025-08-08', 'News', NULL, ''),
(1403, 1, 364, 'Edit post for News module (364)', '2025-08-08 11:11:43', '2025-08-08', 'News', NULL, ''),
(1404, 1, 364, 'Edit post for News module (364)', '2025-08-08 11:12:17', '2025-08-08', 'News', NULL, ''),
(1405, 1, 357, 'Edit post for Video module (357)', '2025-08-08 11:13:09', '2025-08-08', 'Video', NULL, ''),
(1406, 1, 373, 'Delete post from StudentLife module (373)', '2025-08-11 06:44:57', '2025-08-11', 'StudentLife', NULL, ''),
(1407, 1, 371, 'Delete posts from StudentLife module (371,370,369,368,367)', '2025-08-11 06:45:22', '2025-08-11', 'StudentLife', NULL, ''),
(1408, 1, 374, 'Add post for News module (374)', '2025-08-11 07:31:23', '2025-08-11', 'News', NULL, ''),
(1409, 1, 305, 'Edit post for pages module (305)', '2025-08-11 07:43:41', '2025-08-11', 'pages', NULL, ''),
(1410, 1, 251, 'Edit post for About module (251)', '2025-08-11 07:43:59', '2025-08-11', 'About', NULL, ''),
(1411, 1, 366, 'Edit post for Album module (366)', '2025-08-11 07:44:12', '2025-08-11', 'Album', NULL, ''),
(1412, 1, 359, 'Edit post for Video module (359)', '2025-08-11 07:44:30', '2025-08-11', 'Video', NULL, ''),
(1413, 1, 286, 'Edit post for Jobs module (286)', '2025-08-11 07:44:45', '2025-08-11', 'Jobs', NULL, ''),
(1414, 1, 375, 'Add post for StudentLife module (375)', '2025-08-11 07:45:32', '2025-08-11', 'StudentLife', NULL, ''),
(1415, 1, 375, 'Delete post from StudentLife module (375)', '2025-08-11 07:45:36', '2025-08-11', 'StudentLife', NULL, ''),
(1416, 1, 298, 'Edit post for Programs module (298)', '2025-08-11 07:46:00', '2025-08-11', 'Programs', NULL, ''),
(1417, 1, 330, 'Edit post for slider module (330)', '2025-08-11 07:46:32', '2025-08-11', 'slider', NULL, ''),
(1418, 1, 376, 'Add post for StudentLife module (376)', '2025-08-11 08:54:02', '2025-08-11', 'StudentLife', NULL, ''),
(1419, 1, 376, 'Edit post for StudentLife module (376)', '2025-08-11 08:54:18', '2025-08-11', 'StudentLife', NULL, ''),
(1420, 1, 376, 'Delete post from StudentLife module (376)', '2025-08-11 08:54:26', '2025-08-11', 'StudentLife', NULL, ''),
(1421, 1, 354, 'Edit post for StudentLife module (354)', '2025-08-12 05:25:17', '2025-08-12', 'StudentLife', NULL, ''),
(1422, 1, 372, 'Delete post from StudentLife module (372)', '2025-08-12 05:30:57', '2025-08-12', 'StudentLife', NULL, ''),
(1423, 1, 377, 'Add post for StudentLife module (377)', '2025-08-12 05:34:59', '2025-08-12', 'StudentLife', NULL, ''),
(1424, 1, 378, 'Add post for News module (378)', '2025-08-21 11:58:39', '2025-08-21', 'News', NULL, ''),
(1425, 1, 379, 'Add post for News module (379)', '2025-08-21 11:58:39', '2025-08-21', 'News', NULL, ''),
(1426, 1, 380, 'Add post for News module (380)', '2025-08-21 11:58:41', '2025-08-21', 'News', NULL, ''),
(1427, 1, 380, 'Delete posts from News module (380,379,378)', '2025-08-21 11:59:53', '2025-08-21', 'News', NULL, ''),
(1428, 1, 381, 'Add post for Album module (381)', '2025-08-21 12:03:15', '2025-08-21', 'Album', NULL, ''),
(1429, 1, 381, 'Add gallery for Album module (381)', '2025-08-21 12:03:52', '2025-08-21', 'Album', NULL, ''),
(1430, 1, 381, 'Make post at HOME is yes for Album module (381)', '2025-08-21 12:06:02', '2025-08-21', 'Album', NULL, ''),
(1431, 1, 381, 'Make post at HOME is no for Album module (381)', '2025-08-21 12:06:45', '2025-08-21', 'Album', NULL, ''),
(1432, 1, 381, 'Delete post from Album module (381)', '2025-08-21 12:07:57', '2025-08-21', 'Album', NULL, ''),
(1433, 1, 382, 'Add post for Video module (382)', '2025-08-27 15:07:05', '2025-08-27', 'Video', NULL, ''),
(1434, 1, 1, 'Add post for videos_gallery module (1)', '2025-08-31 12:52:46', '2025-08-31', 'videos_gallery', NULL, ''),
(1435, 1, 1, 'Make post at HOME is yes for videos_gallery module (1)', '2025-08-31 12:53:06', '2025-08-31', 'videos_gallery', NULL, ''),
(1436, 1, 8, 'Add category for create module (8)', '2025-09-01 09:51:21', '2025-09-01', 'create', NULL, ''),
(1437, 1, 2, 'Add post for About_academy module (2)', '2025-09-01 10:22:32', '2025-09-01', 'About_academy', NULL, ''),
(1438, 1, 3, 'Add post for About_academy module (3)', '2025-09-01 10:24:30', '2025-09-01', 'About_academy', NULL, ''),
(1439, 1, 4, 'Add post for staticpages module (4)', '2025-09-01 10:24:59', '2025-09-01', 'staticpages', NULL, ''),
(1440, 1, 5, 'Add post for videos_gallery module (5)', '2025-09-01 10:31:47', '2025-09-01', 'videos_gallery', NULL, ''),
(1441, 1, 1, 'Delete post from videos_gallery module (1)', '2025-09-01 10:31:53', '2025-09-01', 'videos_gallery', NULL, ''),
(1442, 1, 6, 'Add post for videos_gallery module (6)', '2025-09-01 10:32:08', '2025-09-01', 'videos_gallery', NULL, ''),
(1443, 1, 7, 'Add post for videos_gallery module (7)', '2025-09-01 10:32:30', '2025-09-01', 'videos_gallery', NULL, ''),
(1444, 1, 8, 'Add post for staticpages module (8)', '2025-09-01 10:54:20', '2025-09-01', 'staticpages', NULL, ''),
(1445, 1, 8, 'Edit post for staticpages module (8)', '2025-09-01 10:54:31', '2025-09-01', 'staticpages', NULL, ''),
(1446, 1, 8, 'Edit post for staticpages module (8)', '2025-09-01 11:01:08', '2025-09-01', 'staticpages', NULL, ''),
(1447, 1, 4, 'Edit post for staticpages module (4)', '2025-09-01 11:30:15', '2025-09-01', 'staticpages', NULL, ''),
(1448, 1, 9, 'Add post for staticpages module (9)', '2025-09-01 11:31:48', '2025-09-01', 'staticpages', NULL, ''),
(1449, 1, 10, 'Add post for staticpages module (10)', '2025-09-01 11:33:34', '2025-09-01', 'staticpages', NULL, ''),
(1450, 1, 11, 'Add post for staticpages module (11)', '2025-09-01 11:34:30', '2025-09-01', 'staticpages', NULL, ''),
(1451, 1, 12, 'Add post for staticpages module (12)', '2025-09-01 11:35:22', '2025-09-01', 'staticpages', NULL, ''),
(1452, 1, 12, 'Edit post for staticpages module (12)', '2025-09-01 11:40:02', '2025-09-01', 'staticpages', NULL, ''),
(1453, 1, 12, 'Edit post for staticpages module (12)', '2025-09-01 11:44:06', '2025-09-01', 'staticpages', NULL, ''),
(1454, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:04:17', '2025-09-01', 'About_academy', NULL, ''),
(1455, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:04:48', '2025-09-01', 'About_academy', NULL, ''),
(1456, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:04:58', '2025-09-01', 'About_academy', NULL, ''),
(1457, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:05:17', '2025-09-01', 'About_academy', NULL, ''),
(1458, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:05:36', '2025-09-01', 'About_academy', NULL, ''),
(1459, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:06:45', '2025-09-01', 'About_academy', NULL, ''),
(1460, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:07:15', '2025-09-01', 'About_academy', NULL, ''),
(1461, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:07:38', '2025-09-01', 'About_academy', NULL, ''),
(1462, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:09:06', '2025-09-01', 'About_academy', NULL, ''),
(1463, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:11:45', '2025-09-01', 'About_academy', NULL, ''),
(1464, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:22:32', '2025-09-01', 'About_academy', NULL, ''),
(1465, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:23:37', '2025-09-01', 'About_academy', NULL, ''),
(1466, 1, 12, 'Edit post for staticpages module (12)', '2025-09-01 12:24:55', '2025-09-01', 'staticpages', NULL, ''),
(1467, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 12:26:34', '2025-09-01', 'About_academy', NULL, ''),
(1468, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 13:07:05', '2025-09-01', 'About_academy', NULL, ''),
(1469, 1, 8, 'Edit post for About_academy module (8)', '2025-09-01 13:07:23', '2025-09-01', 'About_academy', NULL, ''),
(1470, 1, 13, 'Add post for News module (13)', '2025-09-01 13:18:10', '2025-09-01', 'News', NULL, ''),
(1471, 1, 13, 'Edit post for News module (13)', '2025-09-01 13:20:19', '2025-09-01', 'News', NULL, ''),
(1472, 1, 14, 'Add post for News module (14)', '2025-09-01 13:21:58', '2025-09-01', 'News', NULL, ''),
(1473, 1, 14, 'Edit post for News module (14)', '2025-09-01 13:22:09', '2025-09-01', 'News', NULL, ''),
(1474, 1, 15, 'Add post for News module (15)', '2025-09-01 13:23:11', '2025-09-01', 'News', NULL, ''),
(1475, 1, 15, 'Edit post for News module (15)', '2025-09-01 13:23:19', '2025-09-01', 'News', NULL, ''),
(1476, 1, 16, 'Add post for staticpages module (16)', '2025-09-02 06:53:39', '2025-09-02', 'staticpages', NULL, ''),
(1477, 1, 16, 'Edit post for staticpages module (16)', '2025-09-02 06:55:19', '2025-09-02', 'staticpages', NULL, ''),
(1478, 1, 16, 'Edit post for staticpages module (16)', '2025-09-02 06:56:12', '2025-09-02', 'staticpages', NULL, ''),
(1479, 1, 16, 'Edit post for staticpages module (16)', '2025-09-02 07:02:42', '2025-09-02', 'staticpages', NULL, ''),
(1480, 1, 9, 'Edit post for staticpages module (9)', '2025-09-02 07:03:26', '2025-09-02', 'staticpages', NULL, ''),
(1481, 1, 17, 'Add post for staticpages module (17)', '2025-09-02 08:54:10', '2025-09-02', 'staticpages', NULL, ''),
(1482, 1, 17, 'Edit post for staticpages module (17)', '2025-09-02 08:55:00', '2025-09-02', 'staticpages', NULL, ''),
(1483, 1, 17, 'Edit post for staticpages module (17)', '2025-09-02 08:56:26', '2025-09-02', 'staticpages', NULL, ''),
(1484, 1, 18, 'Add post for staticpages module (18)', '2025-09-02 09:32:11', '2025-09-02', 'staticpages', NULL, ''),
(1485, 1, 19, 'Add post for Album module (19)', '2025-09-02 09:35:58', '2025-09-02', 'Album', NULL, ''),
(1486, 1, 19, 'Edit post for Album module (19)', '2025-09-02 09:36:03', '2025-09-02', 'Album', NULL, ''),
(1487, 1, 20, 'Add post for test module (20)', '2025-09-02 10:24:11', '2025-09-02', 'test', NULL, ''),
(1488, 1, 21, 'Add post for our_events module (21)', '2025-09-02 10:38:16', '2025-09-02', 'our_events', NULL, ''),
(1489, 1, 21, 'Make post at HOME is yes for our_events module (21)', '2025-09-02 10:38:29', '2025-09-02', 'our_events', NULL, ''),
(1490, 1, 21, 'Make post at HOME is no for our_events module (21)', '2025-09-02 10:38:31', '2025-09-02', 'our_events', NULL, ''),
(1491, 1, 21, 'Edit post for our_events module (21)', '2025-09-02 10:51:09', '2025-09-02', 'our_events', NULL, ''),
(1492, 1, 21, 'Edit post for our_events module (21)', '2025-09-02 10:54:56', '2025-09-02', 'our_events', NULL, ''),
(1493, 1, 21, 'Edit post for our_events module (21)', '2025-09-02 10:55:27', '2025-09-02', 'our_events', NULL, ''),
(1494, 1, 21, 'Make post at HOME is yes for our_events module (21)', '2025-09-02 10:55:40', '2025-09-02', 'our_events', NULL, ''),
(1495, 1, 22, 'Add post for our_events module (22)', '2025-09-02 10:58:26', '2025-09-02', 'our_events', NULL, ''),
(1496, 1, 21, 'Make post at HOME is no for our_events module (21)', '2025-09-02 10:58:33', '2025-09-02', 'our_events', NULL, ''),
(1497, 1, 23, 'Add post for our_events module (23)', '2025-09-02 11:00:01', '2025-09-02', 'our_events', NULL, ''),
(1498, 1, 21, 'Make post at HOME is yes for our_events module (21)', '2025-09-02 11:00:07', '2025-09-02', 'our_events', NULL, ''),
(1499, 1, 21, 'Make post at HOME is no for our_events module (21)', '2025-09-02 11:00:10', '2025-09-02', 'our_events', NULL, ''),
(1500, 1, 24, 'Add post for our_events module (24)', '2025-09-02 11:01:31', '2025-09-02', 'our_events', NULL, ''),
(1501, 1, 24, 'Make post at HOME is yes for our_events module (24)', '2025-09-02 11:01:42', '2025-09-02', 'our_events', NULL, ''),
(1502, 1, 21, 'Edit post for our_events module (21)', '2025-09-02 11:24:35', '2025-09-02', 'our_events', NULL, ''),
(1503, 1, 21, 'Edit post for our_events module (21)', '2025-09-02 11:27:05', '2025-09-02', 'our_events', NULL, ''),
(1504, 1, 15, 'Make post at HOME is yes for News module (15)', '2025-09-02 12:09:39', '2025-09-02', 'News', NULL, ''),
(1505, 1, 15, 'Make post at HOME is no for News module (15)', '2025-09-02 12:09:54', '2025-09-02', 'News', NULL, ''),
(1506, 1, 15, 'Make post at HOME is yes for News module (15)', '2025-09-02 12:11:26', '2025-09-02', 'News', NULL, ''),
(1507, 1, 14, 'Make post at HOME is yes for News module (14)', '2025-09-02 12:11:28', '2025-09-02', 'News', NULL, ''),
(1508, 1, 23, 'Make post at HOME is yes for our_events module (23)', '2025-09-02 12:13:29', '2025-09-02', 'our_events', NULL, ''),
(1509, 1, 22, 'Make post at HOME is yes for our_events module (22)', '2025-09-02 12:13:31', '2025-09-02', 'our_events', NULL, ''),
(1510, 1, 25, 'Add post for partners module (25)', '2025-09-02 12:36:27', '2025-09-02', 'partners', NULL, ''),
(1511, 1, 26, 'Add post for partners module (26)', '2025-09-02 12:36:44', '2025-09-02', 'partners', NULL, ''),
(1512, 1, 27, 'Add post for partners module (27)', '2025-09-02 12:37:01', '2025-09-02', 'partners', NULL, ''),
(1513, 1, 28, 'Add post for partners module (28)', '2025-09-02 12:37:14', '2025-09-02', 'partners', NULL, ''),
(1514, 1, 29, 'Add post for partners module (29)', '2025-09-02 12:37:25', '2025-09-02', 'partners', NULL, ''),
(1515, 1, 30, 'Add post for partners module (30)', '2025-09-02 12:37:41', '2025-09-02', 'partners', NULL, ''),
(1516, 1, 30, 'Make post at HOME is yes for partners module (30)', '2025-09-02 12:37:46', '2025-09-02', 'partners', NULL, ''),
(1517, 1, 29, 'Make post at HOME is yes for partners module (29)', '2025-09-02 12:37:48', '2025-09-02', 'partners', NULL, ''),
(1518, 1, 28, 'Make post at HOME is yes for partners module (28)', '2025-09-02 12:37:50', '2025-09-02', 'partners', NULL, ''),
(1519, 1, 27, 'Make post at HOME is yes for partners module (27)', '2025-09-02 12:37:58', '2025-09-02', 'partners', NULL, ''),
(1520, 1, 26, 'Make post at HOME is yes for partners module (26)', '2025-09-02 12:38:00', '2025-09-02', 'partners', NULL, ''),
(1521, 1, 25, 'Make post at HOME is yes for partners module (25)', '2025-09-02 12:38:02', '2025-09-02', 'partners', NULL, ''),
(1522, 1, 25, 'Make post at HOME is no for partners module (25)', '2025-09-02 12:43:23', '2025-09-02', 'partners', NULL, ''),
(1523, 1, 31, 'Add post for authority_applications module (31)', '2025-09-02 12:52:44', '2025-09-02', 'authority_applications', NULL, ''),
(1524, 1, 31, 'Make post at HOME is yes for authority_applications module (31)', '2025-09-02 12:52:51', '2025-09-02', 'authority_applications', NULL, ''),
(1525, 1, 31, 'Edit post for authority_applications module (31)', '2025-09-02 12:55:48', '2025-09-02', 'authority_applications', NULL, ''),
(1526, 1, 31, 'Edit post for authority_applications module (31)', '2025-09-02 12:57:04', '2025-09-02', 'authority_applications', NULL, ''),
(1527, 1, 32, 'Add post for authority_applications module (32)', '2025-09-02 13:06:30', '2025-09-02', 'authority_applications', NULL, ''),
(1528, 1, 32, 'Make post at HOME is yes for authority_applications module (32)', '2025-09-02 13:06:34', '2025-09-02', 'authority_applications', NULL, ''),
(1529, 1, 33, 'Add post for releases module (33)', '2025-09-02 13:12:47', '2025-09-02', 'releases', NULL, ''),
(1530, 1, 32, 'Make post at HOME is no for authority_applications module (32)', '2025-09-02 13:17:55', '2025-09-02', 'authority_applications', NULL, ''),
(1531, 1, 33, 'Edit post for releases module (33)', '2025-09-02 13:23:38', '2025-09-02', 'releases', NULL, ''),
(1532, 1, 34, 'Add post for releases module (34)', '2025-09-02 13:24:32', '2025-09-02', 'releases', NULL, ''),
(1533, 1, 35, 'Add post for releases module (35)', '2025-09-02 13:25:12', '2025-09-02', 'releases', NULL, ''),
(1534, 1, 35, 'Make post at HOME is yes for releases module (35)', '2025-09-02 13:25:30', '2025-09-02', 'releases', NULL, ''),
(1535, 1, 34, 'Make post at HOME is yes for releases module (34)', '2025-09-02 13:25:32', '2025-09-02', 'releases', NULL, ''),
(1536, 1, 33, 'Make post at HOME is yes for releases module (33)', '2025-09-02 13:25:33', '2025-09-02', 'releases', NULL, ''),
(1537, 1, 36, 'Add post for our_rewards module (36)', '2025-09-02 13:57:24', '2025-09-02', 'our_rewards', NULL, ''),
(1538, 1, 37, 'Add post for our_rewards module (37)', '2025-09-02 13:58:03', '2025-09-02', 'our_rewards', NULL, ''),
(1539, 1, 38, 'Add post for our_rewards module (38)', '2025-09-02 13:58:30', '2025-09-02', 'our_rewards', NULL, ''),
(1540, 1, 39, 'Add post for careers module (39)', '2025-09-04 09:59:20', '2025-09-04', 'careers', NULL, ''),
(1541, 1, 39, 'Edit post for careers module (39)', '2025-09-04 09:59:55', '2025-09-04', 'careers', NULL, ''),
(1542, 1, 40, 'Add post for careers module (40)', '2025-09-04 10:22:07', '2025-09-04', 'careers', NULL, ''),
(1543, 1, 41, 'Add post for careers module (41)', '2025-09-04 10:23:00', '2025-09-04', 'careers', NULL, ''),
(1544, 1, 41, 'Edit post for careers module (41)', '2025-09-04 10:25:44', '2025-09-04', 'careers', NULL, ''),
(1545, 1, 40, 'Edit post for careers module (40)', '2025-09-04 10:26:16', '2025-09-04', 'careers', NULL, ''),
(1546, 1, 39, 'Edit post for careers module (39)', '2025-09-04 10:26:45', '2025-09-04', 'careers', NULL, ''),
(1547, 1, 39, 'Edit post for careers module (39)', '2025-09-04 10:28:48', '2025-09-04', 'careers', NULL, ''),
(1548, 1, 39, 'Edit post for careers module (39)', '2025-09-04 10:29:14', '2025-09-04', 'careers', NULL, ''),
(1549, 1, 39, 'Edit post for careers module (39)', '2025-09-04 10:29:37', '2025-09-04', 'careers', NULL, ''),
(1550, 1, 40, 'Edit post for careers module (40)', '2025-09-04 10:29:59', '2025-09-04', 'careers', NULL, ''),
(1551, 1, 40, 'Edit post for careers module (40)', '2025-09-04 10:30:04', '2025-09-04', 'careers', NULL, ''),
(1552, 1, 41, 'Edit post for careers module (41)', '2025-09-04 10:30:26', '2025-09-04', 'careers', NULL, ''),
(1553, 1, 24, 'Make post at HOME is no for our_events module (24)', '2025-09-04 14:11:41', '2025-09-04', 'our_events', NULL, ''),
(1554, 1, 22, 'Make post at HOME is no for our_events module (22)', '2025-09-07 07:12:34', '2025-09-07', 'our_events', NULL, ''),
(1555, 1, 23, 'Make post at HOME is no for our_events module (23)', '2025-09-07 07:12:37', '2025-09-07', 'our_events', NULL, ''),
(1556, 1, 24, 'Add gallery for our_events module (24)', '2025-09-07 07:13:00', '2025-09-07', 'our_events', NULL, ''),
(1557, 1, 24, 'Make post at HOME is yes for our_events module (24)', '2025-09-07 07:47:07', '2025-09-07', 'our_events', NULL, ''),
(1558, 1, 23, 'Make post at HOME is yes for our_events module (23)', '2025-09-07 07:47:10', '2025-09-07', 'our_events', NULL, ''),
(1559, 1, 22, 'Make post at HOME is yes for our_events module (22)', '2025-09-07 07:47:12', '2025-09-07', 'our_events', NULL, ''),
(1560, 1, 21, 'Make post at HOME is yes for our_events module (21)', '2025-09-07 07:47:15', '2025-09-07', 'our_events', NULL, ''),
(1561, 1, 41, 'Edit post for careers module (41)', '2025-09-07 07:56:10', '2025-09-07', 'careers', NULL, ''),
(1562, 1, 41, 'Edit post for careers module (41)', '2025-09-07 07:58:37', '2025-09-07', 'careers', NULL, ''),
(1563, 1, 252, 'Edit gallery for our_events module (252)', '2025-09-07 08:42:24', '2025-09-07', 'our_events', NULL, ''),
(1564, 1, 42, 'Add post for contact_with_departments module (42)', '2025-09-07 08:55:49', '2025-09-07', 'contact_with_departments', NULL, ''),
(1565, 1, 43, 'Add post for contact_with_departments module (43)', '2025-09-07 08:56:35', '2025-09-07', 'contact_with_departments', NULL, ''),
(1566, 1, 44, 'Add post for contact_with_departments module (44)', '2025-09-07 08:56:55', '2025-09-07', 'contact_with_departments', NULL, ''),
(1567, 1, 45, 'Add post for contact_with_departments module (45)', '2025-09-07 08:57:31', '2025-09-07', 'contact_with_departments', NULL, ''),
(1568, 1, 35, 'Edit post for releases module (35)', '2025-09-07 09:24:59', '2025-09-07', 'releases', NULL, ''),
(1569, 1, 46, 'Add post for Album module (46)', '2025-09-07 10:31:34', '2025-09-07', 'Album', NULL, ''),
(1570, 1, 47, 'Add post for Album module (47)', '2025-09-07 10:32:09', '2025-09-07', 'Album', NULL, ''),
(1571, 1, 48, 'Add post for Album module (48)', '2025-09-07 10:32:37', '2025-09-07', 'Album', NULL, ''),
(1572, 1, 49, 'Add post for Album module (49)', '2025-09-07 10:33:02', '2025-09-07', 'Album', NULL, ''),
(1573, 1, 50, 'Add post for Album module (50)', '2025-09-07 10:33:27', '2025-09-07', 'Album', NULL, ''),
(1574, 1, 50, 'Delete post from Album module (50)', '2025-09-07 10:33:40', '2025-09-07', 'Album', NULL, ''),
(1575, 1, 46, 'Make post at HOME is yes for Album module (46)', '2025-09-07 10:41:12', '2025-09-07', 'Album', NULL, ''),
(1576, 1, 47, 'Make post at HOME is yes for Album module (47)', '2025-09-07 10:41:14', '2025-09-07', 'Album', NULL, ''),
(1577, 1, 48, 'Make post at HOME is yes for Album module (48)', '2025-09-07 10:41:17', '2025-09-07', 'Album', NULL, ''),
(1578, 1, 49, 'Make post at HOME is yes for Album module (49)', '2025-09-07 10:41:20', '2025-09-07', 'Album', NULL, ''),
(1579, 1, 51, 'Add post for contact_us_page module (51)', '2025-09-08 08:26:39', '2025-09-08', 'contact_us_page', NULL, ''),
(1580, 1, 51, 'Edit post for contact_us_page module (51)', '2025-09-08 08:39:23', '2025-09-08', 'contact_us_page', NULL, ''),
(1581, 1, 51, 'Edit post for contact_us_page module (51)', '2025-09-08 08:53:41', '2025-09-08', 'contact_us_page', NULL, ''),
(1582, 1, 52, 'Add post for contact_us_page module (52)', '2025-09-08 09:18:14', '2025-09-08', 'contact_us_page', NULL, ''),
(1583, 1, 52, 'Edit post for contact_us_page module (52)', '2025-09-08 09:24:15', '2025-09-08', 'contact_us_page', NULL, ''),
(1584, 1, 53, 'Add post for staticpages module (53)', '2025-09-08 09:39:38', '2025-09-08', 'staticpages', NULL, ''),
(1585, 1, 54, 'Add post for contact_us module (54)', '2025-09-08 10:24:06', '2025-09-08', 'contact_us', NULL, ''),
(1586, 1, 55, 'Add post for staticpages module (55)', '2025-09-08 10:42:42', '2025-09-08', 'staticpages', NULL, ''),
(1587, 1, 53, 'Edit post for staticpages module (53)', '2025-09-08 11:04:38', '2025-09-08', 'staticpages', NULL, ''),
(1588, 1, 56, 'Add post for staticpages module (56)', '2025-09-08 11:09:36', '2025-09-08', 'staticpages', NULL, ''),
(1589, 1, 57, 'Add post for staticpages module (57)', '2025-09-08 11:10:27', '2025-09-08', 'staticpages', NULL, ''),
(1590, 1, 30, 'Edit post for partners module (30)', '2025-09-08 11:47:25', '2025-09-08', 'partners', NULL, ''),
(1591, 1, 30, 'Edit post for partners module (30)', '2025-09-08 11:47:32', '2025-09-08', 'partners', NULL, ''),
(1592, 1, 58, 'Add post for videos_gallery module (58)', '2025-09-09 10:08:05', '2025-09-09', 'videos_gallery', NULL, ''),
(1593, 1, 59, 'Add post for contact_with_departments module (59)', '2025-09-09 10:13:21', '2025-09-09', 'contact_with_departments', NULL, ''),
(1594, 1, 59, 'Delete post from contact_with_departments module (59)', '2025-09-09 10:13:27', '2025-09-09', 'contact_with_departments', NULL, ''),
(1595, 1, 60, 'Add post for open_details2 module (60)', '2025-09-09 10:29:27', '2025-09-09', 'open_details2', NULL, ''),
(1596, 1, 61, 'Add post for open_details2 module (61)', '2025-09-09 10:32:47', '2025-09-09', 'open_details2', NULL, ''),
(1597, 1, 62, 'Add post for open_details2 module (62)', '2025-09-09 10:41:25', '2025-09-09', 'open_details2', NULL, ''),
(1598, 1, 63, 'Add post for open_details2 module (63)', '2025-09-09 10:44:09', '2025-09-09', 'open_details2', NULL, ''),
(1599, 1, 64, 'Add post for open_details module (64)', '2025-09-09 12:43:08', '2025-09-09', 'open_details', NULL, ''),
(1600, 1, 65, 'Add post for open_details module (65)', '2025-09-09 12:44:04', '2025-09-09', 'open_details', NULL, ''),
(1601, 1, 66, 'Add post for open_details module (66)', '2025-09-09 12:46:46', '2025-09-09', 'open_details', NULL, ''),
(1602, 1, 67, 'Add post for open_details module (67)', '2025-09-09 12:59:59', '2025-09-09', 'open_details', NULL, ''),
(1603, 1, 68, 'Add post for open_details module (68)', '2025-09-09 13:00:26', '2025-09-09', 'open_details', NULL, ''),
(1604, 1, 69, 'Add post for open_details module (69)', '2025-09-09 13:00:42', '2025-09-09', 'open_details', NULL, ''),
(1605, 1, 70, 'Add post for open_details module (70)', '2025-09-09 13:11:07', '2025-09-09', 'open_details', NULL, ''),
(1606, 1, 71, 'Add post for open_details module (71)', '2025-09-09 13:25:30', '2025-09-09', 'open_details', NULL, ''),
(1607, 1, 72, 'Add post for open_details module (72)', '2025-09-09 13:39:22', '2025-09-09', 'open_details', NULL, ''),
(1608, 1, 73, 'Add post for open_details module (73)', '2025-09-09 13:41:57', '2025-09-09', 'open_details', NULL, ''),
(1609, 1, 74, 'Add post for open_details module (74)', '2025-09-09 13:44:39', '2025-09-09', 'open_details', NULL, ''),
(1610, 1, 75, 'Add post for open_details module (75)', '2025-09-09 13:46:32', '2025-09-09', 'open_details', NULL, ''),
(1611, 1, 76, 'Add post for open_details module (76)', '2025-09-09 13:48:21', '2025-09-09', 'open_details', NULL, ''),
(1612, 1, 77, 'Add post for open_details module (77)', '2025-09-09 13:49:15', '2025-09-09', 'open_details', NULL, ''),
(1613, 1, 78, 'Add post for open_details module (78)', '2025-09-09 13:49:58', '2025-09-09', 'open_details', NULL, ''),
(1614, 1, 78, 'Delete post from open_details module (78)', '2025-09-09 13:50:06', '2025-09-09', 'open_details', NULL, ''),
(1615, 1, 77, 'Delete post from open_details module (77)', '2025-09-09 13:50:10', '2025-09-09', 'open_details', NULL, ''),
(1616, 1, 76, 'Delete post from open_details module (76)', '2025-09-09 13:50:13', '2025-09-09', 'open_details', NULL, ''),
(1617, 1, 75, 'Delete post from open_details module (75)', '2025-09-09 13:50:17', '2025-09-09', 'open_details', NULL, ''),
(1618, 1, 74, 'Delete post from open_details module (74)', '2025-09-09 13:50:20', '2025-09-09', 'open_details', NULL, ''),
(1619, 1, 79, 'Add post for open_details module (79)', '2025-09-09 13:56:28', '2025-09-09', 'open_details', NULL, ''),
(1620, 1, 80, 'Add post for open_details module (80)', '2025-09-09 13:57:30', '2025-09-09', 'open_details', NULL, ''),
(1621, 1, 81, 'Add post for open_details module (81)', '2025-09-09 14:08:53', '2025-09-09', 'open_details', NULL, ''),
(1622, 1, 82, 'Add post for open_details module (82)', '2025-09-10 07:02:16', '2025-09-10', 'open_details', NULL, ''),
(1623, 1, 81, 'Edit post for open_details module (81)', '2025-09-10 12:59:04', '2025-09-10', 'open_details', NULL, ''),
(1624, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:49:11', '2025-09-10', 'open_details', NULL, ''),
(1625, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:49:23', '2025-09-10', 'open_details', NULL, ''),
(1626, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:49:55', '2025-09-10', 'open_details', NULL, ''),
(1627, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:51:21', '2025-09-10', 'open_details', NULL, ''),
(1628, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:51:41', '2025-09-10', 'open_details', NULL, ''),
(1629, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:55:54', '2025-09-10', 'open_details', NULL, ''),
(1630, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 13:58:16', '2025-09-10', 'open_details', NULL, ''),
(1631, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:01:30', '2025-09-10', 'open_details', NULL, ''),
(1632, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:02:22', '2025-09-10', 'open_details', NULL, ''),
(1633, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:04:24', '2025-09-10', 'open_details', NULL, ''),
(1634, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:05:09', '2025-09-10', 'open_details', NULL, ''),
(1635, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:34:41', '2025-09-10', 'open_details', NULL, ''),
(1636, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:35:33', '2025-09-10', 'open_details', NULL, ''),
(1637, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:41:42', '2025-09-10', 'open_details', NULL, ''),
(1638, 1, 80, 'Edit post for open_details module (80)', '2025-09-10 14:42:58', '2025-09-10', 'open_details', NULL, ''),
(1639, 1, 80, 'Edit post for open_details module (80)', '2025-09-11 06:36:37', '2025-09-11', 'open_details', NULL, ''),
(1640, 1, 83, 'Add post for open_details module (83)', '2025-09-11 06:44:16', '2025-09-11', 'open_details', NULL, ''),
(1641, 1, 82, 'Edit post for open_details module (82)', '2025-09-11 06:45:09', '2025-09-11', 'open_details', NULL, ''),
(1642, 1, 82, 'Edit post for open_details module (82)', '2025-09-11 06:54:46', '2025-09-11', 'open_details', NULL, ''),
(1643, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:14:40', '2025-09-11', 'open_details', NULL, ''),
(1644, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:14:55', '2025-09-11', 'open_details', NULL, ''),
(1645, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:15:00', '2025-09-11', 'open_details', NULL, ''),
(1646, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:15:53', '2025-09-11', 'open_details', NULL, ''),
(1647, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:16:34', '2025-09-11', 'open_details', NULL, ''),
(1648, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:16:42', '2025-09-11', 'open_details', NULL, ''),
(1649, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:21:00', '2025-09-11', 'open_details', NULL, ''),
(1650, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:36:01', '2025-09-11', 'open_details', NULL, ''),
(1651, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 07:36:17', '2025-09-11', 'open_details', NULL, ''),
(1652, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 07:47:56', '2025-09-11', 'settings', NULL, ''),
(1653, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 07:49:23', '2025-09-11', 'settings', NULL, ''),
(1654, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:03:18', '2025-09-11', 'settings', NULL, ''),
(1655, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:04:02', '2025-09-11', 'settings', NULL, ''),
(1656, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:09:27', '2025-09-11', 'settings', NULL, ''),
(1657, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:10:41', '2025-09-11', 'settings', NULL, ''),
(1658, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:11:26', '2025-09-11', 'settings', NULL, ''),
(1659, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:13:17', '2025-09-11', 'settings', NULL, ''),
(1660, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:14:15', '2025-09-11', 'settings', NULL, ''),
(1661, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:24:54', '2025-09-11', 'settings', NULL, ''),
(1662, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:27:45', '2025-09-11', 'settings', NULL, ''),
(1663, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:28:24', '2025-09-11', 'settings', NULL, ''),
(1664, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 08:28:30', '2025-09-11', 'settings', NULL, ''),
(1665, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 09:55:14', '2025-09-11', 'settings', NULL, ''),
(1666, 1, 1, 'Edit Settings  ( 1 )', '2025-09-11 09:55:25', '2025-09-11', 'settings', NULL, ''),
(1667, 1, 84, 'Add post for services module (84)', '2025-09-11 11:53:36', '2025-09-11', 'services', NULL, ''),
(1668, 1, 84, 'Delete post from services module (84)', '2025-09-11 11:55:13', '2025-09-11', 'services', NULL, ''),
(1669, 1, 85, 'Add post for services module (85)', '2025-09-11 11:57:45', '2025-09-11', 'services', NULL, ''),
(1670, 1, 85, 'Edit post for services module (85)', '2025-09-11 12:23:03', '2025-09-11', 'services', NULL, ''),
(1671, 1, 85, 'Edit post for services module (85)', '2025-09-11 12:23:56', '2025-09-11', 'services', NULL, ''),
(1672, 1, 86, 'Add post for our_services module (86)', '2025-09-11 12:56:39', '2025-09-11', 'our_services', NULL, ''),
(1673, 1, 83, 'Edit post for open_details module (83)', '2025-09-11 13:42:32', '2025-09-11', 'open_details', NULL, ''),
(1674, 1, 30, 'Edit post for partners module (30)', '2025-09-11 14:24:41', '2025-09-11', 'partners', NULL, ''),
(1675, 1, 87, 'Add post for our_services module (87)', '2025-09-14 09:40:26', '2025-09-14', 'our_services', NULL, ''),
(1676, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:41:24', '2025-09-14', 'our_services', NULL, ''),
(1677, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:46:25', '2025-09-14', 'our_services', NULL, ''),
(1678, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:46:38', '2025-09-14', 'our_services', NULL, ''),
(1679, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:48:39', '2025-09-14', 'our_services', NULL, ''),
(1680, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:49:44', '2025-09-14', 'our_services', NULL, ''),
(1681, 1, 87, 'Edit post for our_services module (87)', '2025-09-14 09:53:45', '2025-09-14', 'our_services', NULL, ''),
(1682, 1, 88, 'Add post for our_services module (88)', '2025-09-14 09:55:42', '2025-09-14', 'our_services', NULL, ''),
(1683, 1, 58, 'Delete post from videos_gallery module (58)', '2025-09-14 10:25:26', '2025-09-14', 'videos_gallery', NULL, ''),
(1684, 1, 5, 'Edit post for videos_gallery module (5)', '2025-09-14 10:27:11', '2025-09-14', 'videos_gallery', NULL, ''),
(1685, 1, 5, 'Edit post for videos_gallery module (5)', '2025-09-14 10:29:54', '2025-09-14', 'videos_gallery', NULL, ''),
(1686, 1, 5, 'Edit post for videos_gallery module (5)', '2025-09-14 10:31:21', '2025-09-14', 'videos_gallery', NULL, ''),
(1687, 1, 6, 'Edit post for videos_gallery module (6)', '2025-09-14 10:31:45', '2025-09-14', 'videos_gallery', NULL, ''),
(1688, 1, 7, 'Edit post for videos_gallery module (7)', '2025-09-14 10:32:08', '2025-09-14', 'videos_gallery', NULL, ''),
(1689, 1, 1, 'Edit Settings  ( 1 )', '2025-09-14 11:51:12', '2025-09-14', 'settings', NULL, ''),
(1690, 1, 1, 'Edit Settings  ( 1 )', '2025-09-14 11:54:06', '2025-09-14', 'settings', NULL, ''),
(1691, 1, 57, 'Edit post for staticpages module (57)', '2025-09-14 13:10:51', '2025-09-14', 'staticpages', NULL, ''),
(1692, 1, 56, 'Edit post for staticpages module (56)', '2025-09-14 13:11:26', '2025-09-14', 'staticpages', NULL, ''),
(1693, 1, 55, 'Edit post for staticpages module (55)', '2025-09-14 13:11:48', '2025-09-14', 'staticpages', NULL, ''),
(1694, 1, 17, 'Edit post for About_academy module (17)', '2025-09-15 08:27:48', '2025-09-15', 'About_academy', NULL, ''),
(1695, 1, 15, 'Make post at HOME is no for News module (15)', '2025-09-15 08:29:08', '2025-09-15', 'News', NULL, ''),
(1696, 1, 15, 'Make post at HOME is yes for News module (15)', '2025-09-15 08:33:26', '2025-09-15', 'News', NULL, ''),
(1697, 1, 9, 'Edit post for About_academy module (9)', '2025-09-15 10:02:39', '2025-09-15', 'About_academy', NULL, ''),
(1698, 1, 4, 'Edit post for About_academy module (4)', '2025-09-15 10:03:40', '2025-09-15', 'About_academy', NULL, ''),
(1699, 1, 8, 'Edit post for About_academy module (8)', '2025-09-16 16:55:13', '2025-09-16', 'About_academy', NULL, ''),
(1700, 1, 8, 'Edit post for About_academy module (8)', '2025-09-16 16:56:33', '2025-09-16', 'About_academy', NULL, ''),
(1701, 1, 8, 'Edit post for About_academy module (8)', '2025-09-16 16:57:45', '2025-09-16', 'About_academy', NULL, ''),
(1702, 1, 1, 'Edit Settings  ( 1 )', '2025-09-16 17:05:06', '2025-09-16', 'settings', NULL, ''),
(1703, 1, 53, 'Edit post for staticpages module (53)', '2025-09-16 17:06:28', '2025-09-16', 'staticpages', NULL, ''),
(1704, 1, 88, 'Edit post for our_services module (88)', '2025-09-16 17:26:25', '2025-09-16', 'our_services', NULL, ''),
(1705, 1, 87, 'Edit post for our_services module (87)', '2025-09-16 17:39:52', '2025-09-16', 'our_services', NULL, ''),
(1706, 1, 87, 'Edit post for our_services module (87)', '2025-09-16 17:41:54', '2025-09-16', 'our_services', NULL, ''),
(1707, 1, 88, 'Edit post for our_services module (88)', '2025-09-16 17:42:47', '2025-09-16', 'our_services', NULL, ''),
(1708, 1, 86, 'Edit post for our_services module (86)', '2025-09-16 17:46:25', '2025-09-16', 'our_services', NULL, ''),
(1709, 1, 85, 'Edit post for our_services module (85)', '2025-09-16 17:48:24', '2025-09-16', 'our_services', NULL, ''),
(1710, 1, 1, 'Edit Settings  ( 1 )', '2025-09-17 07:18:09', '2025-09-17', 'settings', NULL, ''),
(1711, 1, 5, 'Edit post for videos_gallery module (5)', '2025-09-17 08:18:42', '2025-09-17', 'videos_gallery', NULL, ''),
(1712, 1, 6, 'Edit post for videos_gallery module (6)', '2025-09-17 08:19:21', '2025-09-17', 'videos_gallery', NULL, ''),
(1713, 1, 7, 'Edit post for videos_gallery module (7)', '2025-09-17 08:20:05', '2025-09-17', 'videos_gallery', NULL, ''),
(1714, 1, 21, 'Edit post for our_events module (21)', '2025-09-17 12:31:09', '2025-09-17', 'our_events', NULL, ''),
(1715, 1, 21, 'Edit post for our_events module (21)', '2025-09-17 12:32:10', '2025-09-17', 'our_events', NULL, ''),
(1716, 1, 24, 'Edit post for our_events module (24)', '2025-09-17 12:48:08', '2025-09-17', 'our_events', NULL, ''),
(1717, 1, 24, 'Edit post for our_events module (24)', '2025-09-17 12:51:00', '2025-09-17', 'our_events', NULL, ''),
(1718, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:02:10', '2025-09-17', 'our_events', NULL, ''),
(1719, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:02:44', '2025-09-17', 'our_events', NULL, ''),
(1720, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:04:23', '2025-09-17', 'our_events', NULL, ''),
(1721, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:05:29', '2025-09-17', 'our_events', NULL, ''),
(1722, 1, 24, 'Delete post from our_events module (24)', '2025-09-17 13:06:04', '2025-09-17', 'our_events', NULL, ''),
(1723, 1, 22, 'Delete post from our_events module (22)', '2025-09-17 13:06:12', '2025-09-17', 'our_events', NULL, ''),
(1724, 1, 21, 'Edit post for our_events module (21)', '2025-09-17 13:28:11', '2025-09-17', 'our_events', NULL, ''),
(1725, 1, 23, 'Add gallery for our_events module (23)', '2025-09-17 13:42:59', '2025-09-17', 'our_events', NULL, ''),
(1726, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:43:23', '2025-09-17', 'our_events', NULL, ''),
(1727, 1, 23, 'Edit post for our_events module (23)', '2025-09-17 13:44:21', '2025-09-17', 'our_events', NULL, ''),
(1728, 1, 13, 'Delete post from News module (13)', '2025-09-17 13:49:33', '2025-09-17', 'News', NULL, ''),
(1729, 1, 15, 'Delete post from News module (15)', '2025-09-17 13:49:37', '2025-09-17', 'News', NULL, ''),
(1730, 1, 14, 'Delete post from News module (14)', '2025-09-17 13:49:41', '2025-09-17', 'News', NULL, ''),
(1731, 1, 89, 'Add post for News module (89)', '2025-09-17 13:54:17', '2025-09-17', 'News', NULL, ''),
(1732, 1, 89, 'Make post at HOME is yes for News module (89)', '2025-09-17 13:54:30', '2025-09-17', 'News', NULL, ''),
(1733, 1, 90, 'Add post for News module (90)', '2025-09-17 13:58:34', '2025-09-17', 'News', NULL, ''),
(1734, 1, 91, 'Add post for News module (91)', '2025-09-17 14:02:15', '2025-09-17', 'News', NULL, ''),
(1735, 1, 91, 'Edit post for News module (91)', '2025-09-17 14:03:09', '2025-09-17', 'News', NULL, ''),
(1736, 1, 91, 'Edit post for News module (91)', '2025-09-17 14:03:53', '2025-09-17', 'News', NULL, ''),
(1737, 1, 35, 'Delete post from releases module (35)', '2025-09-17 14:28:34', '2025-09-17', 'releases', NULL, ''),
(1738, 1, 34, 'Delete post from releases module (34)', '2025-09-17 14:28:45', '2025-09-17', 'releases', NULL, ''),
(1739, 1, 33, 'Delete post from releases module (33)', '2025-09-17 14:28:51', '2025-09-17', 'releases', NULL, ''),
(1740, 1, 92, 'Add post for releases module (92)', '2025-09-17 14:31:54', '2025-09-17', 'releases', NULL, ''),
(1741, 1, 92, 'Make post at HOME is yes for releases module (92)', '2025-09-17 14:32:02', '2025-09-17', 'releases', NULL, ''),
(1742, 1, 93, 'Add post for releases module (93)', '2025-09-17 14:32:52', '2025-09-17', 'releases', NULL, ''),
(1743, 1, 93, 'Delete post from releases module (93)', '2025-09-17 14:33:18', '2025-09-17', 'releases', NULL, ''),
(1744, 1, 94, 'Add post for releases module (94)', '2025-09-17 14:38:58', '2025-09-17', 'releases', NULL, ''),
(1745, 1, 94, 'Edit post for releases module (94)', '2025-09-17 14:55:35', '2025-09-17', 'releases', NULL, ''),
(1746, 1, 94, 'Make post at HOME is yes for releases module (94)', '2025-09-17 14:56:25', '2025-09-17', 'releases', NULL, ''),
(1747, 1, 95, 'Add post for releases module (95)', '2025-09-17 14:59:49', '2025-09-17', 'releases', NULL, ''),
(1748, 1, 95, 'Make post at HOME is yes for releases module (95)', '2025-09-17 14:59:56', '2025-09-17', 'releases', NULL, ''),
(1749, 1, 95, 'Delete post from releases module (95)', '2025-09-18 07:22:00', '2025-09-18', 'releases', NULL, ''),
(1750, 1, 96, 'Add post for releases module (96)', '2025-09-18 07:24:19', '2025-09-18', 'releases', NULL, ''),
(1751, 1, 96, 'Make post at HOME is yes for releases module (96)', '2025-09-18 07:25:02', '2025-09-18', 'releases', NULL, ''),
(1752, 1, 94, 'Edit post for releases module (94)', '2025-09-18 07:25:50', '2025-09-18', 'releases', NULL, ''),
(1753, 1, 92, 'Edit post for releases module (92)', '2025-09-18 07:26:29', '2025-09-18', 'releases', NULL, ''),
(1754, 1, 55, 'Edit post for staticpages module (55)', '2025-09-18 08:17:02', '2025-09-18', 'staticpages', NULL, ''),
(1755, 1, 1, 'Edit Settings  ( 1 )', '2025-09-18 08:31:44', '2025-09-18', 'settings', NULL, ''),
(1756, 1, 21, 'Edit post for our_events module (21)', '2025-09-18 09:01:24', '2025-09-18', 'our_events', NULL, ''),
(1757, 1, 97, 'Add post for other_events module (97)', '2025-09-18 09:23:36', '2025-09-18', 'other_events', NULL, ''),
(1758, 1, 98, 'Add post for releases module (98)', '2025-09-18 09:25:33', '2025-09-18', 'releases', NULL, ''),
(1759, 1, 98, 'Edit post for releases module (98)', '2025-09-18 09:35:55', '2025-09-18', 'releases', NULL, ''),
(1760, 1, 94, 'Delete post from releases module (94)', '2025-09-18 09:36:30', '2025-09-18', 'releases', NULL, ''),
(1761, 1, 98, 'Edit post for releases module (98)', '2025-09-18 09:36:36', '2025-09-18', 'releases', NULL, ''),
(1762, 1, 29, 'Edit post for partners module (29)', '2025-09-18 09:43:51', '2025-09-18', 'partners', NULL, ''),
(1763, 1, 28, 'Edit post for partners module (28)', '2025-09-18 09:44:15', '2025-09-18', 'partners', NULL, ''),
(1764, 1, 28, 'Edit post for partners module (28)', '2025-09-18 09:44:52', '2025-09-18', 'partners', NULL, ''),
(1765, 1, 4, 'Delete Application from  applications  module (4)', '2025-09-18 11:19:14', '2025-09-18', 'applications', NULL, ''),
(1766, 1, 6, 'Delete applications (6,5)', '2025-09-18 11:19:27', '2025-09-18', 'contact', NULL, ''),
(1767, 1, 7, 'Delete Application from  applications  module (7)', '2025-09-18 11:33:34', '2025-09-18', 'applications', NULL, ''),
(1768, 1, 8, 'Delete applications (8)', '2025-09-18 11:33:41', '2025-09-18', 'contact', NULL, ''),
(1769, 1, 1, 'Edit Settings  ( 1 )', '2025-09-21 12:32:12', '2025-09-21', 'settings', NULL, ''),
(1770, 1, 1, 'Edit Settings  ( 1 )', '2025-09-21 12:32:19', '2025-09-21', 'settings', NULL, ''),
(1771, 1, 1, 'Edit Settings  ( 1 )', '2025-09-21 12:34:54', '2025-09-21', 'settings', NULL, ''),
(1772, 1, 23, 'Edit post for our_events module (23)', '2025-09-21 12:49:44', '2025-09-21', 'our_events', NULL, ''),
(1773, 1, 23, 'Edit post for our_events module (23)', '2025-09-21 12:50:24', '2025-09-21', 'our_events', NULL, ''),
(1774, 1, 1, 'Edit Settings  ( 1 )', '2025-09-22 09:15:07', '2025-09-22', 'settings', NULL, ''),
(1775, 1, 1, 'Edit Settings  ( 1 )', '2025-09-22 09:15:14', '2025-09-22', 'settings', NULL, ''),
(1776, 1, 1, 'Edit Settings  ( 1 )', '2025-09-22 09:15:22', '2025-09-22', 'settings', NULL, ''),
(1777, 1, 57, 'Edit post for staticpages module (57)', '2025-09-22 10:17:30', '2025-09-22', 'staticpages', NULL, ''),
(1778, 1, 57, 'Edit post for staticpages module (57)', '2025-09-22 10:23:17', '2025-09-22', 'staticpages', NULL, ''),
(1779, 1, 57, 'Edit post for staticpages module (57)', '2025-09-22 10:24:30', '2025-09-22', 'staticpages', NULL, ''),
(1780, 1, 56, 'Edit post for staticpages module (56)', '2025-09-22 10:26:24', '2025-09-22', 'staticpages', NULL, ''),
(1781, 1, 56, 'Edit post for staticpages module (56)', '2025-09-22 10:27:18', '2025-09-22', 'staticpages', NULL, ''),
(1782, 1, 56, 'Edit post for staticpages module (56)', '2025-09-22 10:27:51', '2025-09-22', 'staticpages', NULL, ''),
(1783, 1, 55, 'Edit post for staticpages module (55)', '2025-09-22 10:30:40', '2025-09-22', 'staticpages', NULL, ''),
(1784, 1, 55, 'Edit post for staticpages module (55)', '2025-09-22 10:32:08', '2025-09-22', 'staticpages', NULL, ''),
(1785, 1, 17, 'Edit post for About_academy module (17)', '2025-09-22 10:35:25', '2025-09-22', 'About_academy', NULL, ''),
(1786, 1, 10, 'Edit post for About_academy module (10)', '2025-09-22 10:38:35', '2025-09-22', 'About_academy', NULL, ''),
(1787, 1, 10, 'Edit post for About_academy module (10)', '2025-09-22 10:39:13', '2025-09-22', 'About_academy', NULL, ''),
(1788, 1, 57, 'Edit post for staticpages module (57)', '2025-09-22 11:04:55', '2025-09-22', 'staticpages', NULL, ''),
(1789, 1, 57, 'Edit post for staticpages module (57)', '2025-09-22 11:05:12', '2025-09-22', 'staticpages', NULL, ''),
(1790, 1, 8, 'Edit post for About_academy module (8)', '2025-09-22 11:22:05', '2025-09-22', 'About_academy', NULL, ''),
(1791, 1, 10, 'Edit post for About_academy module (10)', '2025-09-22 11:24:31', '2025-09-22', 'About_academy', NULL, ''),
(1792, 1, 4, 'Edit post for About_academy module (4)', '2025-09-22 11:25:15', '2025-09-22', 'About_academy', NULL, ''),
(1793, 1, 8, 'Edit post for About_academy module (8)', '2025-09-22 11:25:18', '2025-09-22', 'About_academy', NULL, ''),
(1794, 1, 47, 'Edit post for Album module (47)', '2025-09-22 11:26:22', '2025-09-22', 'Album', NULL, ''),
(1795, 1, 47, 'Edit post for Album module (47)', '2025-09-22 11:26:29', '2025-09-22', 'Album', NULL, ''),
(1796, 1, 99, 'Add post for News module (99)', '2025-09-22 11:28:37', '2025-09-22', 'News', NULL, ''),
(1797, 1, 99, 'Edit post for News module (99)', '2025-09-22 11:34:54', '2025-09-22', 'News', NULL, ''),
(1798, 1, 99, 'Delete post from News module (99)', '2025-09-22 11:35:20', '2025-09-22', 'News', NULL, ''),
(1799, 1, 91, 'Activate posts from News module (91)', '2025-09-22 11:35:58', '2025-09-22', 'News', NULL, ''),
(1800, 1, 100, 'Add post for videos_gallery module (100)', '2025-09-22 11:37:51', '2025-09-22', 'videos_gallery', NULL, ''),
(1801, 1, 100, 'Edit post for videos_gallery module (100)', '2025-09-22 11:39:51', '2025-09-22', 'videos_gallery', NULL, ''),
(1802, 1, 100, 'Deactivate posts from videos_gallery module (100)', '2025-09-22 11:40:21', '2025-09-22', 'videos_gallery', NULL, ''),
(1803, 1, 4, 'Edit post for About_academy module (4)', '2025-09-22 11:40:26', '2025-09-22', 'About_academy', NULL, ''),
(1804, 1, 100, 'Delete posts from videos_gallery module (100)', '2025-09-22 11:40:34', '2025-09-22', 'videos_gallery', NULL, ''),
(1805, 1, 4, 'Edit post for About_academy module (4)', '2025-09-22 11:42:15', '2025-09-22', 'About_academy', NULL, ''),
(1806, 1, 101, 'Add post for other_events module (101)', '2025-09-22 11:45:07', '2025-09-22', 'other_events', NULL, ''),
(1807, 1, 101, 'Add gallery for other_events module (101)', '2025-09-22 11:47:00', '2025-09-22', 'other_events', NULL, ''),
(1808, 1, 101, 'Delete posts from other_events module (101)', '2025-09-22 11:47:36', '2025-09-22', 'other_events', NULL, ''),
(1809, 1, 102, 'Add post for our_events module (102)', '2025-09-22 11:49:35', '2025-09-22', 'our_events', NULL, ''),
(1810, 1, 102, 'Edit post for our_events module (102)', '2025-09-22 11:51:13', '2025-09-22', 'our_events', NULL, ''),
(1811, 1, 102, 'Add gallery for our_events module (102)', '2025-09-22 11:51:41', '2025-09-22', 'our_events', NULL, ''),
(1812, 1, 102, 'Add gallery for our_events module (102)', '2025-09-22 11:51:56', '2025-09-22', 'our_events', NULL, ''),
(1813, 1, 102, 'Add gallery for our_events module (102)', '2025-09-22 11:52:08', '2025-09-22', 'our_events', NULL, ''),
(1814, 1, 256, 'Edit gallery for our_events module (256)', '2025-09-22 11:54:06', '2025-09-22', 'our_events', NULL, ''),
(1815, 1, 257, 'Edit gallery for our_events module (257)', '2025-09-22 11:54:29', '2025-09-22', 'our_events', NULL, ''),
(1816, 1, 257, 'Edit gallery for our_events module (257)', '2025-09-22 11:54:42', '2025-09-22', 'our_events', NULL, ''),
(1817, 1, 257, 'Delete gallery from our_events module (257)', '2025-09-22 11:55:05', '2025-09-22', 'our_events', NULL, ''),
(1818, 1, 102, 'Delete post from our_events module (102)', '2025-09-22 11:56:07', '2025-09-22', 'our_events', NULL, ''),
(1819, 1, 103, 'Add post for our_events module (103)', '2025-09-22 11:57:46', '2025-09-22', 'our_events', NULL, ''),
(1820, 1, 103, 'Add gallery for our_events module (103)', '2025-09-22 11:58:02', '2025-09-22', 'our_events', NULL, ''),
(1821, 1, 103, 'Add gallery for our_events module (103)', '2025-09-22 11:58:27', '2025-09-22', 'our_events', NULL, ''),
(1822, 1, 104, 'Add post for Album module (104)', '2025-09-22 12:10:52', '2025-09-22', 'Album', NULL, ''),
(1823, 1, 104, 'Make post at HOME is yes for Album module (104)', '2025-09-22 12:15:03', '2025-09-22', 'Album', NULL, ''),
(1824, 1, 104, 'Delete post from Album module (104)', '2025-09-22 12:16:03', '2025-09-22', 'Album', NULL, ''),
(1825, 1, 6, 'Edit post for videos_gallery module (6)', '2025-09-22 12:17:27', '2025-09-22', 'videos_gallery', NULL, ''),
(1826, 1, 105, 'Add post for News module (105)', '2025-09-22 12:18:23', '2025-09-22', 'News', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(1827, 1, 105, 'Delete post from News module (105)', '2025-09-22 12:20:04', '2025-09-22', 'News', NULL, ''),
(1828, 1, 106, 'Add post for videos_gallery module (106)', '2025-09-22 12:25:43', '2025-09-22', 'videos_gallery', NULL, ''),
(1829, 1, 106, 'Delete post from videos_gallery module (106)', '2025-09-22 12:26:23', '2025-09-22', 'videos_gallery', NULL, ''),
(1830, 1, 107, 'Add post for other_events module (107)', '2025-09-22 12:30:41', '2025-09-22', 'other_events', NULL, ''),
(1831, 1, 107, 'Delete post from other_events module (107)', '2025-09-22 12:32:03', '2025-09-22', 'other_events', NULL, ''),
(1832, 1, 108, 'Add post for our_events module (108)', '2025-09-22 12:33:37', '2025-09-22', 'our_events', NULL, ''),
(1833, 1, 28, 'Edit post for partners module (28)', '2025-09-22 13:06:12', '2025-09-22', 'partners', NULL, ''),
(1834, 1, 28, 'Edit post for partners module (28)', '2025-09-22 13:07:29', '2025-09-22', 'partners', NULL, ''),
(1835, 1, 109, 'Add post for releases module (109)', '2025-09-22 13:20:54', '2025-09-22', 'releases', NULL, ''),
(1836, 1, 109, 'Delete post from releases module (109)', '2025-09-22 13:21:38', '2025-09-22', 'releases', NULL, ''),
(1837, 1, 110, 'Add post for our_rewards module (110)', '2025-09-22 13:23:35', '2025-09-22', 'our_rewards', NULL, ''),
(1838, 1, 110, 'Delete post from our_rewards module (110)', '2025-09-22 13:25:36', '2025-09-22', 'our_rewards', NULL, ''),
(1839, 1, 111, 'Add post for authority_applications module (111)', '2025-09-22 13:32:42', '2025-09-22', 'authority_applications', NULL, ''),
(1840, 1, 112, 'Add post for careers module (112)', '2025-09-22 13:35:57', '2025-09-22', 'careers', NULL, ''),
(1841, 1, 112, 'Delete post from careers module (112)', '2025-09-22 13:37:02', '2025-09-22', 'careers', NULL, ''),
(1842, 1, 113, 'Add post for contact_with_departments module (113)', '2025-09-22 13:38:44', '2025-09-22', 'contact_with_departments', NULL, ''),
(1843, 1, 113, 'Delete post from contact_with_departments module (113)', '2025-09-22 13:39:15', '2025-09-22', 'contact_with_departments', NULL, ''),
(1844, 1, 114, 'Add post for open_details module (114)', '2025-09-22 13:42:28', '2025-09-22', 'open_details', NULL, ''),
(1845, 1, 114, 'Delete post from open_details module (114)', '2025-09-22 13:43:06', '2025-09-22', 'open_details', NULL, ''),
(1846, 1, 115, 'Add post for Album module (115)', '2025-09-23 10:43:15', '2025-09-23', 'Album', NULL, ''),
(1847, 1, 115, 'Delete post from Album module (115)', '2025-09-23 10:44:25', '2025-09-23', 'Album', NULL, ''),
(1848, 1, 116, 'Add post for News module (116)', '2025-09-23 11:09:03', '2025-09-23', 'News', NULL, ''),
(1849, 1, 116, 'Delete post from News module (116)', '2025-09-23 11:09:46', '2025-09-23', 'News', NULL, ''),
(1850, 1, 98, 'Edit post for releases module (98)', '2025-09-24 07:00:25', '2025-09-24', 'releases', NULL, ''),
(1851, 1, 117, 'Add post for releases module (117)', '2025-09-24 07:38:18', '2025-09-24', 'releases', NULL, ''),
(1852, 1, 117, 'Edit post for releases module (117)', '2025-09-24 07:38:51', '2025-09-24', 'releases', NULL, ''),
(1853, 1, 117, 'Edit post for releases module (117)', '2025-09-24 07:39:41', '2025-09-24', 'releases', NULL, ''),
(1854, 1, 117, 'Edit post for releases module (117)', '2025-09-24 07:40:22', '2025-09-24', 'releases', NULL, ''),
(1855, 1, 117, 'Make post at HOME is yes for releases module (117)', '2025-09-24 08:10:34', '2025-09-24', 'releases', NULL, ''),
(1856, 1, 117, 'Make post at HOME is no for releases module (117)', '2025-09-24 08:10:49', '2025-09-24', 'releases', NULL, ''),
(1857, 1, 117, 'Make post at HOME is yes for releases module (117)', '2025-09-24 08:11:28', '2025-09-24', 'releases', NULL, ''),
(1858, 1, 117, 'Delete post from releases module (117)', '2025-09-24 08:12:37', '2025-09-24', 'releases', NULL, ''),
(1859, 1, 49, 'Edit post for Album module (49)', '2025-09-24 12:37:11', '2025-09-24', 'Album', NULL, ''),
(1860, 1, 90, 'Make post at HOME is yes for News module (90)', '2025-09-24 12:41:51', '2025-09-24', 'News', NULL, ''),
(1861, 1, 91, 'Make post at HOME is yes for News module (91)', '2025-09-24 12:41:57', '2025-09-24', 'News', NULL, ''),
(1862, 1, 90, 'Make post at HOME is no for News module (90)', '2025-09-24 12:42:51', '2025-09-24', 'News', NULL, ''),
(1863, 1, 90, 'Make post at HOME is yes for News module (90)', '2025-09-24 12:46:59', '2025-09-24', 'News', NULL, ''),
(1864, 1, 118, 'Add post for News module (118)', '2025-09-24 12:48:43', '2025-09-24', 'News', NULL, ''),
(1865, 1, 118, 'Make post at HOME is yes for News module (118)', '2025-09-24 12:49:17', '2025-09-24', 'News', NULL, ''),
(1866, 1, 118, 'Delete post from News module (118)', '2025-09-24 12:50:43', '2025-09-24', 'News', NULL, ''),
(1867, 1, 119, 'Add post for videos_gallery module (119)', '2025-09-24 12:55:24', '2025-09-24', 'videos_gallery', NULL, ''),
(1868, 1, 119, 'Edit post for videos_gallery module (119)', '2025-09-24 12:56:59', '2025-09-24', 'videos_gallery', NULL, ''),
(1869, 1, 119, 'Edit post for videos_gallery module (119)', '2025-09-24 12:58:27', '2025-09-24', 'videos_gallery', NULL, ''),
(1870, 1, 119, 'Edit post for videos_gallery module (119)', '2025-09-24 12:59:12', '2025-09-24', 'videos_gallery', NULL, ''),
(1871, 1, 17, 'Edit post for About_academy module (17)', '2025-09-24 13:12:22', '2025-09-24', 'About_academy', NULL, ''),
(1872, 1, 17, 'Edit post for About_academy module (17)', '2025-09-24 13:13:25', '2025-09-24', 'About_academy', NULL, ''),
(1873, 1, 17, 'Edit post for About_academy module (17)', '2025-09-24 13:22:17', '2025-09-24', 'About_academy', NULL, ''),
(1874, 1, 90, 'Edit post for News module (90)', '2025-09-24 13:24:50', '2025-09-24', 'News', NULL, ''),
(1875, 1, 89, 'Edit post for News module (89)', '2025-09-24 13:25:26', '2025-09-24', 'News', NULL, ''),
(1876, 1, 89, 'Edit post for News module (89)', '2025-09-24 13:25:56', '2025-09-24', 'News', NULL, ''),
(1877, 1, 30, 'Edit post for partners module (30)', '2025-09-24 13:26:53', '2025-09-24', 'partners', NULL, ''),
(1878, 1, 30, 'Edit post for partners module (30)', '2025-09-24 13:29:36', '2025-09-24', 'partners', NULL, ''),
(1879, 1, 28, 'Delete post from partners module (28)', '2025-09-24 13:35:49', '2025-09-24', 'partners', NULL, ''),
(1880, 1, 119, 'Edit post for videos_gallery module (119)', '2025-09-24 13:37:36', '2025-09-24', 'videos_gallery', NULL, ''),
(1881, 1, 5, 'Edit post for videos_gallery module (5)', '2025-09-24 13:38:14', '2025-09-24', 'videos_gallery', NULL, ''),
(1882, 1, 6, 'Edit post for videos_gallery module (6)', '2025-09-24 13:38:49', '2025-09-24', 'videos_gallery', NULL, ''),
(1883, 1, 7, 'Edit post for videos_gallery module (7)', '2025-09-24 13:39:33', '2025-09-24', 'videos_gallery', NULL, ''),
(1884, 1, 25, 'Make post at HOME is yes for partners module (25)', '2025-09-24 14:12:35', '2025-09-24', 'partners', NULL, ''),
(1885, 1, 29, 'Edit post for partners module (29)', '2025-09-24 14:16:05', '2025-09-24', 'partners', NULL, ''),
(1886, 1, 120, 'Add post for releases module (120)', '2025-09-25 09:44:03', '2025-09-25', 'releases', NULL, ''),
(1887, 1, 120, 'Make post at HOME is yes for releases module (120)', '2025-09-25 09:47:47', '2025-09-25', 'releases', NULL, ''),
(1888, 1, 121, 'Add post for our_events module (121)', '2025-09-25 09:56:16', '2025-09-25', 'our_events', NULL, ''),
(1889, 1, 121, 'Add gallery for our_events module (121)', '2025-09-25 09:56:51', '2025-09-25', 'our_events', NULL, ''),
(1890, 1, 121, 'Make post at HOME is yes for our_events module (121)', '2025-09-25 09:57:45', '2025-09-25', 'our_events', NULL, ''),
(1891, 1, 121, 'Edit post for our_events module (121)', '2025-09-25 10:00:58', '2025-09-25', 'our_events', NULL, ''),
(1892, 1, 121, 'Edit post for our_events module (121)', '2025-09-25 10:02:10', '2025-09-25', 'our_events', NULL, ''),
(1893, 1, 122, 'Add post for careers module (122)', '2025-09-25 10:08:59', '2025-09-25', 'careers', NULL, ''),
(1894, 1, 123, 'Add post for Album module (123)', '2025-09-25 10:17:21', '2025-09-25', 'Album', NULL, ''),
(1895, 1, 120, 'Edit post for releases module (120)', '2025-09-25 12:26:02', '2025-09-25', 'releases', NULL, ''),
(1896, 1, 125, 'Add post for News module (125)', '2025-09-25 14:16:33', '2025-09-25', 'News', NULL, ''),
(1897, 1, 125, 'Edit post for News module (125)', '2025-09-25 14:17:08', '2025-09-25', 'News', NULL, ''),
(1898, 1, 47, 'Add jobs group (47)', '2025-09-28 06:36:41', '2025-09-28', 'groups', NULL, ''),
(1899, 1, 0, 'Add seham user ({\"id\":124,\"role_id\":47,\"name\":\"seham\",\"username\":\"seham\",\"email\":\"seham@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:40:24', '2025-09-28', 'users', NULL, ''),
(1900, 1, 48, 'Add somya-maryam_group group (48)', '2025-09-28 06:43:08', '2025-09-28', 'groups', NULL, ''),
(1901, 1, 0, 'Add fatima user ({\"id\":125,\"role_id\":47,\"name\":\"fatima\",\"username\":\"fatima\",\"email\":\"f.alhassani@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:47:37', '2025-09-28', 'users', NULL, ''),
(1902, 1, 0, 'Add somaya user ({\"id\":126,\"role_id\":48,\"name\":\"somaya\",\"username\":\"somaya\",\"email\":\"sessam@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:48:13', '2025-09-28', 'users', NULL, ''),
(1903, 1, 0, 'Add maryam user ({\"id\":127,\"role_id\":48,\"name\":\"maryam\",\"username\":\"maryam\",\"email\":\"maryam.k@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:48:42', '2025-09-28', 'users', NULL, ''),
(1904, 1, 49, 'Add news group (49)', '2025-09-28 06:49:42', '2025-09-28', 'groups', NULL, ''),
(1905, 1, 0, 'Add ayakhalil user ({\"id\":128,\"role_id\":49,\"name\":\"ayakhalil\",\"username\":\"ayakhalil\",\"email\":\"aya@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:52:08', '2025-09-28', 'users', NULL, ''),
(1906, 1, 50, 'Add events group (50)', '2025-09-28 06:52:55', '2025-09-28', 'groups', NULL, ''),
(1907, 1, 0, 'Add asma user ({\"id\":129,\"role_id\":50,\"name\":\"asma\",\"username\":\"asma\",\"email\":\"asma@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:53:50', '2025-09-28', 'users', NULL, ''),
(1908, 1, 51, 'Add events_releases group (51)', '2025-09-28 06:54:31', '2025-09-28', 'groups', NULL, ''),
(1909, 1, 0, 'Add nouf user ({\"id\":130,\"role_id\":51,\"name\":\"nouf\",\"username\":\"nouf\",\"email\":\"nouf@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:56:20', '2025-09-28', 'users', NULL, ''),
(1910, 1, 52, 'Add policies group (52)', '2025-09-28 06:57:11', '2025-09-28', 'groups', NULL, ''),
(1911, 1, 0, 'Add aisha user ({\"id\":131,\"role_id\":52,\"name\":\"aisha\",\"username\":\"aisha\",\"email\":\"aisha.z@fcma.gov.ae\",\"email_verified_at\":null,\"last_login_ip\":\"0\",\"last_login_at\":\"0\",\"created_at\":null,\"updated_at\":null,\"member_id\":0})', '2025-09-28 06:59:43', '2025-09-28', 'users', NULL, ''),
(1912, 1, 92, 'Edit post for releases module (92)', '2025-09-28 07:24:42', '2025-09-28', 'releases', NULL, ''),
(1913, 1, 98, 'Edit post for releases module (98)', '2025-09-28 07:25:02', '2025-09-28', 'releases', NULL, ''),
(1914, 1, 96, 'Edit post for releases module (96)', '2025-09-28 07:25:20', '2025-09-28', 'releases', NULL, ''),
(1915, 1, 122, 'Edit post for careers module (122)', '2025-09-28 08:24:06', '2025-09-28', 'careers', NULL, ''),
(1916, 1, 41, 'Edit post for careers module (41)', '2025-09-28 08:24:27', '2025-09-28', 'careers', NULL, ''),
(1917, 1, 39, 'Edit post for careers module (39)', '2025-09-28 08:24:40', '2025-09-28', 'careers', NULL, ''),
(1918, 1, 40, 'Edit post for careers module (40)', '2025-09-28 08:24:57', '2025-09-28', 'careers', NULL, ''),
(1919, 1, 122, 'Edit post for careers module (122)', '2025-09-28 08:55:15', '2025-09-28', 'careers', NULL, ''),
(1920, 1, 122, 'Edit post for careers module (122)', '2025-09-28 08:55:20', '2025-09-28', 'careers', NULL, ''),
(1921, 1, 122, 'Edit post for careers module (122)', '2025-09-28 08:55:30', '2025-09-28', 'careers', NULL, ''),
(1922, 1, 40, 'Edit post for careers module (40)', '2025-09-28 09:06:32', '2025-09-28', 'careers', NULL, ''),
(1923, 130, 126, 'Add post for our_events module (126)', '2025-10-01 06:08:07', '2025-10-01', 'our_events', NULL, ''),
(1924, 130, 127, 'Add post for our_events module (127)', '2025-10-01 06:31:38', '2025-10-01', 'our_events', NULL, ''),
(1925, 128, 128, 'Add post for News module (128)', '2025-10-01 06:35:07', '2025-10-01', 'News', NULL, ''),
(1926, 128, 128, 'Edit post for News module (128)', '2025-10-01 06:35:33', '2025-10-01', 'News', NULL, ''),
(1927, 128, 125, 'Delete post from News module (125)', '2025-10-01 06:35:47', '2025-10-01', 'News', NULL, ''),
(1928, 128, 124, 'Delete post from News module (124)', '2025-10-01 06:35:50', '2025-10-01', 'News', NULL, ''),
(1929, 128, 90, 'Delete post from News module (90)', '2025-10-01 06:35:57', '2025-10-01', 'News', NULL, ''),
(1930, 128, 89, 'Delete post from News module (89)', '2025-10-01 06:36:01', '2025-10-01', 'News', NULL, ''),
(1931, 128, 91, 'Delete post from News module (91)', '2025-10-01 06:36:05', '2025-10-01', 'News', NULL, ''),
(1932, 130, 129, 'Add post for our_events module (129)', '2025-10-01 06:39:59', '2025-10-01', 'our_events', NULL, ''),
(1933, 128, 128, 'Delete post from News module (128)', '2025-10-01 06:43:03', '2025-10-01', 'News', NULL, ''),
(1934, 130, 129, 'Edit post for our_events module (129)', '2025-10-01 06:44:02', '2025-10-01', 'our_events', NULL, ''),
(1935, 130, 129, 'Edit post for our_events module (129)', '2025-10-01 06:44:59', '2025-10-01', 'our_events', NULL, ''),
(1936, 128, 130, 'Add post for News module (130)', '2025-10-01 06:51:47', '2025-10-01', 'News', NULL, ''),
(1937, 130, 131, 'Add post for our_events module (131)', '2025-10-01 06:53:04', '2025-10-01', 'our_events', NULL, ''),
(1938, 128, 132, 'Add post for News module (132)', '2025-10-01 06:54:41', '2025-10-01', 'News', NULL, ''),
(1939, 128, 133, 'Add post for News module (133)', '2025-10-01 06:57:29', '2025-10-01', 'News', NULL, ''),
(1940, 130, 134, 'Add post for our_events module (134)', '2025-10-01 06:57:57', '2025-10-01', 'our_events', NULL, ''),
(1941, 128, 135, 'Add post for News module (135)', '2025-10-01 06:59:19', '2025-10-01', 'News', NULL, ''),
(1942, 128, 136, 'Add post for News module (136)', '2025-10-01 07:01:34', '2025-10-01', 'News', NULL, ''),
(1943, 130, 137, 'Add post for our_events module (137)', '2025-10-01 07:02:55', '2025-10-01', 'our_events', NULL, ''),
(1944, 128, 138, 'Add post for News module (138)', '2025-10-01 07:05:47', '2025-10-01', 'News', NULL, ''),
(1945, 130, 139, 'Add post for our_events module (139)', '2025-10-01 07:06:27', '2025-10-01', 'our_events', NULL, ''),
(1946, 128, 140, 'Add post for News module (140)', '2025-10-01 07:08:36', '2025-10-01', 'News', NULL, ''),
(1947, 128, 141, 'Add post for News module (141)', '2025-10-01 07:10:27', '2025-10-01', 'News', NULL, ''),
(1948, 128, 142, 'Add post for News module (142)', '2025-10-01 07:12:28', '2025-10-01', 'News', NULL, ''),
(1949, 130, 143, 'Add post for our_events module (143)', '2025-10-01 07:17:05', '2025-10-01', 'our_events', NULL, ''),
(1950, 128, 144, 'Add post for News module (144)', '2025-10-01 07:17:06', '2025-10-01', 'News', NULL, ''),
(1951, 128, 145, 'Add post for News module (145)', '2025-10-01 07:20:26', '2025-10-01', 'News', NULL, ''),
(1952, 130, 146, 'Add post for our_events module (146)', '2025-10-01 07:23:44', '2025-10-01', 'our_events', NULL, ''),
(1953, 128, 147, 'Add post for News module (147)', '2025-10-01 07:24:10', '2025-10-01', 'News', NULL, ''),
(1954, 130, 148, 'Add post for our_events module (148)', '2025-10-01 07:24:49', '2025-10-01', 'our_events', NULL, ''),
(1955, 130, 148, 'Delete post from our_events module (148)', '2025-10-01 07:25:06', '2025-10-01', 'our_events', NULL, ''),
(1956, 128, 149, 'Add post for News module (149)', '2025-10-01 07:27:13', '2025-10-01', 'News', NULL, ''),
(1957, 130, 150, 'Add post for our_events module (150)', '2025-10-01 07:28:56', '2025-10-01', 'our_events', NULL, ''),
(1958, 130, 151, 'Add post for our_events module (151)', '2025-10-01 07:31:29', '2025-10-01', 'our_events', NULL, ''),
(1959, 130, 152, 'Add post for our_events module (152)', '2025-10-01 07:32:13', '2025-10-01', 'our_events', NULL, ''),
(1960, 128, 153, 'Add post for News module (153)', '2025-10-01 07:32:34', '2025-10-01', 'News', NULL, ''),
(1961, 128, 153, 'Delete post from News module (153)', '2025-10-01 07:32:45', '2025-10-01', 'News', NULL, ''),
(1962, 130, 154, 'Add post for our_events module (154)', '2025-10-01 07:34:59', '2025-10-01', 'our_events', NULL, ''),
(1963, 128, 155, 'Add post for News module (155)', '2025-10-01 07:35:11', '2025-10-01', 'News', NULL, ''),
(1964, 130, 152, 'Delete post from our_events module (152)', '2025-10-01 07:35:18', '2025-10-01', 'our_events', NULL, ''),
(1965, 130, 150, 'Edit post for our_events module (150)', '2025-10-01 07:36:26', '2025-10-01', 'our_events', NULL, ''),
(1966, 130, 150, 'Edit post for our_events module (150)', '2025-10-01 07:36:47', '2025-10-01', 'our_events', NULL, ''),
(1967, 128, 156, 'Add post for News module (156)', '2025-10-01 07:37:06', '2025-10-01', 'News', NULL, ''),
(1968, 130, 157, 'Add post for our_events module (157)', '2025-10-01 07:37:36', '2025-10-01', 'our_events', NULL, ''),
(1969, 130, 158, 'Add post for our_events module (158)', '2025-10-01 07:42:58', '2025-10-01', 'our_events', NULL, ''),
(1970, 128, 159, 'Add post for News module (159)', '2025-10-01 07:45:17', '2025-10-01', 'News', NULL, ''),
(1971, 128, 160, 'Add post for News module (160)', '2025-10-01 07:46:47', '2025-10-01', 'News', NULL, ''),
(1972, 128, 161, 'Add post for News module (161)', '2025-10-01 07:48:24', '2025-10-01', 'News', NULL, ''),
(1973, 130, 162, 'Add post for our_events module (162)', '2025-10-01 07:50:38', '2025-10-01', 'our_events', NULL, ''),
(1974, 128, 163, 'Add post for News module (163)', '2025-10-01 07:51:12', '2025-10-01', 'News', NULL, ''),
(1975, 128, 164, 'Add post for News module (164)', '2025-10-01 07:52:33', '2025-10-01', 'News', NULL, ''),
(1976, 128, 165, 'Add post for News module (165)', '2025-10-01 07:55:30', '2025-10-01', 'News', NULL, ''),
(1977, 128, 166, 'Add post for News module (166)', '2025-10-01 07:59:25', '2025-10-01', 'News', NULL, ''),
(1978, 130, 167, 'Add post for our_events module (167)', '2025-10-01 07:59:35', '2025-10-01', 'our_events', NULL, ''),
(1979, 128, 168, 'Add post for News module (168)', '2025-10-01 08:01:44', '2025-10-01', 'News', NULL, ''),
(1980, 128, 169, 'Add post for News module (169)', '2025-10-01 08:06:22', '2025-10-01', 'News', NULL, ''),
(1981, 130, 170, 'Add post for our_events module (170)', '2025-10-01 08:09:17', '2025-10-01', 'our_events', NULL, ''),
(1982, 128, 171, 'Add post for News module (171)', '2025-10-01 08:10:57', '2025-10-01', 'News', NULL, ''),
(1983, 130, 172, 'Add post for our_events module (172)', '2025-10-01 08:11:55', '2025-10-01', 'our_events', NULL, ''),
(1984, 130, 173, 'Add post for our_events module (173)', '2025-10-01 08:13:29', '2025-10-01', 'our_events', NULL, ''),
(1985, 128, 174, 'Add post for News module (174)', '2025-10-01 08:13:49', '2025-10-01', 'News', NULL, ''),
(1986, 128, 175, 'Add post for News module (175)', '2025-10-01 08:15:27', '2025-10-01', 'News', NULL, ''),
(1987, 130, 176, 'Add post for our_events module (176)', '2025-10-01 08:16:03', '2025-10-01', 'our_events', NULL, ''),
(1988, 128, 177, 'Add post for News module (177)', '2025-10-01 08:18:44', '2025-10-01', 'News', NULL, ''),
(1989, 130, 178, 'Add post for our_events module (178)', '2025-10-01 08:23:21', '2025-10-01', 'our_events', NULL, ''),
(1990, 128, 179, 'Add post for News module (179)', '2025-10-01 08:25:26', '2025-10-01', 'News', NULL, ''),
(1991, 128, 180, 'Add post for News module (180)', '2025-10-01 08:27:07', '2025-10-01', 'News', NULL, ''),
(1992, 130, 181, 'Add post for our_events module (181)', '2025-10-01 08:28:23', '2025-10-01', 'our_events', NULL, ''),
(1993, 128, 179, 'Edit post for News module (179)', '2025-10-01 08:28:25', '2025-10-01', 'News', NULL, ''),
(1994, 128, 182, 'Add post for News module (182)', '2025-10-01 08:29:51', '2025-10-01', 'News', NULL, ''),
(1995, 130, 183, 'Add post for our_events module (183)', '2025-10-01 08:30:30', '2025-10-01', 'our_events', NULL, ''),
(1996, 130, 176, 'Edit post for our_events module (176)', '2025-10-01 08:31:53', '2025-10-01', 'our_events', NULL, ''),
(1997, 128, 184, 'Add post for News module (184)', '2025-10-01 08:32:19', '2025-10-01', 'News', NULL, ''),
(1998, 128, 185, 'Add post for News module (185)', '2025-10-01 08:35:43', '2025-10-01', 'News', NULL, ''),
(1999, 128, 186, 'Add post for News module (186)', '2025-10-01 08:37:47', '2025-10-01', 'News', NULL, ''),
(2000, 128, 187, 'Add post for News module (187)', '2025-10-01 08:41:31', '2025-10-01', 'News', NULL, ''),
(2001, 128, 188, 'Add post for News module (188)', '2025-10-01 08:43:35', '2025-10-01', 'News', NULL, ''),
(2002, 128, 189, 'Add post for News module (189)', '2025-10-01 08:45:49', '2025-10-01', 'News', NULL, ''),
(2003, 128, 190, 'Add post for News module (190)', '2025-10-01 08:47:13', '2025-10-01', 'News', NULL, ''),
(2004, 128, 191, 'Add post for News module (191)', '2025-10-01 08:48:35', '2025-10-01', 'News', NULL, ''),
(2005, 128, 192, 'Add post for News module (192)', '2025-10-01 08:50:18', '2025-10-01', 'News', NULL, ''),
(2006, 128, 193, 'Add post for News module (193)', '2025-10-01 08:51:49', '2025-10-01', 'News', NULL, ''),
(2007, 128, 194, 'Add post for News module (194)', '2025-10-01 08:54:17', '2025-10-01', 'News', NULL, ''),
(2008, 128, 195, 'Add post for News module (195)', '2025-10-01 08:55:52', '2025-10-01', 'News', NULL, ''),
(2009, 128, 196, 'Add post for News module (196)', '2025-10-01 08:57:12', '2025-10-01', 'News', NULL, ''),
(2010, 128, 197, 'Add post for News module (197)', '2025-10-01 08:58:23', '2025-10-01', 'News', NULL, ''),
(2011, 130, 198, 'Add post for releases module (198)', '2025-10-01 10:28:58', '2025-10-01', 'releases', NULL, ''),
(2012, 130, 198, 'Edit post for releases module (198)', '2025-10-01 10:30:16', '2025-10-01', 'releases', NULL, ''),
(2013, 130, 198, 'Edit post for releases module (198)', '2025-10-01 10:30:25', '2025-10-01', 'releases', NULL, ''),
(2014, 130, 198, 'Delete post from releases module (198)', '2025-10-01 10:31:59', '2025-10-01', 'releases', NULL, ''),
(2015, 128, 199, 'Add post for News module (199)', '2025-10-01 12:19:19', '2025-10-01', 'News', NULL, ''),
(2016, 128, 200, 'Add post for News module (200)', '2025-10-01 12:24:48', '2025-10-01', 'News', NULL, ''),
(2017, 128, 201, 'Add post for News module (201)', '2025-10-01 12:29:40', '2025-10-01', 'News', NULL, ''),
(2018, 128, 202, 'Add post for News module (202)', '2025-10-01 12:32:09', '2025-10-01', 'News', NULL, ''),
(2019, 128, 203, 'Add post for News module (203)', '2025-10-01 12:33:46', '2025-10-01', 'News', NULL, ''),
(2020, 128, 204, 'Add post for News module (204)', '2025-10-01 12:35:39', '2025-10-01', 'News', NULL, ''),
(2021, 128, 205, 'Add post for News module (205)', '2025-10-01 12:37:11', '2025-10-01', 'News', NULL, ''),
(2022, 128, 206, 'Add post for News module (206)', '2025-10-01 12:39:55', '2025-10-01', 'News', NULL, ''),
(2023, 128, 207, 'Add post for News module (207)', '2025-10-01 12:46:04', '2025-10-01', 'News', NULL, ''),
(2024, 128, 208, 'Add post for News module (208)', '2025-10-01 12:48:03', '2025-10-01', 'News', NULL, ''),
(2025, 128, 209, 'Add post for News module (209)', '2025-10-01 12:49:26', '2025-10-01', 'News', NULL, ''),
(2026, 128, 210, 'Add post for News module (210)', '2025-10-01 12:50:53', '2025-10-01', 'News', NULL, ''),
(2027, 128, 211, 'Add post for News module (211)', '2025-10-01 12:52:46', '2025-10-01', 'News', NULL, ''),
(2028, 128, 212, 'Add post for News module (212)', '2025-10-01 12:58:41', '2025-10-01', 'News', NULL, ''),
(2029, 128, 213, 'Add post for News module (213)', '2025-10-01 13:01:04', '2025-10-01', 'News', NULL, ''),
(2030, 128, 214, 'Add post for News module (214)', '2025-10-01 13:04:24', '2025-10-01', 'News', NULL, ''),
(2031, 128, 215, 'Add post for News module (215)', '2025-10-01 13:09:04', '2025-10-01', 'News', NULL, ''),
(2032, 128, 216, 'Add post for News module (216)', '2025-10-01 13:11:28', '2025-10-01', 'News', NULL, ''),
(2033, 128, 217, 'Add post for News module (217)', '2025-10-01 13:12:46', '2025-10-01', 'News', NULL, ''),
(2034, 128, 218, 'Add post for News module (218)', '2025-10-01 13:14:07', '2025-10-01', 'News', NULL, ''),
(2035, 128, 219, 'Add post for News module (219)', '2025-10-01 13:15:25', '2025-10-01', 'News', NULL, ''),
(2036, 128, 220, 'Add post for News module (220)', '2025-10-01 13:17:01', '2025-10-01', 'News', NULL, ''),
(2037, 128, 221, 'Add post for News module (221)', '2025-10-01 13:18:14', '2025-10-01', 'News', NULL, ''),
(2038, 128, 222, 'Add post for News module (222)', '2025-10-01 13:19:13', '2025-10-01', 'News', NULL, ''),
(2039, 128, 223, 'Add post for News module (223)', '2025-10-01 13:21:07', '2025-10-01', 'News', NULL, ''),
(2040, 128, 224, 'Add post for News module (224)', '2025-10-01 13:23:11', '2025-10-01', 'News', NULL, ''),
(2041, 128, 225, 'Add post for News module (225)', '2025-10-01 13:25:00', '2025-10-01', 'News', NULL, ''),
(2042, 128, 226, 'Add post for News module (226)', '2025-10-01 13:26:27', '2025-10-01', 'News', NULL, ''),
(2043, 128, 227, 'Add post for News module (227)', '2025-10-01 13:27:53', '2025-10-01', 'News', NULL, ''),
(2044, 128, 228, 'Add post for News module (228)', '2025-10-01 13:30:41', '2025-10-01', 'News', NULL, ''),
(2045, 128, 229, 'Add post for News module (229)', '2025-10-01 13:32:31', '2025-10-01', 'News', NULL, ''),
(2046, 128, 230, 'Add post for News module (230)', '2025-10-01 13:33:51', '2025-10-01', 'News', NULL, ''),
(2047, 128, 231, 'Add post for News module (231)', '2025-10-01 13:35:47', '2025-10-01', 'News', NULL, ''),
(2048, 128, 232, 'Add post for News module (232)', '2025-10-01 13:38:00', '2025-10-01', 'News', NULL, ''),
(2049, 128, 233, 'Add post for News module (233)', '2025-10-01 13:39:22', '2025-10-01', 'News', NULL, ''),
(2050, 128, 234, 'Add post for News module (234)', '2025-10-01 13:41:07', '2025-10-01', 'News', NULL, ''),
(2051, 128, 235, 'Add post for News module (235)', '2025-10-01 13:42:17', '2025-10-01', 'News', NULL, ''),
(2052, 128, 236, 'Add post for News module (236)', '2025-10-01 13:44:10', '2025-10-01', 'News', NULL, ''),
(2053, 128, 237, 'Add post for News module (237)', '2025-10-01 13:45:31', '2025-10-01', 'News', NULL, ''),
(2054, 128, 238, 'Add post for News module (238)', '2025-10-01 13:46:43', '2025-10-01', 'News', NULL, ''),
(2055, 128, 239, 'Add post for News module (239)', '2025-10-01 13:48:13', '2025-10-01', 'News', NULL, ''),
(2056, 128, 240, 'Add post for News module (240)', '2025-10-01 13:49:20', '2025-10-01', 'News', NULL, ''),
(2057, 128, 241, 'Add post for News module (241)', '2025-10-01 13:50:49', '2025-10-01', 'News', NULL, ''),
(2058, 128, 242, 'Add post for News module (242)', '2025-10-01 13:51:48', '2025-10-01', 'News', NULL, ''),
(2059, 128, 243, 'Add post for News module (243)', '2025-10-01 13:54:03', '2025-10-01', 'News', NULL, ''),
(2060, 128, 244, 'Add post for News module (244)', '2025-10-01 13:55:38', '2025-10-01', 'News', NULL, ''),
(2061, 128, 245, 'Add post for News module (245)', '2025-10-01 13:56:30', '2025-10-01', 'News', NULL, ''),
(2062, 128, 243, 'Edit post for News module (243)', '2025-10-01 13:57:06', '2025-10-01', 'News', NULL, ''),
(2063, 128, 246, 'Add post for News module (246)', '2025-10-01 13:59:02', '2025-10-01', 'News', NULL, ''),
(2064, 128, 247, 'Add post for News module (247)', '2025-10-01 14:00:26', '2025-10-01', 'News', NULL, ''),
(2065, 128, 248, 'Add post for News module (248)', '2025-10-01 14:06:11', '2025-10-01', 'News', NULL, ''),
(2066, 128, 249, 'Add post for News module (249)', '2025-10-01 14:07:38', '2025-10-01', 'News', NULL, ''),
(2067, 128, 250, 'Add post for News module (250)', '2025-10-01 14:09:05', '2025-10-01', 'News', NULL, ''),
(2068, 128, 251, 'Add post for News module (251)', '2025-10-01 14:11:07', '2025-10-01', 'News', NULL, ''),
(2069, 128, 252, 'Add post for News module (252)', '2025-10-01 14:12:33', '2025-10-01', 'News', NULL, ''),
(2070, 128, 253, 'Add post for News module (253)', '2025-10-01 14:14:51', '2025-10-01', 'News', NULL, ''),
(2071, 128, 254, 'Add post for News module (254)', '2025-10-01 14:16:03', '2025-10-01', 'News', NULL, ''),
(2072, 128, 255, 'Add post for News module (255)', '2025-10-01 14:18:49', '2025-10-01', 'News', NULL, ''),
(2073, 128, 256, 'Add post for News module (256)', '2025-10-01 14:19:56', '2025-10-01', 'News', NULL, ''),
(2074, 128, 257, 'Add post for News module (257)', '2025-10-01 14:21:05', '2025-10-01', 'News', NULL, ''),
(2075, 128, 258, 'Add post for News module (258)', '2025-10-01 14:22:11', '2025-10-01', 'News', NULL, ''),
(2076, 128, 259, 'Add post for News module (259)', '2025-10-01 14:23:47', '2025-10-01', 'News', NULL, ''),
(2077, 128, 260, 'Add post for News module (260)', '2025-10-01 14:26:57', '2025-10-01', 'News', NULL, ''),
(2078, 128, 261, 'Add post for News module (261)', '2025-10-01 14:28:12', '2025-10-01', 'News', NULL, ''),
(2079, 128, 262, 'Add post for News module (262)', '2025-10-01 14:29:26', '2025-10-01', 'News', NULL, ''),
(2080, 130, 263, 'Add post for releases module (263)', '2025-10-01 14:56:15', '2025-10-01', 'releases', NULL, ''),
(2081, 130, 263, 'Edit post for releases module (263)', '2025-10-01 14:57:32', '2025-10-01', 'releases', NULL, ''),
(2082, 130, 263, 'Edit post for releases module (263)', '2025-10-01 14:58:11', '2025-10-01', 'releases', NULL, ''),
(2083, 130, 264, 'Add post for releases module (264)', '2025-10-01 15:01:23', '2025-10-01', 'releases', NULL, ''),
(2084, 130, 265, 'Add post for releases module (265)', '2025-10-01 15:03:21', '2025-10-01', 'releases', NULL, ''),
(2085, 130, 266, 'Add post for releases module (266)', '2025-10-01 15:05:19', '2025-10-01', 'releases', NULL, ''),
(2086, 130, 267, 'Add post for releases module (267)', '2025-10-01 15:08:01', '2025-10-01', 'releases', NULL, ''),
(2087, 130, 268, 'Add post for releases module (268)', '2025-10-01 15:10:42', '2025-10-01', 'releases', NULL, ''),
(2088, 130, 269, 'Add post for releases module (269)', '2025-10-01 15:12:28', '2025-10-01', 'releases', NULL, ''),
(2089, 130, 270, 'Add post for releases module (270)', '2025-10-01 15:16:42', '2025-10-01', 'releases', NULL, ''),
(2090, 130, 271, 'Add post for releases module (271)', '2025-10-01 15:19:12', '2025-10-01', 'releases', NULL, ''),
(2091, 130, 272, 'Add post for releases module (272)', '2025-10-01 15:21:15', '2025-10-01', 'releases', NULL, ''),
(2092, 130, 273, 'Add post for releases module (273)', '2025-10-01 15:22:38', '2025-10-01', 'releases', NULL, ''),
(2093, 130, 274, 'Add post for releases module (274)', '2025-10-01 15:24:39', '2025-10-01', 'releases', NULL, ''),
(2094, 130, 273, 'Edit post for releases module (273)', '2025-10-01 15:25:01', '2025-10-01', 'releases', NULL, ''),
(2095, 130, 275, 'Add post for releases module (275)', '2025-10-01 15:26:15', '2025-10-01', 'releases', NULL, ''),
(2096, 130, 276, 'Add post for releases module (276)', '2025-10-01 15:27:40', '2025-10-01', 'releases', NULL, ''),
(2097, 130, 277, 'Add post for releases module (277)', '2025-10-01 15:43:52', '2025-10-01', 'releases', NULL, ''),
(2098, 130, 278, 'Add post for releases module (278)', '2025-10-01 15:44:53', '2025-10-01', 'releases', NULL, ''),
(2099, 130, 279, 'Add post for releases module (279)', '2025-10-01 15:49:39', '2025-10-01', 'releases', NULL, ''),
(2100, 130, 280, 'Add post for releases module (280)', '2025-10-01 15:50:42', '2025-10-01', 'releases', NULL, ''),
(2101, 130, 281, 'Add post for releases module (281)', '2025-10-01 15:51:45', '2025-10-01', 'releases', NULL, ''),
(2102, 130, 282, 'Add post for releases module (282)', '2025-10-01 15:52:47', '2025-10-01', 'releases', NULL, ''),
(2103, 130, 283, 'Add post for releases module (283)', '2025-10-01 15:53:48', '2025-10-01', 'releases', NULL, ''),
(2104, 130, 284, 'Add post for releases module (284)', '2025-10-01 15:54:47', '2025-10-01', 'releases', NULL, ''),
(2105, 130, 285, 'Add post for releases module (285)', '2025-10-01 15:55:38', '2025-10-01', 'releases', NULL, ''),
(2106, 130, 286, 'Add post for releases module (286)', '2025-10-01 15:56:23', '2025-10-01', 'releases', NULL, ''),
(2107, 130, 285, 'Edit post for releases module (285)', '2025-10-01 15:56:47', '2025-10-01', 'releases', NULL, ''),
(2108, 130, 287, 'Add post for releases module (287)', '2025-10-01 15:57:32', '2025-10-01', 'releases', NULL, ''),
(2109, 130, 286, 'Edit post for releases module (286)', '2025-10-01 15:58:07', '2025-10-01', 'releases', NULL, ''),
(2110, 130, 286, 'Edit post for releases module (286)', '2025-10-01 15:58:12', '2025-10-01', 'releases', NULL, ''),
(2111, 130, 288, 'Add post for releases module (288)', '2025-10-01 15:58:58', '2025-10-01', 'releases', NULL, ''),
(2112, 130, 289, 'Add post for releases module (289)', '2025-10-01 16:00:07', '2025-10-01', 'releases', NULL, ''),
(2113, 130, 290, 'Add post for releases module (290)', '2025-10-01 16:01:15', '2025-10-01', 'releases', NULL, ''),
(2114, 130, 291, 'Add post for releases module (291)', '2025-10-01 16:02:16', '2025-10-01', 'releases', NULL, ''),
(2115, 130, 292, 'Add post for releases module (292)', '2025-10-01 16:03:11', '2025-10-01', 'releases', NULL, ''),
(2116, 130, 293, 'Add post for releases module (293)', '2025-10-01 16:04:47', '2025-10-01', 'releases', NULL, ''),
(2117, 130, 294, 'Add post for releases module (294)', '2025-10-01 16:05:54', '2025-10-01', 'releases', NULL, ''),
(2118, 130, 295, 'Add post for releases module (295)', '2025-10-01 16:08:52', '2025-10-01', 'releases', NULL, ''),
(2119, 130, 296, 'Add post for releases module (296)', '2025-10-01 16:11:12', '2025-10-01', 'releases', NULL, ''),
(2120, 130, 297, 'Add post for releases module (297)', '2025-10-01 16:12:05', '2025-10-01', 'releases', NULL, ''),
(2121, 130, 298, 'Add post for releases module (298)', '2025-10-01 16:12:56', '2025-10-01', 'releases', NULL, ''),
(2122, 130, 299, 'Add post for releases module (299)', '2025-10-01 16:13:49', '2025-10-01', 'releases', NULL, ''),
(2123, 130, 300, 'Add post for releases module (300)', '2025-10-01 16:14:39', '2025-10-01', 'releases', NULL, ''),
(2124, 130, 301, 'Add post for releases module (301)', '2025-10-01 16:16:01', '2025-10-01', 'releases', NULL, ''),
(2125, 130, 302, 'Add post for releases module (302)', '2025-10-01 16:17:02', '2025-10-01', 'releases', NULL, ''),
(2126, 130, 303, 'Add post for releases module (303)', '2025-10-01 16:18:12', '2025-10-01', 'releases', NULL, ''),
(2127, 130, 304, 'Add post for releases module (304)', '2025-10-01 16:19:46', '2025-10-01', 'releases', NULL, ''),
(2128, 130, 305, 'Add post for releases module (305)', '2025-10-01 16:20:20', '2025-10-01', 'releases', NULL, ''),
(2129, 128, 306, 'Add post for News module (306)', '2025-10-02 05:35:26', '2025-10-02', 'News', NULL, ''),
(2130, 128, 307, 'Add post for News module (307)', '2025-10-02 05:37:21', '2025-10-02', 'News', NULL, ''),
(2131, 128, 308, 'Add post for News module (308)', '2025-10-02 05:38:24', '2025-10-02', 'News', NULL, ''),
(2132, 128, 309, 'Add post for News module (309)', '2025-10-02 05:39:40', '2025-10-02', 'News', NULL, ''),
(2133, 128, 310, 'Add post for News module (310)', '2025-10-02 05:40:42', '2025-10-02', 'News', NULL, ''),
(2134, 128, 311, 'Add post for News module (311)', '2025-10-02 05:41:53', '2025-10-02', 'News', NULL, ''),
(2135, 128, 312, 'Add post for News module (312)', '2025-10-02 05:42:59', '2025-10-02', 'News', NULL, ''),
(2136, 128, 313, 'Add post for News module (313)', '2025-10-02 05:43:55', '2025-10-02', 'News', NULL, ''),
(2137, 128, 314, 'Add post for News module (314)', '2025-10-02 05:45:12', '2025-10-02', 'News', NULL, ''),
(2138, 128, 315, 'Add post for News module (315)', '2025-10-02 05:46:00', '2025-10-02', 'News', NULL, ''),
(2139, 128, 316, 'Add post for News module (316)', '2025-10-02 05:47:18', '2025-10-02', 'News', NULL, ''),
(2140, 128, 317, 'Add post for News module (317)', '2025-10-02 05:49:51', '2025-10-02', 'News', NULL, ''),
(2141, 128, 318, 'Add post for News module (318)', '2025-10-02 05:53:24', '2025-10-02', 'News', NULL, ''),
(2142, 128, 319, 'Add post for News module (319)', '2025-10-02 05:55:37', '2025-10-02', 'News', NULL, ''),
(2143, 128, 318, 'Edit post for News module (318)', '2025-10-02 05:56:05', '2025-10-02', 'News', NULL, ''),
(2144, 128, 317, 'Edit post for News module (317)', '2025-10-02 05:56:38', '2025-10-02', 'News', NULL, ''),
(2145, 128, 316, 'Edit post for News module (316)', '2025-10-02 05:56:58', '2025-10-02', 'News', NULL, ''),
(2146, 128, 315, 'Edit post for News module (315)', '2025-10-02 05:57:16', '2025-10-02', 'News', NULL, ''),
(2147, 128, 314, 'Edit post for News module (314)', '2025-10-02 06:00:53', '2025-10-02', 'News', NULL, ''),
(2148, 128, 320, 'Add post for News module (320)', '2025-10-02 06:04:33', '2025-10-02', 'News', NULL, ''),
(2149, 128, 320, 'Edit post for News module (320)', '2025-10-02 06:06:03', '2025-10-02', 'News', NULL, ''),
(2150, 128, 319, 'Edit post for News module (319)', '2025-10-02 06:06:44', '2025-10-02', 'News', NULL, ''),
(2151, 128, 321, 'Add post for News module (321)', '2025-10-02 06:08:28', '2025-10-02', 'News', NULL, ''),
(2152, 128, 322, 'Add post for News module (322)', '2025-10-02 06:11:04', '2025-10-02', 'News', NULL, ''),
(2153, 128, 323, 'Add post for News module (323)', '2025-10-02 06:13:32', '2025-10-02', 'News', NULL, ''),
(2154, 128, 324, 'Add post for News module (324)', '2025-10-02 06:14:51', '2025-10-02', 'News', NULL, ''),
(2155, 128, 325, 'Add post for News module (325)', '2025-10-02 06:16:13', '2025-10-02', 'News', NULL, ''),
(2156, 128, 326, 'Add post for News module (326)', '2025-10-02 06:17:59', '2025-10-02', 'News', NULL, ''),
(2157, 128, 327, 'Add post for News module (327)', '2025-10-02 06:18:58', '2025-10-02', 'News', NULL, ''),
(2158, 128, 328, 'Add post for News module (328)', '2025-10-02 06:21:34', '2025-10-02', 'News', NULL, ''),
(2159, 128, 329, 'Add post for News module (329)', '2025-10-02 06:22:33', '2025-10-02', 'News', NULL, ''),
(2160, 128, 330, 'Add post for News module (330)', '2025-10-02 06:23:38', '2025-10-02', 'News', NULL, ''),
(2161, 128, 331, 'Add post for News module (331)', '2025-10-02 06:25:32', '2025-10-02', 'News', NULL, ''),
(2162, 126, 36, 'Edit post for our_rewards module (36)', '2025-10-02 06:25:41', '2025-10-02', 'our_rewards', NULL, ''),
(2163, 128, 332, 'Add post for News module (332)', '2025-10-02 06:27:01', '2025-10-02', 'News', NULL, ''),
(2164, 128, 333, 'Add post for News module (333)', '2025-10-02 06:28:40', '2025-10-02', 'News', NULL, ''),
(2165, 126, 36, 'Edit post for our_rewards module (36)', '2025-10-02 06:29:03', '2025-10-02', 'our_rewards', NULL, ''),
(2166, 128, 334, 'Add post for News module (334)', '2025-10-02 06:29:46', '2025-10-02', 'News', NULL, ''),
(2167, 126, 36, 'Edit post for our_rewards module (36)', '2025-10-02 06:30:00', '2025-10-02', 'our_rewards', NULL, ''),
(2168, 128, 334, 'Edit post for News module (334)', '2025-10-02 06:30:09', '2025-10-02', 'News', NULL, ''),
(2169, 128, 335, 'Add post for News module (335)', '2025-10-02 06:32:23', '2025-10-02', 'News', NULL, ''),
(2170, 126, 37, 'Edit post for our_rewards module (37)', '2025-10-02 06:32:51', '2025-10-02', 'our_rewards', NULL, ''),
(2171, 128, 336, 'Add post for News module (336)', '2025-10-02 06:33:27', '2025-10-02', 'News', NULL, ''),
(2172, 128, 337, 'Add post for News module (337)', '2025-10-02 06:34:51', '2025-10-02', 'News', NULL, ''),
(2173, 128, 338, 'Add post for News module (338)', '2025-10-02 06:36:28', '2025-10-02', 'News', NULL, ''),
(2174, 128, 339, 'Add post for News module (339)', '2025-10-02 06:38:12', '2025-10-02', 'News', NULL, ''),
(2175, 128, 340, 'Add post for News module (340)', '2025-10-02 06:39:43', '2025-10-02', 'News', NULL, ''),
(2176, 128, 341, 'Add post for News module (341)', '2025-10-02 06:42:23', '2025-10-02', 'News', NULL, ''),
(2177, 128, 342, 'Add post for News module (342)', '2025-10-02 06:44:06', '2025-10-02', 'News', NULL, ''),
(2178, 128, 341, 'Edit post for News module (341)', '2025-10-02 06:44:55', '2025-10-02', 'News', NULL, ''),
(2179, 128, 343, 'Add post for News module (343)', '2025-10-02 06:45:52', '2025-10-02', 'News', NULL, ''),
(2180, 128, 344, 'Add post for News module (344)', '2025-10-02 06:48:02', '2025-10-02', 'News', NULL, ''),
(2181, 128, 345, 'Add post for News module (345)', '2025-10-02 06:50:08', '2025-10-02', 'News', NULL, ''),
(2182, 128, 346, 'Add post for News module (346)', '2025-10-02 06:51:44', '2025-10-02', 'News', NULL, ''),
(2183, 128, 347, 'Add post for News module (347)', '2025-10-02 06:52:36', '2025-10-02', 'News', NULL, ''),
(2184, 128, 348, 'Add post for News module (348)', '2025-10-02 06:53:57', '2025-10-02', 'News', NULL, ''),
(2185, 128, 349, 'Add post for News module (349)', '2025-10-02 06:55:21', '2025-10-02', 'News', NULL, ''),
(2186, 128, 350, 'Add post for News module (350)', '2025-10-02 06:58:02', '2025-10-02', 'News', NULL, ''),
(2187, 128, 351, 'Add post for News module (351)', '2025-10-02 06:59:02', '2025-10-02', 'News', NULL, ''),
(2188, 128, 352, 'Add post for News module (352)', '2025-10-02 07:00:20', '2025-10-02', 'News', NULL, ''),
(2189, 128, 353, 'Add post for News module (353)', '2025-10-02 07:01:38', '2025-10-02', 'News', NULL, ''),
(2190, 128, 354, 'Add post for News module (354)', '2025-10-02 07:02:25', '2025-10-02', 'News', NULL, ''),
(2191, 128, 354, 'Edit post for News module (354)', '2025-10-02 07:03:07', '2025-10-02', 'News', NULL, ''),
(2192, 128, 355, 'Add post for News module (355)', '2025-10-02 07:04:10', '2025-10-02', 'News', NULL, ''),
(2193, 128, 356, 'Add post for News module (356)', '2025-10-02 07:05:26', '2025-10-02', 'News', NULL, ''),
(2194, 128, 357, 'Add post for News module (357)', '2025-10-02 07:06:29', '2025-10-02', 'News', NULL, ''),
(2195, 128, 358, 'Add post for News module (358)', '2025-10-02 07:07:48', '2025-10-02', 'News', NULL, ''),
(2196, 128, 359, 'Add post for News module (359)', '2025-10-02 07:09:12', '2025-10-02', 'News', NULL, ''),
(2197, 128, 360, 'Add post for News module (360)', '2025-10-02 07:10:23', '2025-10-02', 'News', NULL, ''),
(2198, 128, 361, 'Add post for News module (361)', '2025-10-02 07:11:31', '2025-10-02', 'News', NULL, ''),
(2199, 128, 362, 'Add post for News module (362)', '2025-10-02 07:12:28', '2025-10-02', 'News', NULL, ''),
(2200, 128, 363, 'Add post for News module (363)', '2025-10-02 07:13:39', '2025-10-02', 'News', NULL, ''),
(2201, 126, 8, 'Edit post for About_academy module (8)', '2025-10-02 07:14:06', '2025-10-02', 'About_academy', NULL, ''),
(2202, 128, 364, 'Add post for News module (364)', '2025-10-02 07:14:38', '2025-10-02', 'News', NULL, ''),
(2203, 128, 365, 'Add post for News module (365)', '2025-10-02 07:15:36', '2025-10-02', 'News', NULL, ''),
(2204, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:16:35', '2025-10-02', 'About_academy', NULL, ''),
(2205, 128, 366, 'Add post for News module (366)', '2025-10-02 07:16:36', '2025-10-02', 'News', NULL, ''),
(2206, 128, 367, 'Add post for News module (367)', '2025-10-02 07:17:52', '2025-10-02', 'News', NULL, ''),
(2207, 128, 368, 'Add post for News module (368)', '2025-10-02 07:18:46', '2025-10-02', 'News', NULL, ''),
(2208, 128, 369, 'Add post for News module (369)', '2025-10-02 07:20:08', '2025-10-02', 'News', NULL, ''),
(2209, 128, 370, 'Add post for News module (370)', '2025-10-02 07:20:51', '2025-10-02', 'News', NULL, ''),
(2210, 128, 371, 'Add post for News module (371)', '2025-10-02 07:21:52', '2025-10-02', 'News', NULL, ''),
(2211, 128, 372, 'Add post for News module (372)', '2025-10-02 07:24:09', '2025-10-02', 'News', NULL, ''),
(2212, 128, 373, 'Add post for News module (373)', '2025-10-02 07:26:23', '2025-10-02', 'News', NULL, ''),
(2213, 128, 372, 'Edit post for News module (372)', '2025-10-02 07:26:44', '2025-10-02', 'News', NULL, ''),
(2214, 128, 374, 'Add post for News module (374)', '2025-10-02 07:28:01', '2025-10-02', 'News', NULL, ''),
(2215, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:28:18', '2025-10-02', 'About_academy', NULL, ''),
(2216, 128, 375, 'Add post for News module (375)', '2025-10-02 07:28:53', '2025-10-02', 'News', NULL, ''),
(2217, 128, 376, 'Add post for News module (376)', '2025-10-02 07:30:19', '2025-10-02', 'News', NULL, ''),
(2218, 128, 377, 'Add post for News module (377)', '2025-10-02 07:31:18', '2025-10-02', 'News', NULL, ''),
(2219, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:33:25', '2025-10-02', 'About_academy', NULL, ''),
(2220, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:33:49', '2025-10-02', 'About_academy', NULL, ''),
(2221, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:34:32', '2025-10-02', 'About_academy', NULL, ''),
(2222, 126, 10, 'Edit post for About_academy module (10)', '2025-10-02 07:35:12', '2025-10-02', 'About_academy', NULL, ''),
(2223, 130, 378, 'Add post for releases module (378)', '2025-10-02 07:35:14', '2025-10-02', 'releases', NULL, ''),
(2224, 130, 379, 'Add post for releases module (379)', '2025-10-02 07:37:03', '2025-10-02', 'releases', NULL, ''),
(2225, 128, 377, 'Make post at HOME is yes for News module (377)', '2025-10-02 07:41:10', '2025-10-02', 'News', NULL, ''),
(2226, 128, 376, 'Make post at HOME is yes for News module (376)', '2025-10-02 07:41:15', '2025-10-02', 'News', NULL, ''),
(2227, 128, 375, 'Make post at HOME is yes for News module (375)', '2025-10-02 07:41:19', '2025-10-02', 'News', NULL, ''),
(2228, 128, 377, 'Edit post for News module (377)', '2025-10-02 07:48:50', '2025-10-02', 'News', NULL, ''),
(2229, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:11:48', '2025-10-02', 'About_academy', NULL, ''),
(2230, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:12:54', '2025-10-02', 'About_academy', NULL, ''),
(2231, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:15:41', '2025-10-02', 'About_academy', NULL, ''),
(2232, 126, 38, 'Edit post for our_rewards module (38)', '2025-10-02 08:15:45', '2025-10-02', 'our_rewards', NULL, ''),
(2233, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:16:24', '2025-10-02', 'About_academy', NULL, ''),
(2234, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:17:42', '2025-10-02', 'About_academy', NULL, ''),
(2235, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:17:55', '2025-10-02', 'About_academy', NULL, ''),
(2236, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:18:21', '2025-10-02', 'About_academy', NULL, ''),
(2237, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:19:12', '2025-10-02', 'About_academy', NULL, ''),
(2238, 127, 4, 'Edit post for About_academy module (4)', '2025-10-02 08:19:37', '2025-10-02', 'About_academy', NULL, ''),
(2239, 127, 45, 'Delete posts from contact_with_departments module (45,44,43,42)', '2025-10-02 08:20:11', '2025-10-02', 'contact_with_departments', NULL, ''),
(2240, 127, 380, 'Add post for contact_with_departments module (380)', '2025-10-02 08:22:10', '2025-10-02', 'contact_with_departments', NULL, ''),
(2241, 126, 38, 'Edit post for our_rewards module (38)', '2025-10-02 08:23:10', '2025-10-02', 'our_rewards', NULL, ''),
(2242, 127, 381, 'Add post for contact_with_departments module (381)', '2025-10-02 08:24:01', '2025-10-02', 'contact_with_departments', NULL, ''),
(2243, 126, 37, 'Edit post for our_rewards module (37)', '2025-10-02 08:24:11', '2025-10-02', 'our_rewards', NULL, ''),
(2244, 127, 382, 'Add post for contact_with_departments module (382)', '2025-10-02 08:25:09', '2025-10-02', 'contact_with_departments', NULL, ''),
(2245, 127, 383, 'Add post for contact_with_departments module (383)', '2025-10-02 08:26:47', '2025-10-02', 'contact_with_departments', NULL, ''),
(2246, 126, 384, 'Add post for our_rewards module (384)', '2025-10-02 08:27:01', '2025-10-02', 'our_rewards', NULL, ''),
(2247, 127, 385, 'Add post for contact_with_departments module (385)', '2025-10-02 08:28:02', '2025-10-02', 'contact_with_departments', NULL, ''),
(2248, 127, 386, 'Add post for contact_with_departments module (386)', '2025-10-02 08:29:56', '2025-10-02', 'contact_with_departments', NULL, ''),
(2249, 127, 387, 'Add post for contact_with_departments module (387)', '2025-10-02 08:31:02', '2025-10-02', 'contact_with_departments', NULL, ''),
(2250, 127, 388, 'Add post for contact_with_departments module (388)', '2025-10-02 08:33:25', '2025-10-02', 'contact_with_departments', NULL, ''),
(2251, 127, 389, 'Add post for contact_with_departments module (389)', '2025-10-02 08:34:52', '2025-10-02', 'contact_with_departments', NULL, ''),
(2252, 131, 56, 'Edit post for staticpages module (56)', '2025-10-02 08:36:01', '2025-10-02', 'staticpages', NULL, ''),
(2253, 127, 383, 'Edit post for contact_with_departments module (383)', '2025-10-02 08:36:34', '2025-10-02', 'contact_with_departments', NULL, ''),
(2254, 131, 56, 'Edit post for staticpages module (56)', '2025-10-02 08:36:42', '2025-10-02', 'staticpages', NULL, ''),
(2255, 131, 57, 'Edit post for staticpages module (57)', '2025-10-02 08:38:33', '2025-10-02', 'staticpages', NULL, ''),
(2256, 131, 57, 'Edit post for staticpages module (57)', '2025-10-02 08:41:50', '2025-10-02', 'staticpages', NULL, ''),
(2257, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 08:57:15', '2025-10-02', 'settings', NULL, ''),
(2258, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 08:59:11', '2025-10-02', 'About_academy', NULL, ''),
(2259, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:06:31', '2025-10-02', 'About_academy', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(2260, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:06:51', '2025-10-02', 'About_academy', NULL, ''),
(2261, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:07:05', '2025-10-02', 'About_academy', NULL, ''),
(2262, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:07:23', '2025-10-02', 'About_academy', NULL, ''),
(2263, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:07:50', '2025-10-02', 'About_academy', NULL, ''),
(2264, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:07:56', '2025-10-02', 'About_academy', NULL, ''),
(2265, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:08:06', '2025-10-02', 'About_academy', NULL, ''),
(2266, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:08:37', '2025-10-02', 'About_academy', NULL, ''),
(2267, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:09:32', '2025-10-02', 'About_academy', NULL, ''),
(2268, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:09:38', '2025-10-02', 'About_academy', NULL, ''),
(2269, 1, 17, 'Edit post for About_academy module (17)', '2025-10-02 09:10:18', '2025-10-02', 'About_academy', NULL, ''),
(2270, 1, 4, 'Edit post for About_academy module (4)', '2025-10-02 09:10:19', '2025-10-02', 'About_academy', NULL, ''),
(2271, 1, 17, 'Edit post for About_academy module (17)', '2025-10-02 09:10:28', '2025-10-02', 'About_academy', NULL, ''),
(2272, 1, 4, 'Edit post for About_academy module (4)', '2025-10-02 09:10:36', '2025-10-02', 'About_academy', NULL, ''),
(2273, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:11:10', '2025-10-02', 'About_academy', NULL, ''),
(2274, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:12:48', '2025-10-02', 'About_academy', NULL, ''),
(2275, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:15:01', '2025-10-02', 'About_academy', NULL, ''),
(2276, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:23:06', '2025-10-02', 'About_academy', NULL, ''),
(2277, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:24:06', '2025-10-02', 'About_academy', NULL, ''),
(2278, 1, 10, 'Edit post for About_academy module (10)', '2025-10-02 09:24:26', '2025-10-02', 'About_academy', NULL, ''),
(2279, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:02:14', '2025-10-02', 'settings', NULL, ''),
(2280, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:05:07', '2025-10-02', 'settings', NULL, ''),
(2281, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:07:03', '2025-10-02', 'settings', NULL, ''),
(2282, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:08:27', '2025-10-02', 'settings', NULL, ''),
(2283, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:09:58', '2025-10-02', 'settings', NULL, ''),
(2284, 1, 390, 'Add post for videos_gallery module (390)', '2025-10-02 10:10:23', '2025-10-02', 'videos_gallery', NULL, ''),
(2285, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-02 10:12:40', '2025-10-02', 'our_rewards', NULL, ''),
(2286, 1, 183, 'Make post at HOME is yes for our_events module (183)', '2025-10-02 10:16:14', '2025-10-02', 'our_events', NULL, ''),
(2287, 1, 162, 'Make post at HOME is yes for our_events module (162)', '2025-10-02 10:16:27', '2025-10-02', 'our_events', NULL, ''),
(2288, 1, 158, 'Make post at HOME is yes for our_events module (158)', '2025-10-02 10:16:32', '2025-10-02', 'our_events', NULL, ''),
(2289, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-02 10:20:09', '2025-10-02', 'our_rewards', NULL, ''),
(2290, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-02 10:25:27', '2025-10-02', 'our_rewards', NULL, ''),
(2291, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 10:42:39', '2025-10-02', 'settings', NULL, ''),
(2292, 1, 55, 'Edit post for staticpages module (55)', '2025-10-02 10:47:36', '2025-10-02', 'staticpages', NULL, ''),
(2293, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-02 10:48:52', '2025-10-02', 'our_rewards', NULL, ''),
(2294, 1, 27, 'Edit post for partners module (27)', '2025-10-02 10:57:48', '2025-10-02', 'partners', NULL, ''),
(2295, 1, 29, 'Edit post for partners module (29)', '2025-10-02 10:59:59', '2025-10-02', 'partners', NULL, ''),
(2296, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-02 11:00:26', '2025-10-02', 'our_rewards', NULL, ''),
(2297, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-02 11:03:09', '2025-10-02', 'our_rewards', NULL, ''),
(2298, 1, 29, 'Edit post for partners module (29)', '2025-10-02 11:03:31', '2025-10-02', 'partners', NULL, ''),
(2299, 1, 29, 'Edit post for partners module (29)', '2025-10-02 11:03:52', '2025-10-02', 'partners', NULL, ''),
(2300, 128, 376, 'Edit post for News module (376)', '2025-10-02 11:16:09', '2025-10-02', 'News', NULL, ''),
(2301, 128, 376, 'Edit post for News module (376)', '2025-10-02 11:19:08', '2025-10-02', 'News', NULL, ''),
(2302, 128, 376, 'Edit post for News module (376)', '2025-10-02 11:34:17', '2025-10-02', 'News', NULL, ''),
(2303, 128, 376, 'Edit post for News module (376)', '2025-10-02 11:34:18', '2025-10-02', 'News', NULL, ''),
(2304, 1, 379, 'Edit post for releases module (379)', '2025-10-02 12:05:45', '2025-10-02', 'releases', NULL, ''),
(2305, 1, 379, 'Edit post for releases module (379)', '2025-10-02 12:06:11', '2025-10-02', 'releases', NULL, ''),
(2306, 1, 122, 'Edit post for careers module (122)', '2025-10-02 13:38:41', '2025-10-02', 'careers', NULL, ''),
(2307, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 13:41:10', '2025-10-02', 'settings', NULL, ''),
(2308, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 13:41:39', '2025-10-02', 'settings', NULL, ''),
(2309, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:16:52', '2025-10-02', 'settings', NULL, ''),
(2310, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:17:06', '2025-10-02', 'settings', NULL, ''),
(2311, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:24:16', '2025-10-02', 'settings', NULL, ''),
(2312, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:24:26', '2025-10-02', 'settings', NULL, ''),
(2313, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:25:06', '2025-10-02', 'settings', NULL, ''),
(2314, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:26:09', '2025-10-02', 'settings', NULL, ''),
(2315, 1, 1, 'Edit Settings  ( 1 )', '2025-10-02 14:27:31', '2025-10-02', 'settings', NULL, ''),
(2316, 1, 122, 'Edit post for careers module (122)', '2025-10-02 14:42:04', '2025-10-02', 'careers', NULL, ''),
(2317, 1, 1, 'Edit Settings  ( 1 )', '2025-10-03 16:30:44', '2025-10-03', 'settings', NULL, ''),
(2318, 1, 1, 'Edit Settings  ( 1 )', '2025-10-03 16:31:27', '2025-10-03', 'settings', NULL, ''),
(2319, 1, 1, 'Edit Settings  ( 1 )', '2025-10-03 16:31:55', '2025-10-03', 'settings', NULL, ''),
(2320, 1, 1, 'Edit Settings  ( 1 )', '2025-10-05 07:42:30', '2025-10-05', 'settings', NULL, ''),
(2321, 1, 10, 'Edit post for About_academy module (10)', '2025-10-05 07:43:11', '2025-10-05', 'About_academy', NULL, ''),
(2322, 1, 1, 'Edit Settings  ( 1 )', '2025-10-05 09:09:56', '2025-10-05', 'settings', NULL, ''),
(2323, 1, 8, 'Edit post for About_academy module (8)', '2025-10-05 09:15:30', '2025-10-05', 'About_academy', NULL, ''),
(2324, 1, 4, 'Edit post for About_academy module (4)', '2025-10-05 09:21:50', '2025-10-05', 'About_academy', NULL, ''),
(2325, 1, 4, 'Edit post for About_academy module (4)', '2025-10-05 09:22:54', '2025-10-05', 'About_academy', NULL, ''),
(2326, 1, 4, 'Edit post for About_academy module (4)', '2025-10-05 09:24:09', '2025-10-05', 'About_academy', NULL, ''),
(2327, 1, 4, 'Edit post for About_academy module (4)', '2025-10-05 09:25:47', '2025-10-05', 'About_academy', NULL, ''),
(2328, 1, 10, 'Edit post for About_academy module (10)', '2025-10-05 09:28:29', '2025-10-05', 'About_academy', NULL, ''),
(2329, 1, 10, 'Edit post for About_academy module (10)', '2025-10-05 09:41:33', '2025-10-05', 'About_academy', NULL, ''),
(2330, 1, 10, 'Edit post for About_academy module (10)', '2025-10-05 09:42:55', '2025-10-05', 'About_academy', NULL, ''),
(2331, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:04:06', '2025-10-05', 'partners', NULL, ''),
(2332, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:04:59', '2025-10-05', 'partners', NULL, ''),
(2333, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:08:57', '2025-10-05', 'partners', NULL, ''),
(2334, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:10:33', '2025-10-05', 'partners', NULL, ''),
(2335, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:11:17', '2025-10-05', 'partners', NULL, ''),
(2336, 1, 29, 'Edit post for partners module (29)', '2025-10-05 10:12:55', '2025-10-05', 'partners', NULL, ''),
(2337, 1, 29, 'Edit post for partners module (29)', '2025-10-05 10:13:34', '2025-10-05', 'partners', NULL, ''),
(2338, 1, 26, 'Edit post for partners module (26)', '2025-10-05 10:26:26', '2025-10-05', 'partners', NULL, ''),
(2339, 1, 25, 'Edit post for partners module (25)', '2025-10-05 10:31:47', '2025-10-05', 'partners', NULL, ''),
(2340, 1, 25, 'Edit post for partners module (25)', '2025-10-05 10:32:03', '2025-10-05', 'partners', NULL, ''),
(2341, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:33:07', '2025-10-05', 'partners', NULL, ''),
(2342, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:34:01', '2025-10-05', 'partners', NULL, ''),
(2343, 1, 29, 'Edit post for partners module (29)', '2025-10-05 10:34:39', '2025-10-05', 'partners', NULL, ''),
(2344, 1, 27, 'Edit post for partners module (27)', '2025-10-05 10:35:20', '2025-10-05', 'partners', NULL, ''),
(2345, 1, 26, 'Edit post for partners module (26)', '2025-10-05 10:36:08', '2025-10-05', 'partners', NULL, ''),
(2346, 1, 25, 'Edit post for partners module (25)', '2025-10-05 10:36:40', '2025-10-05', 'partners', NULL, ''),
(2347, 1, 120, 'Delete post from releases module (120)', '2025-10-05 10:39:35', '2025-10-05', 'releases', NULL, ''),
(2348, 1, 299, 'Edit post for releases module (299)', '2025-10-05 10:43:26', '2025-10-05', 'releases', NULL, ''),
(2349, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:56:40', '2025-10-05', 'partners', NULL, ''),
(2350, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:57:16', '2025-10-05', 'partners', NULL, ''),
(2351, 1, 30, 'Edit post for partners module (30)', '2025-10-05 10:57:54', '2025-10-05', 'partners', NULL, ''),
(2352, 1, 297, 'Make post at HOME is yes for releases module (297)', '2025-10-05 10:58:21', '2025-10-05', 'releases', NULL, ''),
(2353, 1, 29, 'Edit post for partners module (29)', '2025-10-05 11:00:27', '2025-10-05', 'partners', NULL, ''),
(2354, 1, 29, 'Edit post for partners module (29)', '2025-10-05 11:01:26', '2025-10-05', 'partners', NULL, ''),
(2355, 1, 29, 'Edit post for partners module (29)', '2025-10-05 11:02:58', '2025-10-05', 'partners', NULL, ''),
(2356, 1, 27, 'Edit post for partners module (27)', '2025-10-05 11:04:31', '2025-10-05', 'partners', NULL, ''),
(2357, 130, 379, 'Delete post from releases module (379)', '2025-10-05 11:06:00', '2025-10-05', 'releases', NULL, ''),
(2358, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-05 11:07:01', '2025-10-05', 'our_rewards', NULL, ''),
(2359, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-05 11:08:51', '2025-10-05', 'our_rewards', NULL, ''),
(2360, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-05 11:09:28', '2025-10-05', 'our_rewards', NULL, ''),
(2361, 130, 263, 'Edit post for releases module (263)', '2025-10-05 11:19:03', '2025-10-05', 'releases', NULL, ''),
(2362, 1, 17, 'Edit post for About_academy module (17)', '2025-10-05 11:19:21', '2025-10-05', 'About_academy', NULL, ''),
(2363, 130, 378, 'Edit post for releases module (378)', '2025-10-05 11:20:21', '2025-10-05', 'releases', NULL, ''),
(2364, 130, 305, 'Edit post for releases module (305)', '2025-10-05 11:21:12', '2025-10-05', 'releases', NULL, ''),
(2365, 1, 88, 'Edit post for our_services module (88)', '2025-10-05 11:25:20', '2025-10-05', 'our_services', NULL, ''),
(2366, 130, 305, 'Edit post for releases module (305)', '2025-10-05 11:55:40', '2025-10-05', 'releases', NULL, ''),
(2367, 130, 304, 'Edit post for releases module (304)', '2025-10-05 11:56:24', '2025-10-05', 'releases', NULL, ''),
(2368, 130, 303, 'Edit post for releases module (303)', '2025-10-05 12:00:04', '2025-10-05', 'releases', NULL, ''),
(2369, 130, 302, 'Edit post for releases module (302)', '2025-10-05 12:02:08', '2025-10-05', 'releases', NULL, ''),
(2370, 130, 301, 'Edit post for releases module (301)', '2025-10-05 12:04:19', '2025-10-05', 'releases', NULL, ''),
(2371, 130, 300, 'Edit post for releases module (300)', '2025-10-05 12:05:41', '2025-10-05', 'releases', NULL, ''),
(2372, 1, 30, 'Edit post for partners module (30)', '2025-10-05 12:13:33', '2025-10-05', 'partners', NULL, ''),
(2373, 1, 30, 'Edit post for partners module (30)', '2025-10-05 12:14:11', '2025-10-05', 'partners', NULL, ''),
(2374, 1, 29, 'Edit post for partners module (29)', '2025-10-05 12:15:46', '2025-10-05', 'partners', NULL, ''),
(2375, 1, 27, 'Edit post for partners module (27)', '2025-10-05 12:17:48', '2025-10-05', 'partners', NULL, ''),
(2376, 1, 27, 'Edit post for partners module (27)', '2025-10-05 12:18:27', '2025-10-05', 'partners', NULL, ''),
(2377, 1, 26, 'Edit post for partners module (26)', '2025-10-05 12:19:27', '2025-10-05', 'partners', NULL, ''),
(2378, 1, 25, 'Edit post for partners module (25)', '2025-10-05 12:20:41', '2025-10-05', 'partners', NULL, ''),
(2379, 1, 25, 'Edit post for partners module (25)', '2025-10-05 12:21:26', '2025-10-05', 'partners', NULL, ''),
(2380, 130, 299, 'Edit post for releases module (299)', '2025-10-05 12:51:37', '2025-10-05', 'releases', NULL, ''),
(2381, 130, 299, 'Edit post for releases module (299)', '2025-10-05 13:11:55', '2025-10-05', 'releases', NULL, ''),
(2382, 130, 299, 'Edit post for releases module (299)', '2025-10-05 13:12:11', '2025-10-05', 'releases', NULL, ''),
(2383, 130, 298, 'Edit post for releases module (298)', '2025-10-05 13:16:03', '2025-10-05', 'releases', NULL, ''),
(2384, 130, 297, 'Edit post for releases module (297)', '2025-10-05 13:17:21', '2025-10-05', 'releases', NULL, ''),
(2385, 130, 296, 'Edit post for releases module (296)', '2025-10-05 13:18:30', '2025-10-05', 'releases', NULL, ''),
(2386, 130, 295, 'Edit post for releases module (295)', '2025-10-05 13:19:10', '2025-10-05', 'releases', NULL, ''),
(2387, 130, 294, 'Edit post for releases module (294)', '2025-10-05 13:21:01', '2025-10-05', 'releases', NULL, ''),
(2388, 130, 294, 'Edit post for releases module (294)', '2025-10-05 13:22:04', '2025-10-05', 'releases', NULL, ''),
(2389, 130, 293, 'Edit post for releases module (293)', '2025-10-05 13:22:57', '2025-10-05', 'releases', NULL, ''),
(2390, 130, 286, 'Edit post for releases module (286)', '2025-10-05 13:23:58', '2025-10-05', 'releases', NULL, ''),
(2391, 130, 266, 'Edit post for releases module (266)', '2025-10-05 13:25:07', '2025-10-05', 'releases', NULL, ''),
(2392, 130, 266, 'Edit post for releases module (266)', '2025-10-05 13:25:16', '2025-10-05', 'releases', NULL, ''),
(2393, 130, 265, 'Edit post for releases module (265)', '2025-10-05 13:26:23', '2025-10-05', 'releases', NULL, ''),
(2394, 130, 264, 'Edit post for releases module (264)', '2025-10-05 13:27:24', '2025-10-05', 'releases', NULL, ''),
(2395, 130, 96, 'Delete post from releases module (96)', '2025-10-05 13:28:13', '2025-10-05', 'releases', NULL, ''),
(2396, 130, 277, 'Edit post for releases module (277)', '2025-10-05 13:29:03', '2025-10-05', 'releases', NULL, ''),
(2397, 130, 285, 'Edit post for releases module (285)', '2025-10-05 13:31:14', '2025-10-05', 'releases', NULL, ''),
(2398, 130, 284, 'Edit post for releases module (284)', '2025-10-05 13:38:59', '2025-10-05', 'releases', NULL, ''),
(2399, 130, 283, 'Edit post for releases module (283)', '2025-10-05 13:40:58', '2025-10-05', 'releases', NULL, ''),
(2400, 130, 278, 'Edit post for releases module (278)', '2025-10-05 13:45:58', '2025-10-05', 'releases', NULL, ''),
(2401, 130, 282, 'Edit post for releases module (282)', '2025-10-05 13:54:16', '2025-10-05', 'releases', NULL, ''),
(2402, 130, 281, 'Edit post for releases module (281)', '2025-10-05 13:55:37', '2025-10-05', 'releases', NULL, ''),
(2403, 130, 280, 'Edit post for releases module (280)', '2025-10-05 13:57:43', '2025-10-05', 'releases', NULL, ''),
(2404, 130, 280, 'Edit post for releases module (280)', '2025-10-05 13:58:38', '2025-10-05', 'releases', NULL, ''),
(2405, 130, 279, 'Edit post for releases module (279)', '2025-10-05 14:00:17', '2025-10-05', 'releases', NULL, ''),
(2406, 130, 292, 'Edit post for releases module (292)', '2025-10-05 14:03:23', '2025-10-05', 'releases', NULL, ''),
(2407, 130, 287, 'Edit post for releases module (287)', '2025-10-05 14:04:10', '2025-10-05', 'releases', NULL, ''),
(2408, 130, 288, 'Edit post for releases module (288)', '2025-10-05 14:05:12', '2025-10-05', 'releases', NULL, ''),
(2409, 130, 291, 'Edit post for releases module (291)', '2025-10-05 14:06:20', '2025-10-05', 'releases', NULL, ''),
(2410, 130, 289, 'Edit post for releases module (289)', '2025-10-05 14:07:06', '2025-10-05', 'releases', NULL, ''),
(2411, 130, 290, 'Edit post for releases module (290)', '2025-10-05 14:07:42', '2025-10-05', 'releases', NULL, ''),
(2412, 130, 92, 'Delete post from releases module (92)', '2025-10-05 14:12:17', '2025-10-05', 'releases', NULL, ''),
(2413, 130, 269, 'Edit post for releases module (269)', '2025-10-05 14:14:19', '2025-10-05', 'releases', NULL, ''),
(2414, 130, 268, 'Edit post for releases module (268)', '2025-10-05 14:15:27', '2025-10-05', 'releases', NULL, ''),
(2415, 130, 267, 'Edit post for releases module (267)', '2025-10-05 14:16:23', '2025-10-05', 'releases', NULL, ''),
(2416, 130, 270, 'Edit post for releases module (270)', '2025-10-05 14:17:09', '2025-10-05', 'releases', NULL, ''),
(2417, 130, 271, 'Edit post for releases module (271)', '2025-10-05 14:17:57', '2025-10-05', 'releases', NULL, ''),
(2418, 130, 272, 'Edit post for releases module (272)', '2025-10-05 14:18:48', '2025-10-05', 'releases', NULL, ''),
(2419, 130, 273, 'Edit post for releases module (273)', '2025-10-05 14:20:00', '2025-10-05', 'releases', NULL, ''),
(2420, 1, 378, 'Make post at HOME is yes for releases module (378)', '2025-10-05 16:58:26', '2025-10-05', 'releases', NULL, ''),
(2421, 1, 305, 'Make post at HOME is yes for releases module (305)', '2025-10-05 16:58:33', '2025-10-05', 'releases', NULL, ''),
(2422, 130, 274, 'Edit post for releases module (274)', '2025-10-05 18:54:28', '2025-10-05', 'releases', NULL, ''),
(2423, 130, 276, 'Edit post for releases module (276)', '2025-10-05 19:04:25', '2025-10-05', 'releases', NULL, ''),
(2424, 130, 275, 'Edit post for releases module (275)', '2025-10-05 19:05:11', '2025-10-05', 'releases', NULL, ''),
(2425, 130, 277, 'Edit post for releases module (277)', '2025-10-05 19:07:14', '2025-10-05', 'releases', NULL, ''),
(2426, 130, 391, 'Add post for releases module (391)', '2025-10-05 19:13:43', '2025-10-05', 'releases', NULL, ''),
(2427, 130, 103, 'Delete post from our_events module (103)', '2025-10-05 19:15:13', '2025-10-05', 'our_events', NULL, ''),
(2428, 130, 121, 'Delete post from our_events module (121)', '2025-10-05 19:15:27', '2025-10-05', 'our_events', NULL, ''),
(2429, 130, 108, 'Delete post from our_events module (108)', '2025-10-05 19:16:39', '2025-10-05', 'our_events', NULL, ''),
(2430, 130, 21, 'Delete post from our_events module (21)', '2025-10-05 19:16:47', '2025-10-05', 'our_events', NULL, ''),
(2431, 130, 23, 'Delete post from our_events module (23)', '2025-10-05 19:16:54', '2025-10-05', 'our_events', NULL, ''),
(2432, 130, 167, 'Edit post for our_events module (167)', '2025-10-05 19:19:34', '2025-10-05', 'our_events', NULL, ''),
(2433, 1, 392, 'Add post for videos_gallery module (392)', '2025-10-06 06:10:04', '2025-10-06', 'videos_gallery', NULL, ''),
(2434, 1, 393, 'Add post for videos_gallery module (393)', '2025-10-06 06:11:41', '2025-10-06', 'videos_gallery', NULL, ''),
(2435, 1, 394, 'Add post for videos_gallery module (394)', '2025-10-06 06:13:25', '2025-10-06', 'videos_gallery', NULL, ''),
(2436, 130, 181, 'Delete post from our_events module (181)', '2025-10-06 07:54:09', '2025-10-06', 'our_events', NULL, ''),
(2437, 130, 137, 'Delete post from our_events module (137)', '2025-10-06 07:55:15', '2025-10-06', 'our_events', NULL, ''),
(2438, 130, 178, 'Edit post for our_events module (178)', '2025-10-06 07:57:06', '2025-10-06', 'our_events', NULL, ''),
(2439, 130, 157, 'Edit post for our_events module (157)', '2025-10-06 07:57:59', '2025-10-06', 'our_events', NULL, ''),
(2440, 1, 25, 'Edit post for partners module (25)', '2025-10-06 07:58:55', '2025-10-06', 'partners', NULL, ''),
(2441, 130, 139, 'Edit post for our_events module (139)', '2025-10-06 08:03:10', '2025-10-06', 'our_events', NULL, ''),
(2442, 1, 127, 'Edit maryam user id (127)', '2025-10-06 08:03:27', '2025-10-06', 'users', NULL, ''),
(2443, 1, 126, 'Edit somaya user id (126)', '2025-10-06 08:03:53', '2025-10-06', 'users', NULL, ''),
(2444, 130, 172, 'Edit post for our_events module (172)', '2025-10-06 08:04:53', '2025-10-06', 'our_events', NULL, ''),
(2445, 130, 143, 'Edit post for our_events module (143)', '2025-10-06 08:05:32', '2025-10-06', 'our_events', NULL, ''),
(2446, 1, 126, 'Edit somaya user id (126)', '2025-10-06 08:06:21', '2025-10-06', 'users', NULL, ''),
(2447, 1, 127, 'Edit maryam user id (127)', '2025-10-06 08:06:40', '2025-10-06', 'users', NULL, ''),
(2448, 127, 25, 'Edit post for partners module (25)', '2025-10-06 08:09:02', '2025-10-06', 'partners', NULL, ''),
(2449, 127, 25, 'Edit post for partners module (25)', '2025-10-06 08:10:26', '2025-10-06', 'partners', NULL, ''),
(2450, 127, 25, 'Edit post for partners module (25)', '2025-10-06 08:11:06', '2025-10-06', 'partners', NULL, ''),
(2451, 127, 30, 'Edit post for partners module (30)', '2025-10-06 08:11:35', '2025-10-06', 'partners', NULL, ''),
(2452, 127, 29, 'Edit post for partners module (29)', '2025-10-06 08:12:14', '2025-10-06', 'partners', NULL, ''),
(2453, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:12:25', '2025-10-06', 'our_services', NULL, ''),
(2454, 127, 27, 'Edit post for partners module (27)', '2025-10-06 08:12:50', '2025-10-06', 'partners', NULL, ''),
(2455, 127, 26, 'Edit post for partners module (26)', '2025-10-06 08:13:20', '2025-10-06', 'partners', NULL, ''),
(2456, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:15:19', '2025-10-06', 'our_services', NULL, ''),
(2457, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:16:18', '2025-10-06', 'our_services', NULL, ''),
(2458, 127, 27, 'Edit post for partners module (27)', '2025-10-06 08:19:54', '2025-10-06', 'partners', NULL, ''),
(2459, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:23:38', '2025-10-06', 'our_services', NULL, ''),
(2460, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:24:08', '2025-10-06', 'our_services', NULL, ''),
(2461, 127, 29, 'Edit post for partners module (29)', '2025-10-06 08:25:45', '2025-10-06', 'partners', NULL, ''),
(2462, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:29:09', '2025-10-06', 'our_services', NULL, ''),
(2463, 127, 29, 'Edit post for partners module (29)', '2025-10-06 08:29:15', '2025-10-06', 'partners', NULL, ''),
(2464, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:29:33', '2025-10-06', 'our_services', NULL, ''),
(2465, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:30:04', '2025-10-06', 'our_services', NULL, ''),
(2466, 127, 30, 'Edit post for partners module (30)', '2025-10-06 08:30:41', '2025-10-06', 'partners', NULL, ''),
(2467, 127, 25, 'Edit post for partners module (25)', '2025-10-06 08:34:40', '2025-10-06', 'partners', NULL, ''),
(2468, 1, 88, 'Edit post for our_services module (88)', '2025-10-06 08:38:18', '2025-10-06', 'our_services', NULL, ''),
(2469, 1, 8, 'Edit post for About_academy module (8)', '2025-10-06 11:03:34', '2025-10-06', 'About_academy', NULL, ''),
(2470, 1, 8, 'Edit post for About_academy module (8)', '2025-10-06 11:04:24', '2025-10-06', 'About_academy', NULL, ''),
(2471, 1, 8, 'Edit post for About_academy module (8)', '2025-10-06 11:04:58', '2025-10-06', 'About_academy', NULL, ''),
(2472, 1, 10, 'Edit post for About_academy module (10)', '2025-10-06 11:06:28', '2025-10-06', 'About_academy', NULL, ''),
(2473, 1, 4, 'Edit post for About_academy module (4)', '2025-10-06 11:07:19', '2025-10-06', 'About_academy', NULL, ''),
(2474, 1, 17, 'Edit post for About_academy module (17)', '2025-10-07 07:45:56', '2025-10-07', 'About_academy', NULL, ''),
(2475, 1, 9, 'Edit post for About_academy module (9)', '2025-10-07 07:49:07', '2025-10-07', 'About_academy', NULL, ''),
(2476, 1, 9, 'Edit post for About_academy module (9)', '2025-10-07 08:22:54', '2025-10-07', 'About_academy', NULL, ''),
(2477, 1, 17, 'Edit post for About_academy module (17)', '2025-10-07 08:23:29', '2025-10-07', 'About_academy', NULL, ''),
(2478, 1, 17, 'Edit post for About_academy module (17)', '2025-10-07 08:23:54', '2025-10-07', 'About_academy', NULL, ''),
(2479, 1, 17, 'Edit post for About_academy module (17)', '2025-10-07 08:24:27', '2025-10-07', 'About_academy', NULL, ''),
(2480, 1, 9, 'Edit post for About_academy module (9)', '2025-10-07 08:24:50', '2025-10-07', 'About_academy', NULL, ''),
(2481, 1, 17, 'Edit post for About_academy module (17)', '2025-10-07 08:28:15', '2025-10-07', 'About_academy', NULL, ''),
(2482, 1, 54, 'Edit post for contact_us module (54)', '2025-10-07 08:29:56', '2025-10-07', 'contact_us', NULL, ''),
(2483, 128, 395, 'Add post for News module (395)', '2025-10-07 08:30:37', '2025-10-07', 'News', NULL, ''),
(2484, 1, 1, 'Edit Settings  ( 1 )', '2025-10-07 08:31:27', '2025-10-07', 'settings', NULL, ''),
(2485, 128, 395, 'Edit post for News module (395)', '2025-10-07 08:55:28', '2025-10-07', 'News', NULL, ''),
(2486, 1, 9, 'Edit post for About_academy module (9)', '2025-10-07 09:08:14', '2025-10-07', 'About_academy', NULL, ''),
(2487, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 09:24:22', '2025-10-07', 'our_services', NULL, ''),
(2488, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 10:04:17', '2025-10-07', 'our_services', NULL, ''),
(2489, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 10:04:55', '2025-10-07', 'our_services', NULL, ''),
(2490, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 10:05:37', '2025-10-07', 'our_services', NULL, ''),
(2491, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 10:07:44', '2025-10-07', 'our_services', NULL, ''),
(2492, 1, 87, 'Edit post for our_services module (87)', '2025-10-07 10:11:17', '2025-10-07', 'our_services', NULL, ''),
(2493, 1, 86, 'Edit post for our_services module (86)', '2025-10-07 10:14:35', '2025-10-07', 'our_services', NULL, ''),
(2494, 1, 86, 'Edit post for our_services module (86)', '2025-10-07 10:16:08', '2025-10-07', 'our_services', NULL, ''),
(2495, 1, 85, 'Edit post for our_services module (85)', '2025-10-07 10:19:09', '2025-10-07', 'our_services', NULL, ''),
(2496, 1, 85, 'Edit post for our_services module (85)', '2025-10-07 10:19:41', '2025-10-07', 'our_services', NULL, ''),
(2497, 1, 396, 'Add post for careers module (396)', '2025-10-07 10:41:16', '2025-10-07', 'careers', NULL, ''),
(2498, 1, 396, 'Edit post for careers module (396)', '2025-10-07 10:43:16', '2025-10-07', 'careers', NULL, ''),
(2499, 1, 396, 'Edit post for careers module (396)', '2025-10-07 10:43:36', '2025-10-07', 'careers', NULL, ''),
(2500, 1, 396, 'Edit post for careers module (396)', '2025-10-07 10:43:56', '2025-10-07', 'careers', NULL, ''),
(2501, 1, 396, 'Edit post for careers module (396)', '2025-10-07 10:45:04', '2025-10-07', 'careers', NULL, ''),
(2502, 1, 396, 'Edit post for careers module (396)', '2025-10-07 10:46:09', '2025-10-07', 'careers', NULL, ''),
(2503, 1, 396, 'Edit post for careers module (396)', '2025-10-07 11:01:32', '2025-10-07', 'careers', NULL, ''),
(2504, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 11:03:11', '2025-10-07', 'our_services', NULL, ''),
(2505, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 11:05:30', '2025-10-07', 'our_services', NULL, ''),
(2506, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 11:07:44', '2025-10-07', 'our_services', NULL, ''),
(2507, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 11:09:20', '2025-10-07', 'our_services', NULL, ''),
(2508, 1, 88, 'Edit post for our_services module (88)', '2025-10-07 11:10:42', '2025-10-07', 'our_services', NULL, ''),
(2509, 1, 87, 'Edit post for our_services module (87)', '2025-10-07 11:17:12', '2025-10-07', 'our_services', NULL, ''),
(2510, 1, 87, 'Edit post for our_services module (87)', '2025-10-07 11:17:55', '2025-10-07', 'our_services', NULL, ''),
(2511, 1, 86, 'Edit post for our_services module (86)', '2025-10-07 11:25:13', '2025-10-07', 'our_services', NULL, ''),
(2512, 1, 85, 'Edit post for our_services module (85)', '2025-10-07 11:27:41', '2025-10-07', 'our_services', NULL, ''),
(2513, 128, 395, 'Edit post for News module (395)', '2025-10-08 04:17:50', '2025-10-08', 'News', NULL, ''),
(2514, 1, 88, 'Edit post for our_services module (88)', '2025-10-08 07:46:32', '2025-10-08', 'our_services', NULL, ''),
(2515, 1, 88, 'Edit post for our_services module (88)', '2025-10-08 07:50:17', '2025-10-08', 'our_services', NULL, ''),
(2516, 1, 88, 'Edit post for our_services module (88)', '2025-10-08 07:50:54', '2025-10-08', 'our_services', NULL, ''),
(2517, 1, 88, 'Edit post for our_services module (88)', '2025-10-08 07:51:47', '2025-10-08', 'our_services', NULL, ''),
(2518, 1, 88, 'Edit post for our_services module (88)', '2025-10-09 06:23:16', '2025-10-09', 'our_services', NULL, ''),
(2519, 1, 87, 'Edit post for our_services module (87)', '2025-10-09 06:26:34', '2025-10-09', 'our_services', NULL, ''),
(2520, 1, 86, 'Edit post for our_services module (86)', '2025-10-09 06:33:29', '2025-10-09', 'our_services', NULL, ''),
(2521, 1, 85, 'Edit post for our_services module (85)', '2025-10-09 06:38:49', '2025-10-09', 'our_services', NULL, ''),
(2522, 1, 55, 'Edit post for staticpages module (55)', '2025-10-09 10:05:58', '2025-10-09', 'staticpages', NULL, ''),
(2523, 1, 55, 'Edit post for staticpages module (55)', '2025-10-09 10:08:08', '2025-10-09', 'staticpages', NULL, ''),
(2524, 1, 88, 'Edit post for our_services module (88)', '2025-10-09 12:07:32', '2025-10-09', 'our_services', NULL, ''),
(2525, 1, 87, 'Edit post for our_services module (87)', '2025-10-09 12:15:49', '2025-10-09', 'our_services', NULL, ''),
(2526, 1, 85, 'Edit post for our_services module (85)', '2025-10-09 12:17:31', '2025-10-09', 'our_services', NULL, ''),
(2527, 1, 85, 'Edit post for our_services module (85)', '2025-10-09 12:20:44', '2025-10-09', 'our_services', NULL, ''),
(2528, 1, 85, 'Edit post for our_services module (85)', '2025-10-09 12:22:04', '2025-10-09', 'our_services', NULL, ''),
(2529, 1, 86, 'Edit post for our_services module (86)', '2025-10-09 12:24:22', '2025-10-09', 'our_services', NULL, ''),
(2530, 1, 88, 'Edit post for our_services module (88)', '2025-10-09 12:26:34', '2025-10-09', 'our_services', NULL, ''),
(2531, 1, 87, 'Edit post for our_services module (87)', '2025-10-09 12:30:00', '2025-10-09', 'our_services', NULL, ''),
(2532, 1, 88, 'Edit post for our_services module (88)', '2025-10-09 18:15:38', '2025-10-09', 'our_services', NULL, ''),
(2533, 1, 88, 'Edit post for our_services module (88)', '2025-10-09 18:16:59', '2025-10-09', 'our_services', NULL, ''),
(2534, 1, 87, 'Edit post for our_services module (87)', '2025-10-09 18:17:57', '2025-10-09', 'our_services', NULL, ''),
(2535, 1, 86, 'Edit post for our_services module (86)', '2025-10-09 18:18:48', '2025-10-09', 'our_services', NULL, ''),
(2536, 1, 85, 'Edit post for our_services module (85)', '2025-10-09 18:19:33', '2025-10-09', 'our_services', NULL, ''),
(2537, 1, 297, 'Make post at HOME is no for releases module (297)', '2025-10-10 07:31:56', '2025-10-10', 'releases', NULL, ''),
(2538, 1, 391, 'Make post at HOME is yes for releases module (391)', '2025-10-10 07:32:09', '2025-10-10', 'releases', NULL, ''),
(2539, 1, 88, 'Edit post for our_services module (88)', '2025-10-10 07:36:10', '2025-10-10', 'our_services', NULL, ''),
(2540, 1, 87, 'Edit post for our_services module (87)', '2025-10-10 07:39:44', '2025-10-10', 'our_services', NULL, ''),
(2541, 1, 86, 'Edit post for our_services module (86)', '2025-10-10 07:41:31', '2025-10-10', 'our_services', NULL, ''),
(2542, 1, 85, 'Edit post for our_services module (85)', '2025-10-10 07:43:10', '2025-10-10', 'our_services', NULL, ''),
(2543, 1, 86, 'Edit post for our_services module (86)', '2025-10-10 07:53:58', '2025-10-10', 'our_services', NULL, ''),
(2544, 1, 86, 'Edit post for our_services module (86)', '2025-10-10 07:54:33', '2025-10-10', 'our_services', NULL, ''),
(2545, 1, 87, 'Edit post for our_services module (87)', '2025-10-10 07:56:26', '2025-10-10', 'our_services', NULL, ''),
(2546, 1, 87, 'Edit post for our_services module (87)', '2025-10-10 07:57:17', '2025-10-10', 'our_services', NULL, ''),
(2547, 1, 86, 'Edit post for our_services module (86)', '2025-10-10 07:58:58', '2025-10-10', 'our_services', NULL, ''),
(2548, 1, 397, 'Add post for our_events module (397)', '2025-10-11 15:22:09', '2025-10-11', 'our_events', NULL, ''),
(2549, 1, 397, 'Edit post for our_events module (397)', '2025-10-11 15:23:50', '2025-10-11', 'our_events', NULL, ''),
(2550, 1, 397, 'Make post at HOME is yes for our_events module (397)', '2025-10-11 15:24:25', '2025-10-11', 'our_events', NULL, ''),
(2551, 1, 158, 'Make post at HOME is no for our_events module (158)', '2025-10-11 15:24:46', '2025-10-11', 'our_events', NULL, ''),
(2552, 1, 397, 'Edit post for our_events module (397)', '2025-10-11 15:27:37', '2025-10-11', 'our_events', NULL, ''),
(2553, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 07:35:15', '2025-10-12', 'About_academy', NULL, ''),
(2554, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 07:35:43', '2025-10-12', 'About_academy', NULL, ''),
(2555, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 07:36:44', '2025-10-12', 'About_academy', NULL, ''),
(2556, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 07:37:38', '2025-10-12', 'About_academy', NULL, ''),
(2557, 1, 17, 'Edit post for About_academy module (17)', '2025-10-12 07:38:57', '2025-10-12', 'About_academy', NULL, ''),
(2558, 1, 17, 'Edit post for About_academy module (17)', '2025-10-12 07:39:41', '2025-10-12', 'About_academy', NULL, ''),
(2559, 1, 17, 'Edit post for About_academy module (17)', '2025-10-12 07:40:18', '2025-10-12', 'About_academy', NULL, ''),
(2560, 1, 8, 'Edit post for About_academy module (8)', '2025-10-12 07:41:29', '2025-10-12', 'About_academy', NULL, ''),
(2561, 1, 8, 'Edit post for About_academy module (8)', '2025-10-12 07:42:37', '2025-10-12', 'About_academy', NULL, ''),
(2562, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 07:51:26', '2025-10-12', 'About_academy', NULL, ''),
(2563, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 07:52:06', '2025-10-12', 'About_academy', NULL, ''),
(2564, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 07:53:53', '2025-10-12', 'About_academy', NULL, ''),
(2565, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 07:59:31', '2025-10-12', 'About_academy', NULL, ''),
(2566, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:06:46', '2025-10-12', 'About_academy', NULL, ''),
(2567, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:07:48', '2025-10-12', 'About_academy', NULL, ''),
(2568, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:08:14', '2025-10-12', 'About_academy', NULL, ''),
(2569, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:12:05', '2025-10-12', 'About_academy', NULL, ''),
(2570, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:13:02', '2025-10-12', 'About_academy', NULL, ''),
(2571, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:13:30', '2025-10-12', 'About_academy', NULL, ''),
(2572, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:20:41', '2025-10-12', 'About_academy', NULL, ''),
(2573, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:26:41', '2025-10-12', 'About_academy', NULL, ''),
(2574, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:30:30', '2025-10-12', 'About_academy', NULL, ''),
(2575, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:32:12', '2025-10-12', 'About_academy', NULL, ''),
(2576, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:34:39', '2025-10-12', 'About_academy', NULL, ''),
(2577, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:36:34', '2025-10-12', 'About_academy', NULL, ''),
(2578, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:36:44', '2025-10-12', 'About_academy', NULL, ''),
(2579, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 08:40:53', '2025-10-12', 'About_academy', NULL, ''),
(2580, 1, 4, 'Edit post for About_academy module (4)', '2025-10-12 08:51:06', '2025-10-12', 'About_academy', NULL, ''),
(2581, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 09:02:30', '2025-10-12', 'About_academy', NULL, ''),
(2582, 1, 9, 'Edit post for About_academy module (9)', '2025-10-12 09:03:41', '2025-10-12', 'About_academy', NULL, ''),
(2583, 1, 17, 'Edit post for About_academy module (17)', '2025-10-12 09:06:39', '2025-10-12', 'About_academy', NULL, ''),
(2584, 1, 17, 'Edit post for About_academy module (17)', '2025-10-12 09:08:18', '2025-10-12', 'About_academy', NULL, ''),
(2585, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 09:11:40', '2025-10-12', 'About_academy', NULL, ''),
(2586, 1, 4, 'Edit post for About_academy module (4)', '2025-10-12 09:13:13', '2025-10-12', 'About_academy', NULL, ''),
(2587, 1, 4, 'Edit post for About_academy module (4)', '2025-10-12 09:14:28', '2025-10-12', 'About_academy', NULL, ''),
(2588, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-12 09:25:41', '2025-10-12', 'our_rewards', NULL, ''),
(2589, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-12 09:28:34', '2025-10-12', 'our_rewards', NULL, ''),
(2590, 1, 384, 'Edit post for our_rewards module (384)', '2025-10-12 09:35:04', '2025-10-12', 'our_rewards', NULL, ''),
(2591, 1, 38, 'Edit post for our_rewards module (38)', '2025-10-12 09:46:37', '2025-10-12', 'our_rewards', NULL, ''),
(2592, 1, 38, 'Edit post for our_rewards module (38)', '2025-10-12 09:48:06', '2025-10-12', 'our_rewards', NULL, ''),
(2593, 1, 37, 'Edit post for our_rewards module (37)', '2025-10-12 09:48:44', '2025-10-12', 'our_rewards', NULL, ''),
(2594, 1, 37, 'Edit post for our_rewards module (37)', '2025-10-12 09:49:31', '2025-10-12', 'our_rewards', NULL, ''),
(2595, 1, 37, 'Edit post for our_rewards module (37)', '2025-10-12 09:49:41', '2025-10-12', 'our_rewards', NULL, ''),
(2596, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:00:04', '2025-10-12', 'our_rewards', NULL, ''),
(2597, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:01:24', '2025-10-12', 'our_rewards', NULL, ''),
(2598, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:03:04', '2025-10-12', 'our_rewards', NULL, ''),
(2599, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:03:53', '2025-10-12', 'our_rewards', NULL, ''),
(2600, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:05:19', '2025-10-12', 'our_rewards', NULL, ''),
(2601, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:06:10', '2025-10-12', 'our_rewards', NULL, ''),
(2602, 1, 36, 'Edit post for our_rewards module (36)', '2025-10-12 10:06:21', '2025-10-12', 'our_rewards', NULL, ''),
(2603, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:09:18', '2025-10-12', 'careers', NULL, ''),
(2604, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:10:45', '2025-10-12', 'careers', NULL, ''),
(2605, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:11:03', '2025-10-12', 'careers', NULL, ''),
(2606, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:12:53', '2025-10-12', 'careers', NULL, ''),
(2607, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:13:30', '2025-10-12', 'careers', NULL, ''),
(2608, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:14:37', '2025-10-12', 'careers', NULL, ''),
(2609, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:15:08', '2025-10-12', 'careers', NULL, ''),
(2610, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:15:42', '2025-10-12', 'careers', NULL, ''),
(2611, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:17:04', '2025-10-12', 'careers', NULL, ''),
(2612, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:22:15', '2025-10-12', 'careers', NULL, ''),
(2613, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:22:33', '2025-10-12', 'careers', NULL, ''),
(2614, 1, 8, 'Edit post for About_academy module (8)', '2025-10-12 10:22:55', '2025-10-12', 'About_academy', NULL, ''),
(2615, 1, 8, 'Edit post for About_academy module (8)', '2025-10-12 10:25:16', '2025-10-12', 'About_academy', NULL, ''),
(2616, 1, 8, 'Edit post for About_academy module (8)', '2025-10-12 10:26:38', '2025-10-12', 'About_academy', NULL, ''),
(2617, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:30:01', '2025-10-12', 'careers', NULL, ''),
(2618, 1, 10, 'Edit post for About_academy module (10)', '2025-10-12 10:30:32', '2025-10-12', 'About_academy', NULL, ''),
(2619, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:33:53', '2025-10-12', 'careers', NULL, ''),
(2620, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:35:06', '2025-10-12', 'careers', NULL, ''),
(2621, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:38:32', '2025-10-12', 'careers', NULL, ''),
(2622, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:39:48', '2025-10-12', 'careers', NULL, ''),
(2623, 1, 396, 'Edit post for careers module (396)', '2025-10-12 10:44:08', '2025-10-12', 'careers', NULL, ''),
(2624, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:51:10', '2025-10-12', 'partners', NULL, ''),
(2625, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:53:59', '2025-10-12', 'partners', NULL, ''),
(2626, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:54:11', '2025-10-12', 'partners', NULL, ''),
(2627, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:54:36', '2025-10-12', 'partners', NULL, ''),
(2628, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:55:08', '2025-10-12', 'partners', NULL, ''),
(2629, 1, 25, 'Edit post for partners module (25)', '2025-10-12 10:57:41', '2025-10-12', 'partners', NULL, ''),
(2630, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:00:57', '2025-10-12', 'partners', NULL, ''),
(2631, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:01:33', '2025-10-12', 'partners', NULL, ''),
(2632, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:03:22', '2025-10-12', 'partners', NULL, ''),
(2633, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:07:56', '2025-10-12', 'partners', NULL, ''),
(2634, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:09:24', '2025-10-12', 'partners', NULL, ''),
(2635, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:10:22', '2025-10-12', 'partners', NULL, ''),
(2636, 1, 25, 'Edit post for partners module (25)', '2025-10-12 11:13:24', '2025-10-12', 'partners', NULL, ''),
(2637, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:14:06', '2025-10-12', 'partners', NULL, ''),
(2638, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:24:08', '2025-10-12', 'partners', NULL, ''),
(2639, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:24:42', '2025-10-12', 'partners', NULL, ''),
(2640, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:27:45', '2025-10-12', 'partners', NULL, ''),
(2641, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:29:06', '2025-10-12', 'partners', NULL, ''),
(2642, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:30:03', '2025-10-12', 'partners', NULL, ''),
(2643, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:31:52', '2025-10-12', 'partners', NULL, ''),
(2644, 1, 27, 'Edit post for partners module (27)', '2025-10-12 11:39:23', '2025-10-12', 'partners', NULL, ''),
(2645, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:43:24', '2025-10-12', 'partners', NULL, ''),
(2646, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:46:09', '2025-10-12', 'partners', NULL, ''),
(2647, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:46:27', '2025-10-12', 'partners', NULL, ''),
(2648, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:47:00', '2025-10-12', 'partners', NULL, ''),
(2649, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:47:41', '2025-10-12', 'partners', NULL, ''),
(2650, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:48:19', '2025-10-12', 'partners', NULL, ''),
(2651, 1, 26, 'Edit post for partners module (26)', '2025-10-12 11:48:28', '2025-10-12', 'partners', NULL, ''),
(2652, 1, 30, 'Edit post for partners module (30)', '2025-10-12 12:03:01', '2025-10-12', 'partners', NULL, ''),
(2653, 1, 30, 'Edit post for partners module (30)', '2025-10-12 12:08:24', '2025-10-12', 'partners', NULL, ''),
(2654, 1, 30, 'Edit post for partners module (30)', '2025-10-12 12:11:13', '2025-10-12', 'partners', NULL, ''),
(2655, 1, 29, 'Edit post for partners module (29)', '2025-10-12 12:18:33', '2025-10-12', 'partners', NULL, ''),
(2656, 1, 29, 'Edit post for partners module (29)', '2025-10-12 12:38:39', '2025-10-12', 'partners', NULL, ''),
(2657, 1, 27, 'Edit post for partners module (27)', '2025-10-12 12:43:15', '2025-10-12', 'partners', NULL, ''),
(2658, 1, 27, 'Edit post for partners module (27)', '2025-10-12 12:43:49', '2025-10-12', 'partners', NULL, ''),
(2659, 1, 26, 'Edit post for partners module (26)', '2025-10-12 12:46:15', '2025-10-12', 'partners', NULL, ''),
(2660, 1, 26, 'Edit post for partners module (26)', '2025-10-12 12:49:33', '2025-10-12', 'partners', NULL, ''),
(2661, 1, 26, 'Edit post for partners module (26)', '2025-10-12 12:50:10', '2025-10-12', 'partners', NULL, ''),
(2662, 1, 26, 'Edit post for partners module (26)', '2025-10-12 12:50:34', '2025-10-12', 'partners', NULL, ''),
(2663, 1, 26, 'Edit post for partners module (26)', '2025-10-12 12:51:32', '2025-10-12', 'partners', NULL, ''),
(2664, 1, 25, 'Edit post for partners module (25)', '2025-10-12 12:56:57', '2025-10-12', 'partners', NULL, ''),
(2665, 1, 30, 'Edit post for partners module (30)', '2025-10-12 13:06:12', '2025-10-12', 'partners', NULL, ''),
(2666, 1, 30, 'Edit post for partners module (30)', '2025-10-12 13:09:08', '2025-10-12', 'partners', NULL, ''),
(2667, 1, 26, 'Edit post for partners module (26)', '2025-10-12 13:09:58', '2025-10-12', 'partners', NULL, ''),
(2668, 1, 25, 'Edit post for partners module (25)', '2025-10-12 13:10:38', '2025-10-12', 'partners', NULL, ''),
(2669, 1, 25, 'Edit post for partners module (25)', '2025-10-12 13:11:16', '2025-10-12', 'partners', NULL, ''),
(2670, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:12:05', '2025-10-12', 'our_services', NULL, ''),
(2671, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:19:55', '2025-10-12', 'our_services', NULL, ''),
(2672, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:21:53', '2025-10-12', 'our_services', NULL, ''),
(2673, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:44:38', '2025-10-12', 'our_services', NULL, ''),
(2674, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:48:20', '2025-10-12', 'our_services', NULL, ''),
(2675, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:51:40', '2025-10-12', 'our_services', NULL, ''),
(2676, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:52:33', '2025-10-12', 'our_services', NULL, ''),
(2677, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:55:42', '2025-10-12', 'our_services', NULL, ''),
(2678, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:57:17', '2025-10-12', 'our_services', NULL, ''),
(2679, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 13:58:14', '2025-10-12', 'our_services', NULL, ''),
(2680, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:00:45', '2025-10-12', 'our_services', NULL, ''),
(2681, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:01:54', '2025-10-12', 'our_services', NULL, ''),
(2682, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:02:28', '2025-10-12', 'our_services', NULL, ''),
(2683, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:03:34', '2025-10-12', 'our_services', NULL, ''),
(2684, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:04:17', '2025-10-12', 'our_services', NULL, ''),
(2685, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:04:41', '2025-10-12', 'our_services', NULL, ''),
(2686, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:24:19', '2025-10-12', 'our_services', NULL, ''),
(2687, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:24:53', '2025-10-12', 'our_services', NULL, ''),
(2688, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:25:51', '2025-10-12', 'our_services', NULL, ''),
(2689, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:30:43', '2025-10-12', 'our_services', NULL, ''),
(2690, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:35:12', '2025-10-12', 'our_services', NULL, ''),
(2691, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:36:42', '2025-10-12', 'our_services', NULL, ''),
(2692, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:37:51', '2025-10-12', 'our_services', NULL, ''),
(2693, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:48:57', '2025-10-12', 'our_services', NULL, ''),
(2694, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 14:55:17', '2025-10-12', 'our_services', NULL, ''),
(2695, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 15:05:32', '2025-10-12', 'our_services', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(2696, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 15:06:03', '2025-10-12', 'our_services', NULL, ''),
(2697, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 15:06:56', '2025-10-12', 'our_services', NULL, ''),
(2698, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 15:08:24', '2025-10-12', 'our_services', NULL, ''),
(2699, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 15:09:08', '2025-10-12', 'our_services', NULL, ''),
(2700, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:22:16', '2025-10-12', 'our_services', NULL, ''),
(2701, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:26:47', '2025-10-12', 'our_services', NULL, ''),
(2702, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:29:40', '2025-10-12', 'our_services', NULL, ''),
(2703, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:33:33', '2025-10-12', 'our_services', NULL, ''),
(2704, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:42:34', '2025-10-12', 'our_services', NULL, ''),
(2705, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:46:54', '2025-10-12', 'our_services', NULL, ''),
(2706, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 15:50:02', '2025-10-12', 'our_services', NULL, ''),
(2707, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:15:20', '2025-10-12', 'our_services', NULL, ''),
(2708, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:18:27', '2025-10-12', 'our_services', NULL, ''),
(2709, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:19:03', '2025-10-12', 'our_services', NULL, ''),
(2710, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:20:05', '2025-10-12', 'our_services', NULL, ''),
(2711, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:23:53', '2025-10-12', 'our_services', NULL, ''),
(2712, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:44:17', '2025-10-12', 'our_services', NULL, ''),
(2713, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:46:05', '2025-10-12', 'our_services', NULL, ''),
(2714, 1, 86, 'Edit post for our_services module (86)', '2025-10-12 16:46:47', '2025-10-12', 'our_services', NULL, ''),
(2715, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:02:18', '2025-10-12', 'our_services', NULL, ''),
(2716, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:02:48', '2025-10-12', 'our_services', NULL, ''),
(2717, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:03:08', '2025-10-12', 'our_services', NULL, ''),
(2718, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:06:50', '2025-10-12', 'our_services', NULL, ''),
(2719, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:07:54', '2025-10-12', 'our_services', NULL, ''),
(2720, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:15:17', '2025-10-12', 'our_services', NULL, ''),
(2721, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:16:34', '2025-10-12', 'our_services', NULL, ''),
(2722, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:20:45', '2025-10-12', 'our_services', NULL, ''),
(2723, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:21:29', '2025-10-12', 'our_services', NULL, ''),
(2724, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:22:37', '2025-10-12', 'our_services', NULL, ''),
(2725, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:23:19', '2025-10-12', 'our_services', NULL, ''),
(2726, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:26:00', '2025-10-12', 'our_services', NULL, ''),
(2727, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:26:37', '2025-10-12', 'our_services', NULL, ''),
(2728, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:27:10', '2025-10-12', 'our_services', NULL, ''),
(2729, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:27:44', '2025-10-12', 'our_services', NULL, ''),
(2730, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:29:25', '2025-10-12', 'our_services', NULL, ''),
(2731, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:30:31', '2025-10-12', 'our_services', NULL, ''),
(2732, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:31:51', '2025-10-12', 'our_services', NULL, ''),
(2733, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:32:40', '2025-10-12', 'our_services', NULL, ''),
(2734, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:34:02', '2025-10-12', 'our_services', NULL, ''),
(2735, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:34:37', '2025-10-12', 'our_services', NULL, ''),
(2736, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:35:48', '2025-10-12', 'our_services', NULL, ''),
(2737, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:37:04', '2025-10-12', 'our_services', NULL, ''),
(2738, 1, 85, 'Edit post for our_services module (85)', '2025-10-12 17:37:46', '2025-10-12', 'our_services', NULL, ''),
(2739, 1, 87, 'Edit post for our_services module (87)', '2025-10-12 17:42:57', '2025-10-12', 'our_services', NULL, ''),
(2740, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 17:50:25', '2025-10-12', 'our_services', NULL, ''),
(2741, 1, 88, 'Edit post for our_services module (88)', '2025-10-12 17:51:36', '2025-10-12', 'our_services', NULL, ''),
(2742, 1, 87, 'Edit post for our_services module (87)', '2025-10-15 09:27:22', '2025-10-15', 'our_services', NULL, ''),
(2743, 128, 376, 'Deactivate posts from News module (376)', '2025-10-16 04:30:24', '2025-10-16', 'News', NULL, ''),
(2744, 128, 398, 'Add post for News module (398)', '2025-10-16 05:39:26', '2025-10-16', 'News', NULL, ''),
(2745, 128, 398, 'Edit post for News module (398)', '2025-10-16 05:40:34', '2025-10-16', 'News', NULL, ''),
(2746, 128, 399, 'Add post for News module (399)', '2025-10-16 05:42:29', '2025-10-16', 'News', NULL, ''),
(2747, 128, 399, 'Edit post for News module (399)', '2025-10-16 05:43:19', '2025-10-16', 'News', NULL, ''),
(2748, 128, 400, 'Add post for News module (400)', '2025-10-16 05:49:08', '2025-10-16', 'News', NULL, ''),
(2749, 128, 401, 'Add post for News module (401)', '2025-10-16 06:05:45', '2025-10-16', 'News', NULL, ''),
(2750, 128, 398, 'Delete post from News module (398)', '2025-10-16 06:06:29', '2025-10-16', 'News', NULL, ''),
(2751, 128, 402, 'Add post for News module (402)', '2025-10-16 06:08:01', '2025-10-16', 'News', NULL, ''),
(2752, 128, 403, 'Add post for News module (403)', '2025-10-16 06:09:42', '2025-10-16', 'News', NULL, ''),
(2753, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:22:07', '2025-10-16', 'staticpages', NULL, ''),
(2754, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:23:23', '2025-10-16', 'staticpages', NULL, ''),
(2755, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:24:57', '2025-10-16', 'staticpages', NULL, ''),
(2756, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:25:59', '2025-10-16', 'staticpages', NULL, ''),
(2757, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:28:41', '2025-10-16', 'staticpages', NULL, ''),
(2758, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:29:32', '2025-10-16', 'staticpages', NULL, ''),
(2759, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:30:52', '2025-10-16', 'staticpages', NULL, ''),
(2760, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:32:13', '2025-10-16', 'staticpages', NULL, ''),
(2761, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:32:57', '2025-10-16', 'staticpages', NULL, ''),
(2762, 1, 55, 'Edit post for staticpages module (55)', '2025-10-16 08:33:44', '2025-10-16', 'staticpages', NULL, ''),
(2763, 128, 404, 'Add post for News module (404)', '2025-10-20 05:36:17', '2025-10-20', 'News', NULL, ''),
(2764, 1, 405, 'Add post for our_events module (405)', '2025-10-23 10:07:40', '2025-10-23', 'our_events', NULL, ''),
(2765, 1, 162, 'Make post at HOME is no for our_events module (162)', '2025-10-23 10:08:09', '2025-10-23', 'our_events', NULL, ''),
(2766, 1, 405, 'Make post at HOME is yes for our_events module (405)', '2025-10-23 10:08:14', '2025-10-23', 'our_events', NULL, ''),
(2767, 1, 406, 'Add post for our_events module (406)', '2025-10-23 10:30:13', '2025-10-23', 'our_events', NULL, ''),
(2768, 1, 183, 'Make post at HOME is no for our_events module (183)', '2025-10-23 10:30:26', '2025-10-23', 'our_events', NULL, ''),
(2769, 1, 406, 'Make post at HOME is yes for our_events module (406)', '2025-10-23 10:30:30', '2025-10-23', 'our_events', NULL, ''),
(2770, 1, 407, 'Add post for our_events module (407)', '2025-10-23 11:02:34', '2025-10-23', 'our_events', NULL, ''),
(2771, 1, 397, 'Make post at HOME is no for our_events module (397)', '2025-10-23 11:02:42', '2025-10-23', 'our_events', NULL, ''),
(2772, 1, 407, 'Make post at HOME is yes for our_events module (407)', '2025-10-23 11:02:46', '2025-10-23', 'our_events', NULL, ''),
(2773, 128, 408, 'Add post for News module (408)', '2025-10-27 04:28:47', '2025-10-27', 'News', NULL, ''),
(2774, 128, 409, 'Add post for News module (409)', '2025-10-27 04:30:34', '2025-10-27', 'News', NULL, ''),
(2775, 128, 409, 'Edit post for News module (409)', '2025-10-27 04:30:51', '2025-10-27', 'News', NULL, ''),
(2776, 128, 409, 'Edit post for News module (409)', '2025-10-27 04:30:52', '2025-10-27', 'News', NULL, ''),
(2777, 128, 408, 'Edit post for News module (408)', '2025-10-27 04:31:16', '2025-10-27', 'News', NULL, ''),
(2778, 128, 410, 'Add post for News module (410)', '2025-10-27 04:40:04', '2025-10-27', 'News', NULL, ''),
(2779, 128, 410, 'Delete post from News module (410)', '2025-10-27 04:40:26', '2025-10-27', 'News', NULL, ''),
(2780, 128, 411, 'Add post for News module (411)', '2025-10-27 04:44:16', '2025-10-27', 'News', NULL, ''),
(2781, 128, 412, 'Add post for News module (412)', '2025-10-27 04:49:27', '2025-10-27', 'News', NULL, ''),
(2782, 128, 411, 'Delete post from News module (411)', '2025-10-27 04:55:44', '2025-10-27', 'News', NULL, ''),
(2783, 128, 412, 'Delete post from News module (412)', '2025-10-27 04:55:51', '2025-10-27', 'News', NULL, ''),
(2784, 128, 413, 'Add post for News module (413)', '2025-11-04 07:26:49', '2025-11-04', 'News', NULL, ''),
(2785, 128, 414, 'Add post for News module (414)', '2025-11-04 07:41:43', '2025-11-04', 'News', NULL, ''),
(2786, 1, 414, 'Edit post for News module (414)', '2025-11-05 15:38:31', '2025-11-05', 'News', NULL, ''),
(2787, 1, 414, 'Edit post for News module (414)', '2025-11-05 15:39:02', '2025-11-05', 'News', NULL, ''),
(2788, 1, 414, 'Edit post for News module (414)', '2025-11-06 05:34:51', '2025-11-06', 'News', NULL, ''),
(2789, 1, 407, 'Make post at HOME is no for our_events module (407)', '2025-11-06 09:10:12', '2025-11-06', 'our_events', NULL, ''),
(2790, 1, 406, 'Make post at HOME is no for our_events module (406)', '2025-11-06 09:10:18', '2025-11-06', 'our_events', NULL, ''),
(2791, 1, 405, 'Make post at HOME is no for our_events module (405)', '2025-11-06 09:10:23', '2025-11-06', 'our_events', NULL, ''),
(2792, 1, 407, 'Edit post for our_events module (407)', '2025-11-06 09:10:59', '2025-11-06', 'our_events', NULL, ''),
(2793, 1, 407, 'Edit post for our_events module (407)', '2025-11-06 09:11:50', '2025-11-06', 'our_events', NULL, ''),
(2794, 1, 415, 'Add post for staticpages module (415)', '2025-11-06 09:19:31', '2025-11-06', 'staticpages', NULL, ''),
(2795, 1, 9, 'Add category for ourPartners module (9)', '2025-11-06 09:28:34', '2025-11-06', 'ourPartners', NULL, ''),
(2796, 1, 10, 'Add category for ourPartners module (10)', '2025-11-06 09:29:09', '2025-11-06', 'ourPartners', NULL, ''),
(2797, 1, 416, 'Add post for ourPartners module (416)', '2025-11-06 09:32:48', '2025-11-06', 'ourPartners', NULL, ''),
(2798, 1, 417, 'Add post for ourPartners module (417)', '2025-11-06 09:33:41', '2025-11-06', 'ourPartners', NULL, ''),
(2799, 1, 418, 'Add post for ourPartners module (418)', '2025-11-06 09:34:16', '2025-11-06', 'ourPartners', NULL, ''),
(2800, 1, 419, 'Add post for ourPartners module (419)', '2025-11-06 09:34:51', '2025-11-06', 'ourPartners', NULL, ''),
(2801, 1, 420, 'Add post for ourPartners module (420)', '2025-11-06 09:35:22', '2025-11-06', 'ourPartners', NULL, ''),
(2802, 1, 420, 'Edit post for ourPartners module (420)', '2025-11-06 09:58:07', '2025-11-06', 'ourPartners', NULL, ''),
(2803, 1, 418, 'Edit post for ourPartners module (418)', '2025-11-06 09:58:28', '2025-11-06', 'ourPartners', NULL, ''),
(2804, 1, 417, 'Edit post for ourPartners module (417)', '2025-11-06 09:58:46', '2025-11-06', 'ourPartners', NULL, ''),
(2805, 1, 416, 'Edit post for ourPartners module (416)', '2025-11-06 09:59:06', '2025-11-06', 'ourPartners', NULL, ''),
(2806, 1, 419, 'Edit post for ourPartners module (419)', '2025-11-06 09:59:26', '2025-11-06', 'ourPartners', NULL, ''),
(2807, 1, 36, 'Edit post for our_rewards module (36)', '2025-11-08 09:40:00', '2025-11-08', 'our_rewards', NULL, ''),
(2808, 1, 36, 'Edit post for our_rewards module (36)', '2025-11-08 09:43:22', '2025-11-08', 'our_rewards', NULL, ''),
(2809, 1, 421, 'Add post for our_events module (421)', '2025-11-09 08:29:59', '2025-11-09', 'our_events', NULL, ''),
(2810, 1, 421, 'Edit post for our_events module (421)', '2025-11-09 08:31:15', '2025-11-09', 'our_events', NULL, ''),
(2811, 1, 421, 'Edit post for our_events module (421)', '2025-11-09 08:32:08', '2025-11-09', 'our_events', NULL, ''),
(2812, 1, 421, 'Edit post for our_events module (421)', '2025-11-09 08:51:32', '2025-11-09', 'our_events', NULL, ''),
(2813, 1, 421, 'Edit post for our_events module (421)', '2025-11-09 08:52:23', '2025-11-09', 'our_events', NULL, ''),
(2814, 128, 414, 'Edit post for News module (414)', '2025-11-11 05:53:08', '2025-11-11', 'News', NULL, ''),
(2815, 128, 401, 'Edit post for News module (401)', '2025-11-11 05:53:55', '2025-11-11', 'News', NULL, ''),
(2816, 128, 409, 'Edit post for News module (409)', '2025-11-11 05:54:48', '2025-11-11', 'News', NULL, ''),
(2817, 128, 408, 'Edit post for News module (408)', '2025-11-11 05:55:18', '2025-11-11', 'News', NULL, ''),
(2818, 128, 404, 'Edit post for News module (404)', '2025-11-11 05:55:54', '2025-11-11', 'News', NULL, ''),
(2819, 128, 403, 'Edit post for News module (403)', '2025-11-11 05:57:05', '2025-11-11', 'News', NULL, ''),
(2820, 128, 402, 'Edit post for News module (402)', '2025-11-11 05:57:43', '2025-11-11', 'News', NULL, ''),
(2821, 128, 402, 'Edit post for News module (402)', '2025-11-11 05:58:09', '2025-11-11', 'News', NULL, ''),
(2822, 128, 401, 'Edit post for News module (401)', '2025-11-11 05:59:02', '2025-11-11', 'News', NULL, ''),
(2823, 128, 395, 'Edit post for News module (395)', '2025-11-11 05:59:56', '2025-11-11', 'News', NULL, ''),
(2824, 128, 377, 'Edit post for News module (377)', '2025-11-11 06:00:46', '2025-11-11', 'News', NULL, ''),
(2825, 128, 376, 'Edit post for News module (376)', '2025-11-11 06:01:39', '2025-11-11', 'News', NULL, ''),
(2826, 128, 375, 'Edit post for News module (375)', '2025-11-11 06:02:21', '2025-11-11', 'News', NULL, ''),
(2827, 128, 374, 'Edit post for News module (374)', '2025-11-11 06:06:03', '2025-11-11', 'News', NULL, ''),
(2828, 128, 374, 'Edit post for News module (374)', '2025-11-11 06:06:22', '2025-11-11', 'News', NULL, ''),
(2829, 128, 373, 'Edit post for News module (373)', '2025-11-11 06:07:54', '2025-11-11', 'News', NULL, ''),
(2830, 128, 372, 'Edit post for News module (372)', '2025-11-11 06:08:30', '2025-11-11', 'News', NULL, ''),
(2831, 128, 371, 'Edit post for News module (371)', '2025-11-11 06:09:23', '2025-11-11', 'News', NULL, ''),
(2832, 128, 370, 'Edit post for News module (370)', '2025-11-11 06:11:33', '2025-11-11', 'News', NULL, ''),
(2833, 128, 369, 'Edit post for News module (369)', '2025-11-11 06:12:19', '2025-11-11', 'News', NULL, ''),
(2834, 128, 368, 'Edit post for News module (368)', '2025-11-11 06:13:36', '2025-11-11', 'News', NULL, ''),
(2835, 128, 367, 'Edit post for News module (367)', '2025-11-11 06:14:24', '2025-11-11', 'News', NULL, ''),
(2836, 128, 366, 'Edit post for News module (366)', '2025-11-11 06:15:35', '2025-11-11', 'News', NULL, ''),
(2837, 128, 365, 'Edit post for News module (365)', '2025-11-11 06:15:54', '2025-11-11', 'News', NULL, ''),
(2838, 128, 364, 'Edit post for News module (364)', '2025-11-11 06:16:19', '2025-11-11', 'News', NULL, ''),
(2839, 128, 362, 'Edit post for News module (362)', '2025-11-11 06:16:50', '2025-11-11', 'News', NULL, ''),
(2840, 128, 361, 'Edit post for News module (361)', '2025-11-11 06:17:20', '2025-11-11', 'News', NULL, ''),
(2841, 128, 360, 'Edit post for News module (360)', '2025-11-11 06:18:19', '2025-11-11', 'News', NULL, ''),
(2842, 128, 359, 'Edit post for News module (359)', '2025-11-11 06:19:39', '2025-11-11', 'News', NULL, ''),
(2843, 128, 358, 'Edit post for News module (358)', '2025-11-11 06:20:23', '2025-11-11', 'News', NULL, ''),
(2844, 128, 357, 'Edit post for News module (357)', '2025-11-11 06:21:10', '2025-11-11', 'News', NULL, ''),
(2845, 128, 356, 'Edit post for News module (356)', '2025-11-11 06:21:43', '2025-11-11', 'News', NULL, ''),
(2846, 128, 355, 'Edit post for News module (355)', '2025-11-11 06:22:30', '2025-11-11', 'News', NULL, ''),
(2847, 128, 352, 'Edit post for News module (352)', '2025-11-11 06:23:59', '2025-11-11', 'News', NULL, ''),
(2848, 128, 354, 'Edit post for News module (354)', '2025-11-11 06:24:41', '2025-11-11', 'News', NULL, ''),
(2849, 128, 353, 'Edit post for News module (353)', '2025-11-11 06:24:48', '2025-11-11', 'News', NULL, ''),
(2850, 128, 354, 'Edit post for News module (354)', '2025-11-11 06:26:35', '2025-11-11', 'News', NULL, ''),
(2851, 128, 351, 'Edit post for News module (351)', '2025-11-11 06:27:09', '2025-11-11', 'News', NULL, ''),
(2852, 128, 350, 'Edit post for News module (350)', '2025-11-11 06:27:42', '2025-11-11', 'News', NULL, ''),
(2853, 128, 349, 'Edit post for News module (349)', '2025-11-11 06:28:03', '2025-11-11', 'News', NULL, ''),
(2854, 128, 348, 'Edit post for News module (348)', '2025-11-11 06:28:24', '2025-11-11', 'News', NULL, ''),
(2855, 128, 347, 'Edit post for News module (347)', '2025-11-11 06:28:45', '2025-11-11', 'News', NULL, ''),
(2856, 128, 346, 'Edit post for News module (346)', '2025-11-11 06:29:10', '2025-11-11', 'News', NULL, ''),
(2857, 128, 344, 'Edit post for News module (344)', '2025-11-11 06:30:36', '2025-11-11', 'News', NULL, ''),
(2858, 128, 343, 'Edit post for News module (343)', '2025-11-11 06:31:27', '2025-11-11', 'News', NULL, ''),
(2859, 128, 342, 'Edit post for News module (342)', '2025-11-11 06:32:11', '2025-11-11', 'News', NULL, ''),
(2860, 128, 337, 'Edit post for News module (337)', '2025-11-11 06:33:36', '2025-11-11', 'News', NULL, ''),
(2861, 128, 338, 'Edit post for News module (338)', '2025-11-11 06:33:55', '2025-11-11', 'News', NULL, ''),
(2862, 128, 339, 'Edit post for News module (339)', '2025-11-11 06:34:09', '2025-11-11', 'News', NULL, ''),
(2863, 128, 340, 'Edit post for News module (340)', '2025-11-11 06:34:22', '2025-11-11', 'News', NULL, ''),
(2864, 128, 341, 'Edit post for News module (341)', '2025-11-11 06:34:34', '2025-11-11', 'News', NULL, ''),
(2865, 128, 243, 'Edit post for News module (243)', '2025-11-11 07:39:13', '2025-11-11', 'News', NULL, ''),
(2866, 128, 413, 'Edit post for News module (413)', '2025-11-11 07:39:46', '2025-11-11', 'News', NULL, ''),
(2867, 128, 413, 'Edit post for News module (413)', '2025-11-11 07:40:48', '2025-11-11', 'News', NULL, ''),
(2868, 128, 409, 'Edit post for News module (409)', '2025-11-11 07:43:31', '2025-11-11', 'News', NULL, ''),
(2869, 128, 408, 'Edit post for News module (408)', '2025-11-11 07:43:52', '2025-11-11', 'News', NULL, ''),
(2870, 128, 404, 'Edit post for News module (404)', '2025-11-11 07:44:41', '2025-11-11', 'News', NULL, ''),
(2871, 128, 403, 'Edit post for News module (403)', '2025-11-11 07:45:09', '2025-11-11', 'News', NULL, ''),
(2872, 128, 402, 'Edit post for News module (402)', '2025-11-11 07:45:59', '2025-11-11', 'News', NULL, ''),
(2873, 128, 243, 'Edit post for News module (243)', '2025-11-11 07:47:15', '2025-11-11', 'News', NULL, ''),
(2874, 128, 242, 'Edit post for News module (242)', '2025-11-11 07:48:01', '2025-11-11', 'News', NULL, ''),
(2875, 128, 241, 'Edit post for News module (241)', '2025-11-11 07:48:40', '2025-11-11', 'News', NULL, ''),
(2876, 128, 240, 'Edit post for News module (240)', '2025-11-11 07:49:32', '2025-11-11', 'News', NULL, ''),
(2877, 128, 239, 'Edit post for News module (239)', '2025-11-11 07:50:03', '2025-11-11', 'News', NULL, ''),
(2878, 128, 238, 'Edit post for News module (238)', '2025-11-11 07:50:46', '2025-11-11', 'News', NULL, ''),
(2879, 128, 238, 'Edit post for News module (238)', '2025-11-11 07:51:10', '2025-11-11', 'News', NULL, ''),
(2880, 128, 237, 'Edit post for News module (237)', '2025-11-11 07:53:46', '2025-11-11', 'News', NULL, ''),
(2881, 128, 236, 'Edit post for News module (236)', '2025-11-11 07:54:30', '2025-11-11', 'News', NULL, ''),
(2882, 128, 235, 'Edit post for News module (235)', '2025-11-11 07:55:12', '2025-11-11', 'News', NULL, ''),
(2883, 128, 235, 'Edit post for News module (235)', '2025-11-11 07:55:14', '2025-11-11', 'News', NULL, ''),
(2884, 128, 234, 'Edit post for News module (234)', '2025-11-11 07:56:33', '2025-11-11', 'News', NULL, ''),
(2885, 128, 233, 'Edit post for News module (233)', '2025-11-11 07:57:59', '2025-11-11', 'News', NULL, ''),
(2886, 128, 232, 'Edit post for News module (232)', '2025-11-11 07:58:50', '2025-11-11', 'News', NULL, ''),
(2887, 128, 231, 'Edit post for News module (231)', '2025-11-11 07:59:38', '2025-11-11', 'News', NULL, ''),
(2888, 128, 230, 'Edit post for News module (230)', '2025-11-11 08:00:26', '2025-11-11', 'News', NULL, ''),
(2889, 128, 229, 'Edit post for News module (229)', '2025-11-11 08:01:14', '2025-11-11', 'News', NULL, ''),
(2890, 128, 228, 'Edit post for News module (228)', '2025-11-11 08:01:48', '2025-11-11', 'News', NULL, ''),
(2891, 128, 227, 'Edit post for News module (227)', '2025-11-11 08:02:58', '2025-11-11', 'News', NULL, ''),
(2892, 128, 226, 'Edit post for News module (226)', '2025-11-11 08:03:45', '2025-11-11', 'News', NULL, ''),
(2893, 128, 422, 'Add post for News module (422)', '2025-11-11 08:15:11', '2025-11-11', 'News', NULL, ''),
(2894, 128, 422, 'Edit post for News module (422)', '2025-11-11 08:19:29', '2025-11-11', 'News', NULL, ''),
(2895, 128, 225, 'Edit post for News module (225)', '2025-11-11 10:29:29', '2025-11-11', 'News', NULL, ''),
(2896, 128, 224, 'Edit post for News module (224)', '2025-11-11 10:30:17', '2025-11-11', 'News', NULL, ''),
(2897, 128, 223, 'Edit post for News module (223)', '2025-11-11 10:31:23', '2025-11-11', 'News', NULL, ''),
(2898, 128, 222, 'Edit post for News module (222)', '2025-11-11 10:32:29', '2025-11-11', 'News', NULL, ''),
(2899, 128, 221, 'Edit post for News module (221)', '2025-11-11 10:33:49', '2025-11-11', 'News', NULL, ''),
(2900, 128, 221, 'Edit post for News module (221)', '2025-11-11 10:34:09', '2025-11-11', 'News', NULL, ''),
(2901, 128, 220, 'Edit post for News module (220)', '2025-11-11 10:35:52', '2025-11-11', 'News', NULL, ''),
(2902, 128, 219, 'Edit post for News module (219)', '2025-11-11 10:36:51', '2025-11-11', 'News', NULL, ''),
(2903, 128, 218, 'Edit post for News module (218)', '2025-11-11 10:38:05', '2025-11-11', 'News', NULL, ''),
(2904, 128, 217, 'Edit post for News module (217)', '2025-11-11 10:38:49', '2025-11-11', 'News', NULL, ''),
(2905, 128, 216, 'Edit post for News module (216)', '2025-11-11 10:39:31', '2025-11-11', 'News', NULL, ''),
(2906, 128, 215, 'Edit post for News module (215)', '2025-11-11 10:40:15', '2025-11-11', 'News', NULL, ''),
(2907, 128, 214, 'Edit post for News module (214)', '2025-11-11 10:41:03', '2025-11-11', 'News', NULL, ''),
(2908, 128, 213, 'Edit post for News module (213)', '2025-11-11 10:42:04', '2025-11-11', 'News', NULL, ''),
(2909, 128, 213, 'Edit post for News module (213)', '2025-11-11 10:42:08', '2025-11-11', 'News', NULL, ''),
(2910, 128, 212, 'Edit post for News module (212)', '2025-11-11 10:43:26', '2025-11-11', 'News', NULL, ''),
(2911, 128, 211, 'Edit post for News module (211)', '2025-11-11 10:45:29', '2025-11-11', 'News', NULL, ''),
(2912, 128, 210, 'Edit post for News module (210)', '2025-11-11 10:46:38', '2025-11-11', 'News', NULL, ''),
(2913, 128, 209, 'Edit post for News module (209)', '2025-11-11 10:47:33', '2025-11-11', 'News', NULL, ''),
(2914, 128, 208, 'Edit post for News module (208)', '2025-11-11 10:50:21', '2025-11-11', 'News', NULL, ''),
(2915, 128, 207, 'Edit post for News module (207)', '2025-11-11 10:51:46', '2025-11-11', 'News', NULL, ''),
(2916, 128, 206, 'Edit post for News module (206)', '2025-11-11 10:52:37', '2025-11-11', 'News', NULL, ''),
(2917, 128, 205, 'Edit post for News module (205)', '2025-11-11 10:53:15', '2025-11-11', 'News', NULL, ''),
(2918, 128, 204, 'Edit post for News module (204)', '2025-11-11 10:54:56', '2025-11-11', 'News', NULL, ''),
(2919, 128, 203, 'Edit post for News module (203)', '2025-11-11 10:56:24', '2025-11-11', 'News', NULL, ''),
(2920, 128, 202, 'Edit post for News module (202)', '2025-11-11 10:57:11', '2025-11-11', 'News', NULL, ''),
(2921, 128, 201, 'Edit post for News module (201)', '2025-11-11 10:58:09', '2025-11-11', 'News', NULL, ''),
(2922, 128, 200, 'Edit post for News module (200)', '2025-11-11 10:58:55', '2025-11-11', 'News', NULL, ''),
(2923, 128, 199, 'Edit post for News module (199)', '2025-11-11 10:59:50', '2025-11-11', 'News', NULL, ''),
(2924, 128, 197, 'Edit post for News module (197)', '2025-11-11 11:00:22', '2025-11-11', 'News', NULL, ''),
(2925, 128, 196, 'Edit post for News module (196)', '2025-11-11 11:00:59', '2025-11-11', 'News', NULL, ''),
(2926, 128, 195, 'Edit post for News module (195)', '2025-11-11 11:02:02', '2025-11-11', 'News', NULL, ''),
(2927, 128, 194, 'Edit post for News module (194)', '2025-11-11 11:02:31', '2025-11-11', 'News', NULL, ''),
(2928, 128, 399, 'Edit post for News module (399)', '2025-11-11 11:03:30', '2025-11-11', 'News', NULL, ''),
(2929, 128, 400, 'Edit post for News module (400)', '2025-11-11 11:04:57', '2025-11-11', 'News', NULL, ''),
(2930, 128, 130, 'Edit post for News module (130)', '2025-11-11 11:05:27', '2025-11-11', 'News', NULL, ''),
(2931, 128, 132, 'Edit post for News module (132)', '2025-11-11 11:06:00', '2025-11-11', 'News', NULL, ''),
(2932, 128, 133, 'Edit post for News module (133)', '2025-11-11 11:06:44', '2025-11-11', 'News', NULL, ''),
(2933, 128, 135, 'Edit post for News module (135)', '2025-11-11 11:07:30', '2025-11-11', 'News', NULL, ''),
(2934, 128, 136, 'Edit post for News module (136)', '2025-11-11 11:08:04', '2025-11-11', 'News', NULL, ''),
(2935, 128, 138, 'Edit post for News module (138)', '2025-11-11 11:08:51', '2025-11-11', 'News', NULL, ''),
(2936, 128, 140, 'Edit post for News module (140)', '2025-11-11 11:09:37', '2025-11-11', 'News', NULL, ''),
(2937, 128, 141, 'Edit post for News module (141)', '2025-11-11 11:10:23', '2025-11-11', 'News', NULL, ''),
(2938, 128, 141, 'Edit post for News module (141)', '2025-11-11 11:10:25', '2025-11-11', 'News', NULL, ''),
(2939, 128, 142, 'Edit post for News module (142)', '2025-11-11 11:11:33', '2025-11-11', 'News', NULL, ''),
(2940, 128, 144, 'Edit post for News module (144)', '2025-11-11 11:13:15', '2025-11-11', 'News', NULL, ''),
(2941, 128, 145, 'Edit post for News module (145)', '2025-11-11 11:15:13', '2025-11-11', 'News', NULL, ''),
(2942, 128, 147, 'Edit post for News module (147)', '2025-11-11 11:16:13', '2025-11-11', 'News', NULL, ''),
(2943, 128, 149, 'Edit post for News module (149)', '2025-11-11 11:18:30', '2025-11-11', 'News', NULL, ''),
(2944, 128, 155, 'Edit post for News module (155)', '2025-11-11 11:20:19', '2025-11-11', 'News', NULL, ''),
(2945, 128, 155, 'Edit post for News module (155)', '2025-11-11 11:21:08', '2025-11-11', 'News', NULL, ''),
(2946, 128, 156, 'Edit post for News module (156)', '2025-11-11 11:24:12', '2025-11-11', 'News', NULL, ''),
(2947, 128, 159, 'Edit post for News module (159)', '2025-11-11 11:25:32', '2025-11-11', 'News', NULL, ''),
(2948, 128, 160, 'Edit post for News module (160)', '2025-11-11 11:26:18', '2025-11-11', 'News', NULL, ''),
(2949, 128, 161, 'Edit post for News module (161)', '2025-11-11 11:27:21', '2025-11-11', 'News', NULL, ''),
(2950, 128, 163, 'Edit post for News module (163)', '2025-11-11 11:27:53', '2025-11-11', 'News', NULL, ''),
(2951, 128, 164, 'Edit post for News module (164)', '2025-11-11 11:29:07', '2025-11-11', 'News', NULL, ''),
(2952, 128, 165, 'Edit post for News module (165)', '2025-11-11 11:29:54', '2025-11-11', 'News', NULL, ''),
(2953, 128, 166, 'Edit post for News module (166)', '2025-11-11 11:33:04', '2025-11-11', 'News', NULL, ''),
(2954, 128, 168, 'Edit post for News module (168)', '2025-11-11 11:33:54', '2025-11-11', 'News', NULL, ''),
(2955, 128, 169, 'Edit post for News module (169)', '2025-11-11 11:34:55', '2025-11-11', 'News', NULL, ''),
(2956, 128, 171, 'Edit post for News module (171)', '2025-11-11 11:36:20', '2025-11-11', 'News', NULL, ''),
(2957, 128, 174, 'Edit post for News module (174)', '2025-11-11 11:37:02', '2025-11-11', 'News', NULL, ''),
(2958, 128, 175, 'Edit post for News module (175)', '2025-11-11 11:37:57', '2025-11-11', 'News', NULL, ''),
(2959, 128, 177, 'Edit post for News module (177)', '2025-11-11 11:38:40', '2025-11-11', 'News', NULL, ''),
(2960, 128, 179, 'Edit post for News module (179)', '2025-11-11 11:39:15', '2025-11-11', 'News', NULL, ''),
(2961, 128, 180, 'Edit post for News module (180)', '2025-11-11 11:40:01', '2025-11-11', 'News', NULL, ''),
(2962, 128, 184, 'Edit post for News module (184)', '2025-11-11 11:41:01', '2025-11-11', 'News', NULL, ''),
(2963, 128, 185, 'Edit post for News module (185)', '2025-11-11 11:41:50', '2025-11-11', 'News', NULL, ''),
(2964, 128, 186, 'Edit post for News module (186)', '2025-11-11 11:42:40', '2025-11-11', 'News', NULL, ''),
(2965, 128, 187, 'Edit post for News module (187)', '2025-11-11 11:43:31', '2025-11-11', 'News', NULL, ''),
(2966, 128, 188, 'Edit post for News module (188)', '2025-11-11 11:44:08', '2025-11-11', 'News', NULL, ''),
(2967, 128, 189, 'Edit post for News module (189)', '2025-11-11 11:44:49', '2025-11-11', 'News', NULL, ''),
(2968, 128, 190, 'Edit post for News module (190)', '2025-11-11 11:46:14', '2025-11-11', 'News', NULL, ''),
(2969, 128, 191, 'Edit post for News module (191)', '2025-11-11 11:46:49', '2025-11-11', 'News', NULL, ''),
(2970, 128, 191, 'Edit post for News module (191)', '2025-11-11 11:46:51', '2025-11-11', 'News', NULL, ''),
(2971, 128, 192, 'Edit post for News module (192)', '2025-11-11 11:48:04', '2025-11-11', 'News', NULL, ''),
(2972, 128, 192, 'Edit post for News module (192)', '2025-11-11 11:48:11', '2025-11-11', 'News', NULL, ''),
(2973, 128, 193, 'Edit post for News module (193)', '2025-11-11 11:48:45', '2025-11-11', 'News', NULL, ''),
(2974, 128, 337, 'Edit post for News module (337)', '2025-11-12 05:50:27', '2025-11-12', 'News', NULL, ''),
(2975, 128, 327, 'Edit post for News module (327)', '2025-11-12 05:54:30', '2025-11-12', 'News', NULL, ''),
(2976, 128, 326, 'Edit post for News module (326)', '2025-11-12 05:54:57', '2025-11-12', 'News', NULL, ''),
(2977, 128, 325, 'Edit post for News module (325)', '2025-11-12 05:55:41', '2025-11-12', 'News', NULL, ''),
(2978, 128, 324, 'Edit post for News module (324)', '2025-11-12 05:56:04', '2025-11-12', 'News', NULL, ''),
(2979, 128, 326, 'Edit post for News module (326)', '2025-11-12 05:56:24', '2025-11-12', 'News', NULL, ''),
(2980, 128, 325, 'Edit post for News module (325)', '2025-11-12 05:56:38', '2025-11-12', 'News', NULL, ''),
(2981, 128, 323, 'Edit post for News module (323)', '2025-11-12 05:57:03', '2025-11-12', 'News', NULL, ''),
(2982, 128, 322, 'Edit post for News module (322)', '2025-11-12 05:57:28', '2025-11-12', 'News', NULL, ''),
(2983, 128, 321, 'Edit post for News module (321)', '2025-11-12 05:58:12', '2025-11-12', 'News', NULL, ''),
(2984, 128, 322, 'Edit post for News module (322)', '2025-11-12 06:00:21', '2025-11-12', 'News', NULL, ''),
(2985, 128, 322, 'Edit post for News module (322)', '2025-11-12 06:00:23', '2025-11-12', 'News', NULL, ''),
(2986, 128, 322, 'Edit post for News module (322)', '2025-11-12 06:00:26', '2025-11-12', 'News', NULL, ''),
(2987, 128, 320, 'Edit post for News module (320)', '2025-11-12 06:00:51', '2025-11-12', 'News', NULL, ''),
(2988, 128, 319, 'Edit post for News module (319)', '2025-11-12 06:01:08', '2025-11-12', 'News', NULL, ''),
(2989, 128, 318, 'Edit post for News module (318)', '2025-11-12 06:01:28', '2025-11-12', 'News', NULL, ''),
(2990, 128, 317, 'Edit post for News module (317)', '2025-11-12 06:01:45', '2025-11-12', 'News', NULL, ''),
(2991, 128, 316, 'Edit post for News module (316)', '2025-11-12 06:02:06', '2025-11-12', 'News', NULL, ''),
(2992, 128, 315, 'Edit post for News module (315)', '2025-11-12 06:02:20', '2025-11-12', 'News', NULL, ''),
(2993, 128, 314, 'Edit post for News module (314)', '2025-11-12 06:02:50', '2025-11-12', 'News', NULL, ''),
(2994, 128, 313, 'Edit post for News module (313)', '2025-11-12 06:03:19', '2025-11-12', 'News', NULL, ''),
(2995, 128, 311, 'Edit post for News module (311)', '2025-11-12 06:04:00', '2025-11-12', 'News', NULL, ''),
(2996, 128, 310, 'Edit post for News module (310)', '2025-11-12 06:04:14', '2025-11-12', 'News', NULL, ''),
(2997, 128, 309, 'Edit post for News module (309)', '2025-11-12 06:04:32', '2025-11-12', 'News', NULL, ''),
(2998, 128, 308, 'Edit post for News module (308)', '2025-11-12 06:04:50', '2025-11-12', 'News', NULL, ''),
(2999, 128, 307, 'Edit post for News module (307)', '2025-11-12 06:05:05', '2025-11-12', 'News', NULL, ''),
(3000, 128, 306, 'Edit post for News module (306)', '2025-11-12 06:05:12', '2025-11-12', 'News', NULL, ''),
(3001, 128, 262, 'Edit post for News module (262)', '2025-11-12 06:05:28', '2025-11-12', 'News', NULL, ''),
(3002, 128, 261, 'Edit post for News module (261)', '2025-11-12 06:05:43', '2025-11-12', 'News', NULL, ''),
(3003, 128, 260, 'Edit post for News module (260)', '2025-11-12 06:06:01', '2025-11-12', 'News', NULL, ''),
(3004, 128, 260, 'Edit post for News module (260)', '2025-11-12 06:06:05', '2025-11-12', 'News', NULL, ''),
(3005, 128, 260, 'Edit post for News module (260)', '2025-11-12 06:06:08', '2025-11-12', 'News', NULL, ''),
(3006, 128, 259, 'Edit post for News module (259)', '2025-11-12 06:06:24', '2025-11-12', 'News', NULL, ''),
(3007, 128, 258, 'Edit post for News module (258)', '2025-11-12 06:06:41', '2025-11-12', 'News', NULL, ''),
(3008, 128, 257, 'Edit post for News module (257)', '2025-11-12 06:06:58', '2025-11-12', 'News', NULL, ''),
(3009, 128, 328, 'Edit post for News module (328)', '2025-11-12 06:09:47', '2025-11-12', 'News', NULL, ''),
(3010, 128, 329, 'Edit post for News module (329)', '2025-11-12 06:09:54', '2025-11-12', 'News', NULL, ''),
(3011, 128, 330, 'Edit post for News module (330)', '2025-11-12 06:10:09', '2025-11-12', 'News', NULL, ''),
(3012, 128, 331, 'Edit post for News module (331)', '2025-11-12 06:10:20', '2025-11-12', 'News', NULL, ''),
(3013, 128, 332, 'Edit post for News module (332)', '2025-11-12 06:10:28', '2025-11-12', 'News', NULL, ''),
(3014, 128, 332, 'Edit post for News module (332)', '2025-11-12 06:10:29', '2025-11-12', 'News', NULL, ''),
(3015, 128, 333, 'Edit post for News module (333)', '2025-11-12 06:10:40', '2025-11-12', 'News', NULL, ''),
(3016, 128, 334, 'Edit post for News module (334)', '2025-11-12 06:10:51', '2025-11-12', 'News', NULL, ''),
(3017, 128, 335, 'Edit post for News module (335)', '2025-11-12 06:11:39', '2025-11-12', 'News', NULL, ''),
(3018, 128, 336, 'Edit post for News module (336)', '2025-11-12 06:11:50', '2025-11-12', 'News', NULL, ''),
(3019, 128, 245, 'Edit post for News module (245)', '2025-11-12 06:12:03', '2025-11-12', 'News', NULL, ''),
(3020, 128, 246, 'Edit post for News module (246)', '2025-11-12 06:12:16', '2025-11-12', 'News', NULL, ''),
(3021, 128, 246, 'Edit post for News module (246)', '2025-11-12 06:14:29', '2025-11-12', 'News', NULL, ''),
(3022, 128, 247, 'Edit post for News module (247)', '2025-11-12 06:14:48', '2025-11-12', 'News', NULL, ''),
(3023, 128, 248, 'Edit post for News module (248)', '2025-11-12 06:15:00', '2025-11-12', 'News', NULL, ''),
(3024, 128, 249, 'Edit post for News module (249)', '2025-11-12 06:15:52', '2025-11-12', 'News', NULL, ''),
(3025, 128, 250, 'Edit post for News module (250)', '2025-11-12 06:16:03', '2025-11-12', 'News', NULL, ''),
(3026, 128, 252, 'Edit post for News module (252)', '2025-11-12 06:16:27', '2025-11-12', 'News', NULL, ''),
(3027, 128, 253, 'Edit post for News module (253)', '2025-11-12 06:16:36', '2025-11-12', 'News', NULL, ''),
(3028, 128, 254, 'Edit post for News module (254)', '2025-11-12 06:16:48', '2025-11-12', 'News', NULL, ''),
(3029, 128, 255, 'Edit post for News module (255)', '2025-11-12 06:17:00', '2025-11-12', 'News', NULL, ''),
(3030, 128, 256, 'Edit post for News module (256)', '2025-11-12 06:17:11', '2025-11-12', 'News', NULL, ''),
(3031, 128, 423, 'Add post for News module (423)', '2025-11-13 07:48:40', '2025-11-13', 'News', NULL, ''),
(3032, 128, 424, 'Add post for News module (424)', '2025-11-13 07:53:06', '2025-11-13', 'News', NULL, ''),
(3033, 128, 423, 'Edit post for News module (423)', '2025-11-13 07:54:01', '2025-11-13', 'News', NULL, ''),
(3034, 128, 425, 'Add post for News module (425)', '2025-11-13 07:57:53', '2025-11-13', 'News', NULL, ''),
(3035, 128, 426, 'Add post for News module (426)', '2025-11-18 04:36:30', '2025-11-18', 'News', NULL, ''),
(3036, 128, 427, 'Add post for News module (427)', '2025-11-18 04:39:46', '2025-11-18', 'News', NULL, ''),
(3037, 128, 428, 'Add post for News module (428)', '2025-11-18 04:44:46', '2025-11-18', 'News', NULL, ''),
(3038, 128, 429, 'Add post for News module (429)', '2025-11-18 04:48:27', '2025-11-18', 'News', NULL, ''),
(3039, 128, 430, 'Add post for News module (430)', '2025-11-18 04:51:37', '2025-11-18', 'News', NULL, ''),
(3040, 128, 431, 'Add post for News module (431)', '2025-11-20 05:30:51', '2025-11-20', 'News', NULL, ''),
(3041, 128, 432, 'Add post for News module (432)', '2025-11-20 05:33:11', '2025-11-20', 'News', NULL, ''),
(3042, 128, 433, 'Add post for News module (433)', '2025-11-21 09:02:59', '2025-11-21', 'News', NULL, ''),
(3043, 1, 415, 'Edit post for staticpages module (415)', '2025-12-02 10:08:27', '2025-12-02', 'staticpages', NULL, ''),
(3044, 1, 1, 'Edit Settings  ( 1 )', '2025-12-02 11:13:03', '2025-12-02', 'settings', NULL, ''),
(3045, 128, 434, 'Add post for News module (434)', '2025-12-05 06:40:59', '2025-12-05', 'News', NULL, ''),
(3046, 128, 434, 'Edit post for News module (434)', '2025-12-05 06:46:58', '2025-12-05', 'News', NULL, ''),
(3047, 128, 435, 'Add post for News module (435)', '2025-12-05 06:56:54', '2025-12-05', 'News', NULL, ''),
(3048, 1, 420, 'Edit post for ourPartners module (420)', '2025-12-08 07:04:21', '2025-12-08', 'ourPartners', NULL, ''),
(3049, 1, 420, 'Edit post for ourPartners module (420)', '2025-12-08 07:04:48', '2025-12-08', 'ourPartners', NULL, ''),
(3050, 1, 419, 'Edit post for ourPartners module (419)', '2025-12-08 07:06:42', '2025-12-08', 'ourPartners', NULL, ''),
(3051, 1, 416, 'Delete post from ourPartners module (416)', '2025-12-08 07:07:34', '2025-12-08', 'ourPartners', NULL, ''),
(3052, 1, 418, 'Edit post for ourPartners module (418)', '2025-12-08 07:08:36', '2025-12-08', 'ourPartners', NULL, ''),
(3053, 1, 417, 'Edit post for ourPartners module (417)', '2025-12-08 07:10:02', '2025-12-08', 'ourPartners', NULL, ''),
(3054, 1, 415, 'Edit post for staticpages module (415)', '2025-12-08 07:27:17', '2025-12-08', 'staticpages', NULL, ''),
(3055, 1, 415, 'Edit post for staticpages module (415)', '2025-12-08 07:27:44', '2025-12-08', 'staticpages', NULL, ''),
(3056, 1, 55, 'Edit post for staticpages module (55)', '2025-12-09 04:46:25', '2025-12-09', 'staticpages', NULL, ''),
(3057, 1, 436, 'Add post for our_events module (436)', '2025-12-10 09:46:42', '2025-12-10', 'our_events', NULL, ''),
(3058, 1, 436, 'Delete post from our_events module (436)', '2025-12-10 09:49:53', '2025-12-10', 'our_events', NULL, ''),
(3059, 1, 437, 'Add post for our_events module (437)', '2025-12-10 09:53:04', '2025-12-10', 'our_events', NULL, ''),
(3060, 1, 29, 'Delete Application from  applications  module (29)', '2025-12-11 09:33:27', '2025-12-11', 'applications', NULL, ''),
(3061, 1, 13, 'Delete applications (13,12,11,10,9)', '2025-12-11 09:33:43', '2025-12-11', 'contact', NULL, ''),
(3062, 1, 438, 'Add post for ourPartners module (438)', '2025-12-11 15:01:52', '2025-12-11', 'ourPartners', NULL, ''),
(3063, 1, 438, 'Delete post from ourPartners module (438)', '2025-12-11 17:55:55', '2025-12-11', 'ourPartners', NULL, ''),
(3064, 1, 437, 'Delete post from our_events module (437)', '2025-12-11 17:56:12', '2025-12-11', 'our_events', NULL, ''),
(3065, 1, 1, 'Add post for our_services module (1)', '2025-12-14 14:00:20', '2025-12-14', 'our_services', NULL, ''),
(3066, 1, 2, 'Add post for our_services module (2)', '2025-12-14 14:00:50', '2025-12-14', 'our_services', NULL, ''),
(3067, 1, 3, 'Add post for our_services module (3)', '2025-12-14 14:01:03', '2025-12-14', 'our_services', NULL, ''),
(3068, 1, 4, 'Add post for our_services module (4)', '2025-12-14 14:01:17', '2025-12-14', 'our_services', NULL, ''),
(3069, 1, 5, 'Add post for our_services module (5)', '2025-12-14 14:01:59', '2025-12-14', 'our_services', NULL, ''),
(3070, 1, 11, 'Add category for properties module (11)', '2025-12-15 09:49:19', '2025-12-15', 'properties', NULL, ''),
(3071, 1, 12, 'Add category for properties module (12)', '2025-12-15 09:49:48', '2025-12-15', 'properties', NULL, ''),
(3072, 1, 13, 'Add category for properties module (13)', '2025-12-15 09:50:19', '2025-12-15', 'properties', NULL, ''),
(3073, 1, 14, 'Add category for properties module (14)', '2025-12-15 09:50:44', '2025-12-15', 'properties', NULL, ''),
(3074, 1, 15, 'Add category for properties module (15)', '2025-12-15 09:51:09', '2025-12-15', 'properties', NULL, ''),
(3075, 1, 6, 'Add post for properties module (6)', '2025-12-15 09:57:02', '2025-12-15', 'properties', NULL, ''),
(3076, 1, 1, 'Edit Settings  ( 1 )', '2025-12-15 10:13:00', '2025-12-15', 'settings', NULL, ''),
(3077, 1, 1, 'Edit Settings  ( 1 )', '2025-12-15 10:13:04', '2025-12-15', 'settings', NULL, ''),
(3078, 1, 7, 'Add post for properties module (7)', '2025-12-15 11:41:46', '2025-12-15', 'properties', NULL, ''),
(3079, 1, 6, 'Edit post for properties module (6)', '2025-12-15 11:43:32', '2025-12-15', 'properties', NULL, ''),
(3080, 1, 1, 'Edit Settings  ( 1 )', '2025-12-15 12:17:45', '2025-12-15', 'settings', NULL, ''),
(3081, 1, 1, 'Edit Settings  ( 1 )', '2025-12-15 12:18:02', '2025-12-15', 'settings', NULL, ''),
(3082, 1, 7, 'Add gallery for properties module (7)', '2025-12-15 12:21:16', '2025-12-15', 'properties', NULL, ''),
(3083, 1, 7, 'Add gallery for properties module (7)', '2025-12-15 12:21:28', '2025-12-15', 'properties', NULL, ''),
(3084, 1, 5, 'Edit post for our_services module (5)', '2025-12-17 13:31:45', '2025-12-17', 'our_services', NULL, ''),
(3085, 1, 4, 'Edit post for our_services module (4)', '2025-12-17 13:32:13', '2025-12-17', 'our_services', NULL, ''),
(3086, 1, 3, 'Edit post for our_services module (3)', '2025-12-17 13:32:30', '2025-12-17', 'our_services', NULL, ''),
(3087, 1, 2, 'Edit post for our_services module (2)', '2025-12-17 13:33:04', '2025-12-17', 'our_services', NULL, ''),
(3088, 1, 1, 'Edit post for our_services module (1)', '2025-12-17 13:33:32', '2025-12-17', 'our_services', NULL, ''),
(3089, 1, 1, 'Edit post for our_services module (1)', '2025-12-17 13:33:56', '2025-12-17', 'our_services', NULL, ''),
(3090, 1, 1, 'Edit post for our_services module (1)', '2025-12-17 13:33:56', '2025-12-17', 'our_services', NULL, ''),
(3091, 1, 1, 'Edit post for our_services module (1)', '2025-12-17 13:34:22', '2025-12-17', 'our_services', NULL, ''),
(3092, 1, 8, 'Add post for staticpages module (8)', '2025-12-18 07:49:17', '2025-12-18', 'staticpages', NULL, ''),
(3093, 1, 8, 'Edit post for staticpages module (8)', '2025-12-18 07:50:37', '2025-12-18', 'staticpages', NULL, ''),
(3094, 1, 8, 'Edit post for staticpages module (8)', '2025-12-18 07:51:19', '2025-12-18', 'staticpages', NULL, ''),
(3095, 1, 9, 'Add post for staticpages module (9)', '2025-12-18 07:51:49', '2025-12-18', 'staticpages', NULL, ''),
(3096, 1, 9, 'Edit post for staticpages module (9)', '2025-12-18 07:52:02', '2025-12-18', 'staticpages', NULL, ''),
(3097, 1, 10, 'Add post for News module (10)', '2025-12-18 12:41:47', '2025-12-18', 'News', NULL, ''),
(3098, 1, 11, 'Add post for News module (11)', '2025-12-18 12:42:54', '2025-12-18', 'News', NULL, ''),
(3099, 1, 12, 'Add post for News module (12)', '2025-12-18 12:43:58', '2025-12-18', 'News', NULL, ''),
(3100, 1, 1, 'Edit category for projects module (1)', '2025-12-18 15:20:04', '2025-12-18', 'projects', NULL, ''),
(3101, 1, 2, 'Edit category for projects module (2)', '2025-12-18 15:20:34', '2025-12-18', 'projects', NULL, ''),
(3102, 1, 3, 'Delete category from projects module (3)', '2025-12-18 15:20:42', '2025-12-18', 'projects', NULL, ''),
(3103, 1, 13, 'Add post for projects module (13)', '2025-12-18 15:23:03', '2025-12-18', 'projects', NULL, ''),
(3104, 1, 14, 'Add post for projects module (14)', '2025-12-18 15:24:09', '2025-12-18', 'projects', NULL, ''),
(3105, 1, 14, 'Edit post for projects module (14)', '2025-12-18 15:24:21', '2025-12-18', 'projects', NULL, ''),
(3106, 1, 15, 'Add post for careers module (15)', '2025-12-21 12:39:28', '2025-12-21', 'careers', NULL, ''),
(3107, 1, 12, 'Edit post for News module (12)', '2025-12-23 13:41:35', '2025-12-23', 'News', NULL, ''),
(3108, 1, 12, 'Edit post for News module (12)', '2025-12-23 13:45:51', '2025-12-23', 'News', NULL, ''),
(3109, 1, 14, 'Edit post for projects module (14)', '2025-12-24 09:27:31', '2025-12-24', 'projects', NULL, ''),
(3110, 1, 14, 'Edit post for projects module (14)', '2025-12-24 09:27:41', '2025-12-24', 'projects', NULL, ''),
(3111, 1, 13, 'Edit post for projects module (13)', '2025-12-24 09:28:20', '2025-12-24', 'projects', NULL, ''),
(3112, 1, 14, 'Edit post for projects module (14)', '2025-12-24 09:32:27', '2025-12-24', 'projects', NULL, ''),
(3113, 1, 13, 'Edit post for projects module (13)', '2025-12-24 09:39:21', '2025-12-24', 'projects', NULL, ''),
(3114, 1, 13, 'Edit post for projects module (13)', '2025-12-24 09:40:33', '2025-12-24', 'projects', NULL, ''),
(3115, 1, 13, 'Edit post for projects module (13)', '2025-12-24 09:45:38', '2025-12-24', 'projects', NULL, ''),
(3116, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 10:07:55', '2025-12-24', 'settings', NULL, ''),
(3117, 1, 12, 'Edit post for News module (12)', '2025-12-24 10:26:46', '2025-12-24', 'News', NULL, ''),
(3118, 1, 11, 'Edit post for News module (11)', '2025-12-24 10:26:59', '2025-12-24', 'News', NULL, ''),
(3119, 1, 10, 'Edit post for News module (10)', '2025-12-24 10:27:14', '2025-12-24', 'News', NULL, ''),
(3120, 1, 10, 'Edit post for News module (10)', '2025-12-24 10:28:19', '2025-12-24', 'News', NULL, ''),
(3121, 1, 10, 'Edit post for News module (10)', '2025-12-24 10:41:41', '2025-12-24', 'News', NULL, ''),
(3122, 1, 12, 'Edit post for News module (12)', '2025-12-24 10:41:55', '2025-12-24', 'News', NULL, ''),
(3123, 1, 11, 'Edit post for News module (11)', '2025-12-24 10:42:06', '2025-12-24', 'News', NULL, ''),
(3124, 1, 11, 'Edit post for News module (11)', '2025-12-24 10:43:20', '2025-12-24', 'News', NULL, ''),
(3125, 1, 12, 'Edit post for News module (12)', '2025-12-24 10:43:51', '2025-12-24', 'News', NULL, ''),
(3126, 1, 10, 'Edit post for News module (10)', '2025-12-24 10:44:00', '2025-12-24', 'News', NULL, ''),
(3127, 1, 12, 'Edit post for News module (12)', '2025-12-24 11:22:42', '2025-12-24', 'News', NULL, ''),
(3128, 1, 11, 'Edit post for News module (11)', '2025-12-24 11:22:52', '2025-12-24', 'News', NULL, ''),
(3129, 1, 10, 'Edit post for News module (10)', '2025-12-24 11:23:01', '2025-12-24', 'News', NULL, ''),
(3130, 1, 10, 'Edit post for News module (10)', '2025-12-24 11:31:02', '2025-12-24', 'News', NULL, ''),
(3131, 1, 11, 'Edit post for News module (11)', '2025-12-24 11:31:12', '2025-12-24', 'News', NULL, ''),
(3132, 1, 12, 'Edit post for News module (12)', '2025-12-24 11:31:37', '2025-12-24', 'News', NULL, ''),
(3133, 1, 12, 'Edit post for News module (12)', '2025-12-24 11:37:10', '2025-12-24', 'News', NULL, ''),
(3134, 1, 12, 'Edit post for News module (12)', '2025-12-24 11:37:58', '2025-12-24', 'News', NULL, ''),
(3135, 1, 11, 'Edit post for News module (11)', '2025-12-24 11:38:26', '2025-12-24', 'News', NULL, ''),
(3136, 1, 10, 'Edit post for News module (10)', '2025-12-24 11:38:39', '2025-12-24', 'News', NULL, ''),
(3137, 1, 10, 'Edit post for News module (10)', '2025-12-24 11:47:02', '2025-12-24', 'News', NULL, ''),
(3138, 1, 10, 'Edit post for News module (10)', '2025-12-24 11:47:44', '2025-12-24', 'News', NULL, ''),
(3139, 1, 16, 'Add post for Album module (16)', '2025-12-24 14:04:11', '2025-12-24', 'Album', NULL, ''),
(3140, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:25:02', '2025-12-24', 'settings', NULL, ''),
(3141, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:53:32', '2025-12-24', 'settings', NULL, ''),
(3142, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:54:26', '2025-12-24', 'settings', NULL, ''),
(3143, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:55:29', '2025-12-24', 'settings', NULL, ''),
(3144, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:57:01', '2025-12-24', 'settings', NULL, ''),
(3145, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:57:08', '2025-12-24', 'settings', NULL, ''),
(3146, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:57:22', '2025-12-24', 'settings', NULL, ''),
(3147, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:57:55', '2025-12-24', 'settings', NULL, ''),
(3148, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 14:59:49', '2025-12-24', 'settings', NULL, ''),
(3149, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:00:18', '2025-12-24', 'settings', NULL, ''),
(3150, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:01:27', '2025-12-24', 'settings', NULL, ''),
(3151, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:03:07', '2025-12-24', 'settings', NULL, ''),
(3152, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:03:24', '2025-12-24', 'settings', NULL, ''),
(3153, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:03:36', '2025-12-24', 'settings', NULL, '');
INSERT INTO `sv_logs` (`id`, `user_id`, `item_id`, `action`, `dattime`, `dat`, `module`, `tbl`, `no`) VALUES
(3154, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:04:05', '2025-12-24', 'settings', NULL, ''),
(3155, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:04:21', '2025-12-24', 'settings', NULL, ''),
(3156, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:10:53', '2025-12-24', 'settings', NULL, ''),
(3157, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:12:31', '2025-12-24', 'settings', NULL, ''),
(3158, 1, 1, 'Edit Settings  ( 1 )', '2025-12-24 15:12:49', '2025-12-24', 'settings', NULL, ''),
(3159, 1, 17, 'Add post for Album module (17)', '2025-12-24 15:18:02', '2025-12-24', 'Album', NULL, ''),
(3160, 1, 5, 'Make post at HOME is yes for our_services module (5)', '2025-12-24 15:22:11', '2025-12-24', 'our_services', NULL, ''),
(3161, 1, 4, 'Make post at HOME is yes for our_services module (4)', '2025-12-24 15:22:14', '2025-12-24', 'our_services', NULL, ''),
(3162, 1, 7, 'Make post at HOME is yes for properties module (7)', '2025-12-24 15:24:39', '2025-12-24', 'properties', NULL, ''),
(3163, 1, 6, 'Make post at HOME is yes for properties module (6)', '2025-12-24 15:24:41', '2025-12-24', 'properties', NULL, ''),
(3164, 1, 18, 'Add post for About_academy module (18)', '2025-12-24 15:38:22', '2025-12-24', 'About_academy', NULL, ''),
(3165, 1, 14, 'Make post at HOME is yes for projects module (14)', '2025-12-24 15:41:55', '2025-12-24', 'projects', NULL, ''),
(3166, 1, 13, 'Make post at HOME is yes for projects module (13)', '2025-12-24 15:41:56', '2025-12-24', 'projects', NULL, ''),
(3167, 1, 17, 'Edit post for Album module (17)', '2025-12-25 07:50:39', '2025-12-25', 'Album', NULL, ''),
(3168, 1, 7, 'Edit post for properties module (7)', '2025-12-25 08:20:56', '2025-12-25', 'properties', NULL, ''),
(3169, 1, 14, 'Edit post for projects module (14)', '2025-12-25 08:28:49', '2025-12-25', 'projects', NULL, ''),
(3170, 1, 1, 'Edit Settings  ( 1 )', '2025-12-25 09:15:01', '2025-12-25', 'settings', NULL, ''),
(3171, 1, 1, 'Edit Settings  ( 1 )', '2025-12-25 09:15:24', '2025-12-25', 'settings', NULL, ''),
(3172, 1, 1, 'Edit Settings  ( 1 )', '2025-12-25 09:22:09', '2025-12-25', 'settings', NULL, ''),
(3173, 1, 7, 'Edit post for properties module (7)', '2025-12-25 14:37:37', '2025-12-25', 'properties', NULL, ''),
(3174, 1, 19, 'Add post for staticpages module (19)', '2025-12-25 14:47:05', '2025-12-25', 'staticpages', NULL, ''),
(3175, 1, 17, 'Edit post for Album module (17)', '2025-12-25 15:36:00', '2025-12-25', 'Album', NULL, ''),
(3176, 1, 16, 'Edit post for Album module (16)', '2025-12-25 15:36:23', '2025-12-25', 'Album', NULL, ''),
(3177, 1, 20, 'Add post for team_work module (20)', '2025-12-29 10:13:26', '2025-12-29', 'team_work', NULL, ''),
(3178, 1, 21, 'Add post for team_work module (21)', '2025-12-29 10:14:08', '2025-12-29', 'team_work', NULL, ''),
(3179, 1, 22, 'Add post for team_work module (22)', '2025-12-29 10:14:52', '2025-12-29', 'team_work', NULL, ''),
(3180, 1, 23, 'Add post for certificates module (23)', '2025-12-29 10:15:36', '2025-12-29', 'certificates', NULL, ''),
(3181, 1, 24, 'Add post for certificates module (24)', '2025-12-29 10:16:19', '2025-12-29', 'certificates', NULL, ''),
(3182, 1, 25, 'Add post for certificates module (25)', '2025-12-29 10:17:20', '2025-12-29', 'certificates', NULL, ''),
(3183, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:07:43', '2026-04-07', 'News', NULL, NULL),
(3184, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:10:13', '2026-04-07', 'News', NULL, NULL),
(3185, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:10:20', '2026-04-07', 'News', NULL, NULL),
(3186, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:11:49', '2026-04-07', 'News', NULL, NULL),
(3187, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:14:15', '2026-04-07', 'News', NULL, NULL),
(3188, 1, 10, 'Edit post for News module (10)', '2026-04-07 12:15:37', '2026-04-07', 'News', NULL, NULL),
(3189, 1, 10, 'Edit post for News module (10)', '2026-04-07 13:30:10', '2026-04-07', 'News', NULL, NULL),
(3190, 1, 10, 'Edit post for News module (10)', '2026-04-07 13:30:40', '2026-04-07', 'News', NULL, NULL),
(3191, 1, 10, 'Edit post for News module (10)', '2026-04-07 13:31:04', '2026-04-07', 'News', NULL, NULL),
(3192, 1, 10, 'Edit post for News module (10)', '2026-04-07 13:31:19', '2026-04-07', 'News', NULL, NULL),
(3193, 1, 10, 'Edit post for News module (10)', '2026-04-08 08:45:57', '2026-04-08', 'News', NULL, NULL),
(3194, 1, 48, 'Edit post for News module (48)', '2026-04-08 10:00:55', '2026-04-08', 'News', NULL, NULL),
(3195, 1, 49, 'Add a new post for News module (49)', '2026-04-08 10:27:54', '2026-04-08', 'News', NULL, NULL),
(3196, 1, 50, 'Add a new post for News module (50)', '2026-04-08 10:38:55', '2026-04-08', 'News', NULL, NULL),
(3197, 1, 51, 'Add a new post for News module (51)', '2026-04-08 10:41:24', '2026-04-08', 'News', NULL, NULL),
(3198, 1, 52, 'Add a new post for News module (52)', '2026-04-08 10:42:52', '2026-04-08', 'News', NULL, NULL),
(3199, 1, 53, 'Add a new post for News module (53)', '2026-04-08 10:59:37', '2026-04-08', 'News', NULL, NULL),
(3200, 1, 54, 'Add a new post for News module (54)', '2026-04-08 12:56:20', '2026-04-08', 'News', NULL, NULL),
(3201, 1, 55, 'Add a new post for News module (55)', '2026-04-08 14:13:53', '2026-04-08', 'News', NULL, NULL),
(3202, 1, 56, 'Add a new post for News module (56)', '2026-04-08 14:32:14', '2026-04-08', 'News', NULL, NULL),
(3203, 1, 57, 'Add a new post for News module (57)', '2026-04-08 14:41:02', '2026-04-08', 'News', NULL, NULL),
(3204, 1, 58, 'Add a new post for News module (58)', '2026-04-08 14:43:09', '2026-04-08', 'News', NULL, NULL),
(3205, 1, 61, 'Add a new post for News module (61)', '2026-04-08 15:00:47', '2026-04-08', 'News', NULL, NULL),
(3206, 1, 62, 'Add a new post for News module (62)', '2026-04-08 15:05:13', '2026-04-08', 'News', NULL, NULL),
(3207, 1, 63, 'Add a new post for News module (63)', '2026-04-08 15:08:11', '2026-04-08', 'News', NULL, NULL),
(3208, 1, 65, 'Add a new post for News module (65)', '2026-04-08 15:20:35', '2026-04-08', 'News', NULL, NULL),
(3209, 1, 66, 'Add a new post for News module (66)', '2026-04-08 15:24:12', '2026-04-08', 'News', NULL, NULL),
(3210, 1, 66, 'Edit post for News module (66)', '2026-04-08 15:29:28', '2026-04-08', 'News', NULL, NULL),
(3211, 1, 68, 'Add a new post for News module (68)', '2026-04-08 16:06:28', '2026-04-08', 'News', NULL, NULL),
(3212, 1, 69, 'Add a new post for careers module (69)', '2026-04-09 07:53:34', '2026-04-09', 'careers', NULL, NULL),
(3213, 1, 70, 'Add a new post for careers module (70)', '2026-04-09 07:55:12', '2026-04-09', 'careers', NULL, NULL),
(3214, 1, 71, 'Add a new post for Offers module (71)', '2026-04-12 08:59:43', '2026-04-12', 'Offers', NULL, NULL),
(3215, 1, 1, 'Edit post for our_services module (1)', '2026-04-12 13:11:36', '2026-04-12', 'our_services', NULL, NULL),
(3216, 1, 69, 'Edit post for careers module (69)', '2026-04-12 14:01:21', '2026-04-12', 'careers', NULL, NULL),
(3217, 1, 27, 'Edit post for News module (27)', '2026-04-12 14:03:16', '2026-04-12', 'News', NULL, NULL),
(3218, 1, 11, 'Edit post for News module (11)', '2026-04-12 14:03:52', '2026-04-12', 'News', NULL, NULL),
(3219, 1, 11, 'Edit post for News module (11)', '2026-04-12 15:28:29', '2026-04-12', 'News', NULL, NULL),
(3220, 1, 72, 'Add a new post for contact_us module (72)', '2026-04-14 09:21:05', '2026-04-14', 'contact_us', NULL, NULL),
(3221, 1, 72, 'Edit post for contact_us module (72)', '2026-04-14 09:23:42', '2026-04-14', 'contact_us', NULL, NULL),
(3222, 1, 70, 'Edit post for careers module (70)', '2026-04-14 11:24:46', '2026-04-14', 'careers', NULL, NULL),
(3223, 1, 70, 'Edit post for careers module (70)', '2026-04-14 11:24:53', '2026-04-14', 'careers', NULL, NULL),
(3224, 1, 73, 'Add a new post for contact_us module (73)', '2026-04-14 11:25:13', '2026-04-14', 'contact_us', NULL, NULL),
(3225, 1, 73, 'Edit post for contact_us module (73)', '2026-04-14 11:25:34', '2026-04-14', 'contact_us', NULL, NULL),
(3226, 1, 5, 'Edit post for our_services module (5)', '2026-04-14 11:25:59', '2026-04-14', 'our_services', NULL, NULL),
(3227, 1, 70, 'Edit post for careers module (70)', '2026-04-14 13:54:49', '2026-04-14', 'careers', NULL, NULL),
(3228, 1, 74, 'Add a new post for careers module (74)', '2026-04-14 14:01:37', '2026-04-14', 'careers', NULL, NULL),
(3229, 1, 74, 'Edit post for careers module (74)', '2026-04-14 14:02:00', '2026-04-14', 'careers', NULL, NULL),
(3230, 1, 75, 'Add a new post for About_academy module (75)', '2026-04-14 14:10:57', '2026-04-14', 'About_academy', NULL, NULL),
(3231, 1, 88, 'Add a new post for projects module (88)', '2026-04-14 14:24:09', '2026-04-14', 'projects', NULL, NULL),
(3232, 1, 89, 'Add a new post for projects module (89)', '2026-04-14 14:24:19', '2026-04-14', 'projects', NULL, NULL),
(3233, 1, 90, 'Add a new post for projects module (90)', '2026-04-14 14:25:31', '2026-04-14', 'projects', NULL, NULL),
(3234, 1, 91, 'Add a new post for About_academy module (91)', '2026-04-14 14:37:35', '2026-04-14', 'About_academy', NULL, NULL),
(3235, 1, 92, 'Add a new post for News module (92)', '2026-04-14 14:37:54', '2026-04-14', 'News', NULL, NULL),
(3236, 1, 93, 'Add a new post for projects module (93)', '2026-04-14 14:38:07', '2026-04-14', 'projects', NULL, NULL),
(3237, 1, 70, 'Edit post for careers module (70)', '2026-04-14 14:44:41', '2026-04-14', 'careers', NULL, NULL),
(3238, 1, 94, 'Add a new post for properties module (94)', '2026-04-14 14:44:53', '2026-04-14', 'properties', NULL, NULL),
(3239, 1, 94, 'Edit post for properties module (94)', '2026-04-14 14:44:59', '2026-04-14', 'properties', NULL, NULL),
(3240, 1, 95, 'Add a new post for our_services module (95)', '2026-04-14 15:27:34', '2026-04-14', 'our_services', NULL, NULL),
(3241, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:29:31', '2026-04-14', 'our_services', NULL, NULL),
(3242, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:32:30', '2026-04-14', 'our_services', NULL, NULL),
(3243, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:36:32', '2026-04-14', 'our_services', NULL, NULL),
(3244, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:36:45', '2026-04-14', 'our_services', NULL, NULL),
(3245, 1, 96, 'Add a new post for careers module (96)', '2026-04-14 15:37:31', '2026-04-14', 'careers', NULL, NULL),
(3246, 1, 96, 'Edit post for careers module (96)', '2026-04-14 15:38:15', '2026-04-14', 'careers', NULL, NULL),
(3247, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:41:59', '2026-04-14', 'our_services', NULL, NULL),
(3248, 1, 95, 'Edit post for our_services module (95)', '2026-04-14 15:42:12', '2026-04-14', 'our_services', NULL, NULL),
(3249, 1, 97, 'Add a new post for projects module (97)', '2026-04-15 11:31:20', '2026-04-15', 'projects', NULL, NULL),
(3250, 1, 98, 'Add a new post for News module (98)', '2026-04-15 11:50:02', '2026-04-15', 'News', NULL, NULL),
(3251, 1, 98, 'Edit post for News module (98)', '2026-04-15 11:50:21', '2026-04-15', 'News', NULL, NULL),
(3252, 1, 96, 'Edit post for careers module (96)', '2026-04-15 14:19:34', '2026-04-15', 'careers', NULL, NULL),
(3253, 1, 91, 'Edit post for About_academy module (91)', '2026-04-15 14:25:16', '2026-04-15', 'About_academy', NULL, NULL),
(3254, 1, 98, 'Edit post for News module (98)', '2026-04-15 14:30:17', '2026-04-15', 'News', NULL, NULL),
(3255, 1, 98, 'Edit post for News module (98)', '2026-04-15 14:30:44', '2026-04-15', 'News', NULL, NULL),
(3256, 1, 69, 'Edit post for careers module (69)', '2026-04-16 14:18:09', '2026-04-16', 'careers', NULL, NULL),
(3257, 1, 99, 'Add a new post for staticpages module (99)', '2026-04-16 14:24:46', '2026-04-16', 'staticpages', NULL, NULL),
(3258, 1, 99, 'Edit post for staticpages module (99)', '2026-04-16 14:25:00', '2026-04-16', 'staticpages', NULL, NULL),
(3259, 1, 65, 'Edit post for News module (65)', '2026-04-20 09:12:51', '2026-04-20', 'News', NULL, NULL),
(3260, 1, 50, 'Edit post for News module (50)', '2026-04-20 09:20:52', '2026-04-20', 'News', NULL, NULL),
(3261, 1, 49, 'Edit post for News module (49)', '2026-04-20 09:28:23', '2026-04-20', 'News', NULL, NULL),
(3262, 1, 94, 'Edit post for properties module (94)', '2026-04-20 11:49:50', '2026-04-20', 'properties', NULL, NULL),
(3263, 1, 94, 'Edit post for properties module (94)', '2026-04-20 11:52:34', '2026-04-20', 'properties', NULL, NULL),
(3264, 1, 100, 'Add a new post for News module (100)', '2026-04-20 15:34:15', '2026-04-20', 'News', NULL, NULL),
(3265, 1, 101, 'Add a new post for events module (101)', '2026-04-21 15:19:09', '2026-04-21', 'events', NULL, NULL),
(3266, 1, 101, 'Edit post for events module (101)', '2026-04-21 15:23:31', '2026-04-21', 'events', NULL, NULL),
(3267, 1, 101, 'Edit post for events module (101)', '2026-04-21 15:24:53', '2026-04-21', 'events', NULL, NULL),
(3268, 1, 101, 'Edit post for events module (101)', '2026-04-21 15:33:04', '2026-04-21', 'events', NULL, NULL),
(3269, 1, 101, 'Edit post for events module (101)', '2026-04-21 15:36:15', '2026-04-21', 'events', NULL, NULL),
(3270, 1, 101, 'Edit post for events module (101)', '2026-04-22 09:04:32', '2026-04-22', 'events', NULL, NULL),
(3271, 1, 101, 'Edit post for events module (101)', '2026-04-22 09:13:02', '2026-04-22', 'events', NULL, NULL),
(3272, 1, 101, 'Edit post for events module (101)', '2026-04-22 11:15:36', '2026-04-22', 'events', NULL, NULL),
(3273, 1, 101, 'Edit post for events module (101)', '2026-04-22 11:19:15', '2026-04-22', 'events', NULL, NULL),
(3274, 1, 102, 'Add a new post for News module (102)', '2026-04-22 11:41:02', '2026-04-22', 'News', NULL, NULL),
(3275, 1, 100, 'Edit post for News module (100)', '2026-04-22 11:41:50', '2026-04-22', 'News', NULL, NULL),
(3276, 1, 103, 'Add a new post for events module (103)', '2026-04-22 12:13:30', '2026-04-22', 'events', NULL, NULL),
(3277, 1, 104, 'Add a new post for events module (104)', '2026-04-22 12:14:36', '2026-04-22', 'events', NULL, NULL),
(3278, 1, 105, 'Add a new post for releases module (105)', '2026-04-22 15:05:22', '2026-04-22', 'releases', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testpermissions`
--

CREATE TABLE `testpermissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `module` varchar(250) NOT NULL,
  `action` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testpermissions`
--

INSERT INTO `testpermissions` (`id`, `group_id`, `module`, `action`) VALUES
(1380, 46, 'pages', 'view'),
(1381, 46, 'pages', 'add'),
(1382, 46, 'pages', 'edit'),
(1383, 46, 'About', 'view'),
(1384, 46, 'About', 'edit'),
(1385, 46, 'About', 'Porder'),
(1386, 46, 'Album', 'view'),
(1387, 46, 'Album', 'add'),
(1388, 46, 'Album', 'edit'),
(1389, 46, 'Album', 'delete'),
(1390, 46, 'Album', 'Porder'),
(1391, 46, 'Album', 'at_home'),
(1392, 46, 'Album', 'active'),
(1393, 46, 'Video', 'view'),
(1394, 46, 'Video', 'add'),
(1395, 46, 'Video', 'delete'),
(1396, 46, 'Video', 'Porder'),
(1397, 46, 'Jobs', 'view'),
(1398, 46, 'Jobs', 'add'),
(1399, 46, 'Jobs', 'Porder'),
(1400, 46, 'Jobs', 'active'),
(1401, 46, 'News', 'view'),
(1402, 46, 'News', 'add'),
(1403, 46, 'News', 'edit'),
(1404, 46, 'News', 'delete'),
(1405, 46, 'News', 'Porder'),
(1406, 46, 'News', 'at_home'),
(1407, 46, 'News', 'active'),
(1408, 46, 'Programs', 'view'),
(1409, 46, 'Programs', 'edit'),
(1410, 46, 'Programs', 'active'),
(1411, 46, 'slider', 'view'),
(1412, 46, 'slider', 'add'),
(1413, 46, 'slider', 'edit'),
(1414, 46, 'slider', 'delete'),
(1415, 46, 'slider', 'Porder'),
(1416, 46, 'slider', 'active'),
(1417, 46, 'settings', 'view'),
(1418, 46, 'settings', 'edit'),
(1419, 46, 'logs', 'view'),
(1420, 46, 'logs', 'edit'),
(1421, 46, 'users', 'view'),
(1422, 46, 'users', 'edit'),
(1423, 46, 'users', 'add'),
(1424, 46, 'users', 'delete'),
(1425, 46, 'users', 'permission'),
(1426, 46, 'msg', 'view'),
(1427, 4, 'About', 'view'),
(4417, 47, 'About_academy', 'view'),
(4418, 47, 'About_academy', 'edit'),
(4419, 47, 'About_academy', 'Porder'),
(4420, 47, 'careers', 'view'),
(4421, 47, 'careers', 'add'),
(4422, 47, 'careers', 'edit'),
(4423, 47, 'careers', 'Porder'),
(4424, 47, 'careers', 'active'),
(4425, 48, 'Album', 'view'),
(4426, 48, 'Album', 'add'),
(4427, 48, 'Album', 'edit'),
(4428, 48, 'Album', 'Porder'),
(4429, 48, 'Album', 'active'),
(4430, 48, 'About_academy', 'view'),
(4431, 48, 'About_academy', 'edit'),
(4432, 48, 'About_academy', 'Porder'),
(4433, 48, 'videos_gallery', 'view'),
(4434, 48, 'videos_gallery', 'add'),
(4435, 48, 'videos_gallery', 'edit'),
(4436, 48, 'videos_gallery', 'Porder'),
(4437, 48, 'videos_gallery', 'active'),
(4438, 48, 'authority_applications', 'view'),
(4439, 48, 'authority_applications', 'add'),
(4440, 48, 'authority_applications', 'edit'),
(4441, 48, 'authority_applications', 'Porder'),
(4442, 48, 'authority_applications', 'at_home'),
(4443, 48, 'authority_applications', 'active'),
(4444, 48, 'our_rewards', 'view'),
(4445, 48, 'our_rewards', 'add'),
(4446, 48, 'our_rewards', 'edit'),
(4447, 48, 'our_rewards', 'Porder'),
(4448, 48, 'our_rewards', 'at_home'),
(4449, 48, 'our_rewards', 'active'),
(4450, 48, 'contact_with_departments', 'view'),
(4451, 48, 'contact_with_departments', 'add'),
(4452, 48, 'contact_with_departments', 'edit'),
(4453, 48, 'contact_with_departments', 'Porder'),
(4454, 48, 'contact_with_departments', 'at_home'),
(4455, 48, 'contact_with_departments', 'active'),
(4456, 48, 'contact_us', 'view'),
(4457, 48, 'contact_us', 'add'),
(4458, 48, 'contact_us', 'edit'),
(4459, 48, 'contact_us', 'delete'),
(4460, 48, 'contact_us', 'Porder'),
(4461, 48, 'contact_us', 'active'),
(4462, 49, 'News', 'view'),
(4463, 49, 'News', 'add'),
(4464, 49, 'News', 'edit'),
(4465, 49, 'News', 'delete'),
(4466, 49, 'News', 'Porder'),
(4467, 49, 'News', 'at_home'),
(4468, 49, 'News', 'active'),
(4469, 50, 'our_events', 'view'),
(4470, 50, 'our_events', 'add'),
(4471, 50, 'our_events', 'edit'),
(4472, 50, 'our_events', 'delete'),
(4473, 50, 'our_events', 'Porder'),
(4474, 50, 'our_events', 'at_home'),
(4475, 50, 'our_events', 'active'),
(4476, 51, 'our_events', 'view'),
(4477, 51, 'our_events', 'add'),
(4478, 51, 'our_events', 'edit'),
(4479, 51, 'our_events', 'delete'),
(4480, 51, 'our_events', 'Porder'),
(4481, 51, 'our_events', 'at_home'),
(4482, 51, 'our_events', 'active'),
(4483, 51, 'releases', 'view'),
(4484, 51, 'releases', 'add'),
(4485, 51, 'releases', 'edit'),
(4486, 51, 'releases', 'delete'),
(4487, 51, 'releases', 'Porder'),
(4488, 51, 'releases', 'at_home'),
(4489, 51, 'releases', 'active'),
(4490, 52, 'staticpages', 'view'),
(4491, 52, 'staticpages', 'edit'),
(4492, 52, 'staticpages', 'delete'),
(4493, 52, 'staticpages', 'Porder'),
(4494, 52, 'About_academy', 'view'),
(4495, 52, 'About_academy', 'edit'),
(4496, 52, 'partners', 'view'),
(4497, 52, 'partners', 'edit'),
(4498, 52, 'partners', 'Porder'),
(4499, 52, 'partners', 'at_home'),
(4500, 52, 'partners', 'active'),
(4501, 52, 'our_policies', 'view'),
(4502, 52, 'our_policies', 'add'),
(4503, 52, 'our_policies', 'edit'),
(4504, 52, 'our_policies', 'delete'),
(4505, 52, 'our_policies', 'Porder'),
(4506, 52, 'our_policies', 'active'),
(5011, 5, 'Album', 'view'),
(5012, 5, 'Album', 'add'),
(5013, 5, 'Album', 'edit'),
(5014, 5, 'Album', 'delete'),
(5015, 5, 'Album', 'Porder'),
(5016, 5, 'Album', 'active'),
(5017, 5, 'staticpages', 'view'),
(5018, 5, 'staticpages', 'add'),
(5019, 5, 'staticpages', 'edit'),
(5020, 5, 'About_academy', 'view'),
(5021, 5, 'About_academy', 'add'),
(5022, 5, 'About_academy', 'edit'),
(5023, 5, 'About_academy', 'Porder'),
(5024, 5, 'News', 'view'),
(5025, 5, 'News', 'add'),
(5026, 5, 'News', 'edit'),
(5027, 5, 'News', 'delete'),
(5028, 5, 'News', 'Porder'),
(5029, 5, 'News', 'active'),
(5030, 5, 'careers', 'view'),
(5031, 5, 'careers', 'add'),
(5032, 5, 'careers', 'edit'),
(5033, 5, 'careers', 'delete'),
(5034, 5, 'careers', 'Porder'),
(5035, 5, 'careers', 'active'),
(5036, 5, 'contact_us', 'view'),
(5037, 5, 'contact_us', 'add'),
(5038, 5, 'contact_us', 'edit'),
(5039, 5, 'contact_us', 'delete'),
(5040, 5, 'contact_us', 'Porder'),
(5041, 5, 'contact_us', 'active'),
(5042, 5, 'our_services', 'view'),
(5043, 5, 'our_services', 'edit'),
(5044, 5, 'our_services', 'at_home'),
(5045, 5, 'our_services', 'active'),
(5046, 5, 'properties', 'view'),
(5047, 5, 'properties', 'add'),
(5048, 5, 'properties', 'edit'),
(5049, 5, 'properties', 'delete'),
(5050, 5, 'properties', 'Porder'),
(5051, 5, 'properties', 'at_home'),
(5052, 5, 'properties', 'active'),
(5053, 5, 'projects', 'view'),
(5054, 5, 'projects', 'add'),
(5055, 5, 'projects', 'edit'),
(5056, 5, 'projects', 'delete'),
(5057, 5, 'projects', 'Porder'),
(5058, 5, 'projects', 'at_home'),
(5059, 5, 'projects', 'active'),
(5060, 5, 'Offers', 'view'),
(5061, 5, 'Offers', 'add'),
(5062, 5, 'Offers', 'edit'),
(5063, 5, 'Offers', 'delete'),
(5064, 5, 'Offers', 'Porder'),
(5065, 5, 'Offers', 'at_home'),
(5066, 5, 'Offers', 'active'),
(5067, 5, 'team_work', 'view'),
(5068, 5, 'team_work', 'add'),
(5069, 5, 'team_work', 'edit'),
(5070, 5, 'team_work', 'delete'),
(5071, 5, 'team_work', 'Porder'),
(5072, 5, 'team_work', 'active'),
(5073, 5, 'certificates', 'view'),
(5074, 5, 'certificates', 'add'),
(5075, 5, 'certificates', 'edit'),
(5076, 5, 'certificates', 'delete'),
(5077, 5, 'certificates', 'Porder'),
(5078, 5, 'certificates', 'active'),
(5079, 5, 'settings', 'view'),
(5080, 5, 'settings', 'edit'),
(5081, 5, 'logs', 'view'),
(5082, 5, 'logs', 'edit'),
(5083, 5, 'users', 'view'),
(5084, 5, 'users', 'edit'),
(5085, 5, 'users', 'add'),
(5086, 5, 'users', 'delete'),
(5087, 5, 'users', 'permission'),
(5088, 5, 'msg', 'view');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_login_at` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `member_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `last_login_ip`, `last_login_at`, `created_at`, `updated_at`, `member_id`) VALUES
(1, 5, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$gvYqEAnbGNUEv.bNptz9H.pH3LgsXD5dsShxWQHONt3Gtv5qGdE2.', 'UrrwgB43HIdamXaRjAKSxm4jwasE2yG0eS1mF50dwPDNtiUoKMFnTXueT00N', '127.0.0.1', '2026-03-30 09:10:28', '2023-08-16 09:47:12', '2026-03-30 16:10:28', 0),
(124, 47, 'seham', 'seham', 'seham@fcma.gov.ae', NULL, '$2y$10$frtESRnMdiLF/t.lv1yvpemcrIHH/4IQ5Yz4peYZBhripEl4mD62y', NULL, '0', '0', NULL, NULL, 0),
(125, 47, 'fatima', 'fatima', 'f.alhassani@fcma.gov.ae', NULL, '$2y$10$Wwz7SPEq.pMXDrX14TU33.efv6HM0kBqXDSQA.759K.8HNoomx2rC', NULL, '0', '0', NULL, NULL, 0),
(126, 5, 'somaya', 'somaya', 'sessam@fcma.gov.ae', NULL, '$2y$10$He.vd5in6Nw57uJMjydMgedmJUlpCq3quUt7Z6RHd6TH.okVhvxMu', NULL, '5.195.109.199', '2025-10-02 06:09:28', NULL, '2025-10-06 04:06:21', 0),
(127, 5, 'maryam', 'maryam', 'maryam.k@fcma.gov.ae', NULL, '$2y$10$QvY8og8vUce8LNLvrWQZRORlKrCqUpavlZBcAKAriMG7epmeWIzFO', NULL, '5.195.109.199', '2025-10-06 08:06:53', NULL, '2025-10-06 04:06:53', 0),
(128, 49, 'ayakhalil', 'ayakhalil', 'aya@fcma.gov.ae', NULL, '$2y$10$omucYsT5q5RIsHy959WKJeB1ioqGG.vzOWFORIC0SLe9vgXDiIUoC', 'UJHNpgRnyELjgpaigP0LRp7ijvpQeqrEM4SDqnjoOeXyx5r2DfLb6FUgIhZV', '5.195.109.199', '2025-12-08 06:38:46', NULL, '2025-12-08 02:38:46', 0),
(129, 50, 'asma', 'asma', 'asma@fcma.gov.ae', NULL, '$2y$10$kGpkUf3U3ikvwrjx0dIOROqmiA1gUpAKBUe5oJ929NwoHFCfB4xmC', NULL, '0', '0', NULL, NULL, 0),
(130, 51, 'nouf', 'nouf', 'nouf@fcma.gov.ae', NULL, '$2y$10$2xXzc5Y/7k7eRt0rZpXmq.DD9DFOkiBL.4bfB91fiGZqk9G/4fZ1.', 'XB7rp9Bqk588tCNd7auxxwyBwxhsD3I32clezNEWpkuXfIdmXe4cBGj33U7E', '2.51.241.93', '2025-10-26 10:31:56', NULL, '2025-10-26 06:31:56', 0),
(131, 52, 'aisha', 'aisha', 'aisha.z@fcma.gov.ae', NULL, '$2y$10$G1VV9BNku8KMBTGjR2FkGOxUgLqk2rZ.3NttvUE.ipduTovfk0gyW', NULL, '5.195.109.199', '2025-10-02 08:31:34', NULL, '2025-10-02 04:31:34', 0),
(132, 0, 'adminxps', NULL, 'budaklzcrew@gmail.com', NULL, '$2y$10$9gvj9BdlSyCFZgYAOv47VOvh4JUuahCzZgERqdUQT0HvnCAr8xJbe', NULL, '0', '0', '2025-12-03 01:00:59', '2025-12-03 01:00:59', 0),
(133, 0, 'adminxs', NULL, 'adminxs@gmail.com', NULL, '$2y$10$aJIHB2Qz8k3iRMG/S0p27eHVaVAI4JrPvSixvTVXFIqYjbM.E4nOG', NULL, '0', '0', '2025-12-10 20:53:10', '2025-12-10 20:53:10', 0),
(134, 0, 'adminexs', NULL, 'adminexs@gmail.com', NULL, '$2y$10$QflWN.VHFC7QGEWqd1fQVePR3Gexq7qD..VC0PGj.5GLHHNzUGRV.', NULL, '0', '0', '2025-12-10 22:41:45', '2025-12-10 22:41:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE `user_autologin` (
  `key_id` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` mediumint NOT NULL DEFAULT '0',
  `user_agent` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `user_autologin`
--

INSERT INTO `user_autologin` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`) VALUES
('1ae414ee268567b1ae247389a68bdd86', 10, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '0.0.0.0', '2019-01-23 12:54:34'),
('1eac51a1f4218a7ca44beb1f2544d392', 10, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '0.0.0.0', '2019-07-10 10:09:03'),
('3488d32ab6d0926f5fba2c1b14c23f4b', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '0.0.0.0', '2023-07-11 10:19:59'),
('6de2e40c93f8447ee3d1f449fa93fcf1', 10, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '83.110.79.126', '2018-03-07 08:46:25'),
('7f9e9d8b9d904f8cc89559aa2ad1455d', 10, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '156.204.249.255', '2018-02-19 14:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `country` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `country`, `website`) VALUES
(1, 0, NULL, NULL),
(2, 11, NULL, NULL),
(3, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_temp`
--

CREATE TABLE `user_temp` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(34) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `activation_key` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `last_ip` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'basma', 'basma.gamaleldin100@gmail.com', NULL, '$2y$10$NS2Ltg/0Ux4UW4vCzteCz.W2b1vswAt0em9ZKVUB5xTAzNRsP3rZ2', 0, NULL, '2025-09-02 21:48:08', '2025-09-02 21:48:08'),
(2, 'basma2', 'admin@gmail.com', NULL, '$2y$10$lzsWwYAgvXbXjOLjii9gSuN1sbuB6RT1VEz8qU7YVMmbYS7Eni7GO', 0, NULL, '2025-09-02 21:59:44', '2025-09-02 21:59:44'),
(3, 'test_basma', 'basma@gmail.com', NULL, '$2y$10$ZX3oMUEFIRHWvBGP.k5aj.B00wQfPY1Pf7H.X3sr0SicirvfoqKES', 0, NULL, '2025-09-03 13:28:32', '2025-09-03 13:28:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminuservisitor`
--
ALTER TABLE `adminuservisitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_old`
--
ALTER TABLE `contact_us_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customized_permissions`
--
ALTER TABLE `customized_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customized_role_permissions`
--
ALTER TABLE `customized_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customized_role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `customized_role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_suggestions`
--
ALTER TABLE `feedback_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_counter`
--
ALTER TABLE `ip_counter`
  ADD PRIMARY KEY (`ip_counter_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_list`
--
ALTER TABLE `mail_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_more_fields`
--
ALTER TABLE `module_more_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `permissionsxxx`
--
ALTER TABLE `permissionsxxx`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll00`
--
ALTER TABLE `poll00`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answer00`
--
ALTER TABLE `poll_answer00`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_user`
--
ALTER TABLE `poll_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_items`
--
ALTER TABLE `posts_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_lang`
--
ALTER TABLE `posts_lang`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `posts_more_fields`
--
ALTER TABLE `posts_more_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regandlog`
--
ALTER TABLE `regandlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_modules_role_id_foreign` (`role_id`),
  ADD KEY `role_modules_module_id_foreign` (`module_id`);

--
-- Indexes for table `seen`
--
ALTER TABLE `seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_logs`
--
ALTER TABLE `sv_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testpermissions`
--
ALTER TABLE `testpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_temp`
--
ALTER TABLE `user_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitors_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultancy`
--
ALTER TABLE `consultancy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `contact_us_old`
--
ALTER TABLE `contact_us_old`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `customized_permissions`
--
ALTER TABLE `customized_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customized_role_permissions`
--
ALTER TABLE `customized_role_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_suggestions`
--
ALTER TABLE `feedback_suggestions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_counter`
--
ALTER TABLE `ip_counter`
  MODIFY `ip_counter_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_list`
--
ALTER TABLE `mail_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `module_more_fields`
--
ALTER TABLE `module_more_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `permissionsxxx`
--
ALTER TABLE `permissionsxxx`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll00`
--
ALTER TABLE `poll00`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_answer`
--
ALTER TABLE `poll_answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_answer00`
--
ALTER TABLE `poll_answer00`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_user`
--
ALTER TABLE `poll_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `posts_comments`
--
ALTER TABLE `posts_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts_items`
--
ALTER TABLE `posts_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `posts_lang`
--
ALTER TABLE `posts_lang`
  MODIFY `row_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts_more_fields`
--
ALTER TABLE `posts_more_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1184;

--
-- AUTO_INCREMENT for table `regandlog`
--
ALTER TABLE `regandlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `role_modules`
--
ALTER TABLE `role_modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `seen`
--
ALTER TABLE `seen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sv_logs`
--
ALTER TABLE `sv_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3279;

--
-- AUTO_INCREMENT for table `testpermissions`
--
ALTER TABLE `testpermissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5089;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customized_role_permissions`
--
ALTER TABLE `customized_role_permissions`
  ADD CONSTRAINT `customized_role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `customized_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customized_role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissionsxxx` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD CONSTRAINT `role_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_modules_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
