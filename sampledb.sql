-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 05:05 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `Op_category` int(11) NOT NULL,
  `active` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `Op_category`, `active`) VALUES
(1, 'ស្រាបៀ', '<p>គ្រឿងស្រវឹង,គ្រឿងពិសារដែលមិនអាចធ្វើការបើកបរបាននោះទេ</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, '1'),
(2, 'ភេសជ្ជប៉ូវកម្លាំង', '<p>ប្រភេទភេជ្ជៈជំនួយកម្លាំង</p>\r\n', 0, '1'),
(3, 'បាយ', '<p>ប្រភេទបាយសម្រាប់ពិសារ</p>\r\n', 0, '1'),
(4, 'សម្ល', '<p>ប្រភេទសម្លសម្រាប់ពិសារ</p>\r\n', 0, '1'),
(5, 'បង្អែម', '<p>បង្អែមសម្រាប់ពិសារ</p>\r\n', 0, '1'),
(6, 'ផ្សេងៗ', '<p>មានដូចជា មីឆា&nbsp; នំបញ្ចុក ផ្លែឈើ ...</p>\r\n', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `re_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT '1',
  `timeorder` datetime NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `pname`, `amount`, `re_id`, `description`, `timeorder`, `active`) VALUES
(1, 'បាយក្ដាំងសាច់ជ្រូកផាត់', 1, 1, 'យករាងស្រួយបន្ដិច និងមិនចាំបាច់ដាក់ម្ទេសទេ', '2021-07-22 09:21:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` varchar(45) NOT NULL,
  `description` longtext DEFAULT 'null',
  `photo` varchar(225) DEFAULT NULL,
  `re_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `supplier`, `unit_price`, `quantity`, `category_id`, `description`, `photo`, `re_id`) VALUES
(37, 'បាយក្ដាំងសាច់ជ្រូកផាត់', 'ម៉ាន់ វាសនា', 3, 20, '3', '&lt;h2&gt;&lt;span style=&quot;color:#3498db&quot;&gt;បាយសាច់ជ្រូក&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family:Times New Roman,Times,serif&quot;&gt;អផ្សុកខ្លាំងទេពេលដែលសាលាបិទ កន្លែងធ្វើការខ្លះក៏អនុញ្ញាតអោយធ្វើការពីផ្ទះ មិនបានចេញក្រៅបើកភ្នែកមកនៅតែក្នុងផ្ទះបែបនេះ។ ពេលខ្លះអផ្សុកពេក ទំនេរពេក អាចទៅជាស្ត្រេសក៏ថាបាន បែបនេះគួរតែធ្វើខ្លួនអោយរវល់ខ្លះហើយ រវល់អោយបានឆ្ងាញ់ទាំងមាត់ ឆ្អែតទាំងក្រពះគឺជារឿងល្អ។ និយាយរួម គឺថាទៅណាមិនឆ្ងាយ ពីរឿងរៀនធ្វើអីញ៉ាំនោះទេ តោះចឹងរៀនធ្វើបាយក្ដាំងញ៉ាំ វីធីធ្វើ និងគ្រឿងផ្សំ Admin សរសេរនៅខាងក្រោមនេះហើយ សាកធ្វើញ៉ាំទាំងអស់គ្នាណា។&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/sticky_rice.jpg&quot; style=&quot;height:682px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#2980b9&quot;&gt;គ្រឿងផ្សំដែលត្រូវមាន៖&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;បាយក្ដាំង&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;ស្លឹកខ្ទឹម&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;ម្ទេស&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;ស្ករសរ&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;ទឹកត្រី&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;ពងមាន់&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;សាច់ផាត់ (សាច់ជ្រូក)&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;ប្រសិនបើមានចំណាប់អារម្មណ៍អាចកម្មង់បានណា តម្លៃតម្រឹមតែ​ ៣ ដុល្លា ក្នុង១ចាន ដែលមានឱជារសឆ្ងាញ់ពិសារ ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/បាយក្ដាំងសៀមរាប.jpg&quot; style=&quot;height:720px; width:960px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ទំនាក់ទំនងតាមរយៈទូរស័ព្ទលេខ : 096 793 2240&amp;nbsp;&lt;/p&gt;\r\n', '/uploads/products/b5120998c852f5c9cb2875602e92db1f.jpg', 0),
(38, 'បាយណែមសាច់ជ្រូក', 'រស់ ធីតា', 4, 20, '3', '&lt;h1&gt;&lt;span style=&quot;color:#3498db&quot;&gt;បាយឆាសាច់ជ្រូក&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;បាយឆាសាច់ជ្រូក អាចពិសារបានគ្រប់ពេល គ្រប់វេលា មិនថាពេលព្រឹក ថ្ងៃ ល្ងាច និងយប់ ដែលមានរស់ជាតិ ឆ្ងាញ់ពិសារ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/បាយឆាសាច់ជ្រូក.png&quot; style=&quot;height:308px; width:600px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;គ្រឿងផ្សំ បាយណែមសាច់ជ្រូក&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- បាយអង្ករផ្កាម្លិះ ២ចានចង្កិះ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ណែមសាច់ជ្រូក កន្លះចានចង្កិះ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ពងទា ២គ្រាប់&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ខ្ទឹមបារាំង ហាន់ជាសរសៃល្អិតៗ ១ដុំតូច&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ស្លឹកខ្ទឹម ហាន់ខ្លីល្មម ២ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ខ្ទឹមសចិញ្រ្ចាំ ២ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ម្ទេស (តូចៗ) ១០ផ្លែ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ទឹកស៊ីអ៊ីវ ២ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ប្រេងខ្យង ១ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ប្រេងឆា ៣ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ស្ករស ១ស្លាបព្រាកាហ្វេ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;- ម្រេចម៉ដ្ធ កន្លះស្លាបព្រាកាហ្វេ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/បាយឆាសាច់ជ្រូក១.png&quot; style=&quot;height:315px; width:586px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;សូមអញ្ជើញមកពិសារដោយផ្ទាល់ និងអាចកម្មង់តាមអនឡាញសម្រាប់អតិឋិជន នៅក្នុងខេត្តទាំង ដើម្បីដឹងអំពីរស់ជាតិឆ្ងាញ់ពិសារនៃបាយណែមសាច់ជ្រូក។​&lt;/p&gt;\r\n\r\n&lt;p&gt;អាចទំនាក់ទំនងតាមរយៈ លេខទូរស័ព្ទ 096 ​​​793 2240&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '/uploads/products/39fc45013f27549ad102e5b414f9adca.png', 0),
(39, 'បាយស', 'ម៉ាន់ វាសនា', 4, 50, '3', '&lt;h1&gt;&lt;span style=&quot;color:#3498db&quot;&gt;បាយស&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;បាយសអង្ករស្រុកស្រែចម្ការ មានក្លឹនក្រអូប មានភាពឈ្ងុយឆ្ងាញ់ ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/download.jpg&quot; style=&quot;height:166px; width:304px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;មានអង្ករដូចជា៖&lt;/p&gt;\r\n\r\n&lt;p&gt;- អង្កររំដួល&lt;/p&gt;\r\n\r\n&lt;p&gt;-អង្ករផ្កាម្លឹះ&lt;/p&gt;\r\n\r\n&lt;p&gt;-អង្ករសំរូប&lt;/p&gt;\r\n\r\n&lt;p&gt;-អង្ករហុកសិបប្រាំមួយ&lt;/p&gt;\r\n\r\n&lt;p&gt;-អង្ករប៉ែតប្រាំ&lt;/p&gt;\r\n\r\n&lt;p&gt;អង្ករទាំងអស់នេះមានទាំងបាយ រឹង និងបាយទន់ មានឱជារសគ្មានជាតិគីមី១០០ភាគរយ។&lt;/p&gt;\r\n\r\n&lt;p&gt;អញ្ជើញមកពិសារដោយផ្ទាល់ ឬកម្មង់តាមប្រព័ន្ធអនឡាញសម្រាប់អ្នកនៅក្នុងខេត្ត ដើម្បីពិសារជាមួយរសជាតិដ៏ឆ្ញាញ់ពិសារនៃបាយ ដែលជាអង្ករស្រុកស្រែមួយនេះ។&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;ទំនាក់ទំនងតាមរយៈទូរស័ព្ទលេខ 096​ 793 2240&lt;/p&gt;\r\n', '/uploads/products/b2082d41edc2e10aafc88e5e7eec1073.jpg', 0),
(40, 'បាយដំណើបសង់ខ្យាធូរេន', 'ធី រតនា', 2, 20, '5', '&lt;h1&gt;&lt;span style=&quot;color:#3498db&quot;&gt;បាយដំណើបសង់ខ្យាធូរេន&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ជាប្រភេទបង្អែមដែលធអាចពិសារបានគ្រប់ពេលវេលា សម្រាប់ប៉ូវកម្លាំង ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/បាយដំណើបសង់ខ្យា២.jpg&quot; style=&quot;height:590px; width:590px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;គ្រឿងផ្សំនៃបាយដំណើបសង់ខ្យា&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;អង្ករដំណើប ៥០០ ក្រាម&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;ខ្ទិះដូង ១ គីឡូ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;ស្កសរ ៤០០ ក្រាម&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;ធូរេន ៤ &amp;ndash; ៥ ក្លែប&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;ស្លឹកតយ ៥ &amp;ndash; ៦ សន្លឹក&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;ម្សៅឆា ៣ ស្លាបព្រាបាយ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;ndash;&amp;nbsp;អំបិល ១ ស្លាបព្រាកាហ្វេ&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/បាយដំណើបសង់ខ្យាទុរេន.jpg&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;សូមអញ្ជើញមកពិសារដោយផ្ទាល់ ឬ អាចកម្មង់តាមប្រព័ន្ធអនឡាញសម្រាប់អ្នកនៅក្នុងខេត្តដើមសាកជាមួយរសជាតិដ៏ឆ្ញាញ់ពិសារ។&lt;/p&gt;\r\n\r\n&lt;p&gt;ទំនាក់ទំនងតាមរយៈទូរស័ព្ទលេខ 096 793 224 0&lt;/p&gt;\r\n', '/uploads/products/e8783bcd1755cc201e8eaeda342e0f21.jpg', 0),
(41, 'ចាហួយស្ករត្នោតពងមាន់', 'រស់ ធីតា', 3, 20, '5', '&lt;h1&gt;&lt;span style=&quot;color:#1abc9c&quot;&gt;របៀបធ្វើចាហួយស្ករត្នោតពងមាន់&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;របៀបធ្វើចាហួយស្ករត្នោតពងមាន់ ជាប្រភេទបង្អែម សម្រាប់បូ៉វកម្លាំងដែលមានរសជាតិឆ្ញាញ់ពិសារ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/របៀបធ្វើចាហួយស្ករត្នោតពងមាន់.jpg&quot; style=&quot;height:469px; width:610px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;គ្រឿងផ្សំ&amp;nbsp;របៀបធ្វើចាហួយស្ករត្នោតពងមាន់&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;១-ពងមាន់&amp;nbsp;២&lt;br /&gt;\r\n២-ស្ករ ២ខាំ&lt;br /&gt;\r\n៣-ខ្ទិះដូង ១កំប៉ុង&lt;br /&gt;\r\n៤-ស្លឹកតើយ ៣សន្លឹក&lt;br /&gt;\r\n៥-ម្សៅសារាយ ១ស្លាបព្រាបាយ&lt;br /&gt;\r\n៦-ទឹក ១កំប៉ុង&lt;br /&gt;\r\n៧-អំបិលចុងស្លាបព្រា&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;សូមអញ្ជើញមកពិសារដោយផ្ទាល់ ឬ អាចកម្មង់តាមប្រព័ន្ធអនឡាញសម្រាប់អ្នកនៅក្នុងខេត្តដើមសាកជាមួយរសជាតិដ៏ឆ្ញាញ់ពិសារ។ទំនាក់ទំនងតាមរយៈទូរស័ព្ទលេខ 096 793 2240&lt;/p&gt;\r\n', '/uploads/products/4c3df2197a63f3c98ccbbd26e02cd110.jpg', 0),
(42, 'ទឹកប្រហុក​បែបខ្មែរពិសេស', 'ម៉ាន់ វាសនា', 4, 20, '4', '&lt;h1&gt;&lt;span style=&quot;color:#f1c40f&quot;&gt;ទឹកប្រហុក​បែបខ្មែរពិសេស&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ទឹកប្រហុក​​គឺទឹកជ្រលក់យ៉ាងដែលជាមុខម្ហូបសំខាន់មួយរបស់ជនជាតិខ្មែរ​ ម្ហូបខ្មែរ​ភាគច្រើនប្រើ​ទឹកប្រហុក​ដើម្បីបន្លែមរស់ជាតិឪឆ្ងាញ់ពិសារ។ ទឹកប្រហុកមានរសជាតិកាន់តែឆ្ងាញ់កាលណាប្រើសម្រាប់​ជ្រលក់​ជាមួយបន្លែឆ្អិនឬត្រីឬសាច់ឆ្អិន។​ ជាទូទៅទឹកប្រហុក​គឺជាទឹកជ្រលក់ដែលគេប្រើសំរាប់ជ្រលក់ជាមួយពោះគោស្ងោរ និង សាច់អាំង។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ទឹកប្រហុកថ្មី.jpg&quot; style=&quot;height:500px; width:960px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ចំណាំ៖ ប្រហុក​ជា​ម្ហូប​អាហារ​ពិសេសមួយ​ប្រភេទដែល​ប្រជាជន​ខ្មែរពិសារ​តាំង​ពី​ដូនតា​មកហើយវា​បាន​ក្លាយ​ទៅ​ជា​អាហារ​នៃ​អត្តសញ្ញាណ​ជនជាតិ​ខ្មែរ​ផងដែរ។ ជនជាតិខ្មែរ​ស្ទើរ​តែ​ទាំង​អស់នៅជនបទនូវតែអនុវត្តប្រពៃណីធ្វើប្រហុកស្ទើរ​គ្រប់ៗ​ផ្ទះដើម្យីបរិភោគប្រចាំថ្ងៃ។ សម្រាប់អ្នកនៅទីក្រុងសម័យថ្មីមួយចំនួនមិនសូវចេះធ្វើនោះទេ ប៉ុន្តែនៅតែនិយមពិសារជាប្រចាំ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ទឹកប្រហុក.jpg&quot; style=&quot;height:558px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;គ្រឿងផ្សំ&lt;/h2&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;ប្រហុកសាច់ (ប្រហុកសៀមរាបត្រីកំភ្លាញ) ១ខាំ&lt;/li&gt;\r\n	&lt;li&gt;ប្រេងឆា ១សា្លបព្រាបាយ&lt;/li&gt;\r\n	&lt;li&gt;ទឹកមួយកែវចំនួន ១២០មល&lt;/li&gt;\r\n	&lt;li&gt;ក្រូចឆ្មារ ២ផ្លែ&lt;/li&gt;\r\n	&lt;li&gt;ស្កស ៥ ស្លាបព្រាកាហ្វ&lt;/li&gt;\r\n	&lt;li&gt;រំដេង ១ជ្រុងតូច(ប៉ុនកូនដៃ) បុកអោយម៉ត់&lt;/li&gt;\r\n	&lt;li&gt;&amp;nbsp;ខ្ទឹមសបុកអោយម៉ត់ ២កំពិសធំ&lt;/li&gt;\r\n	&lt;li&gt;គល់ស្លឹកគ្រៃគ្រាមហាន់រួចឬដាក់ស្លឹកគ្រៃស្រស់ហាន់រួចក៏បាន ១ចានចង្កិះ&lt;/li&gt;\r\n	&lt;li&gt;សណ្ដែកដីលីងតិចឬច្រើនតាមចូលចិត្ត&lt;/li&gt;\r\n	&lt;li&gt;ម្ទេសហាន់ដាក់តាមការចូលចិត្ត&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h2&gt;គ្រឿងផ្សំអន្លក់ប្រហុក&lt;/h2&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;ស្ពៅក្តោប&lt;/li&gt;\r\n	&lt;li&gt;ត្រសក់&lt;/li&gt;\r\n	&lt;li&gt;សណ្តែកកួរ&lt;/li&gt;\r\n	&lt;li&gt;ពោតបារាំង&lt;/li&gt;\r\n	&lt;li&gt;ការ៉ុត&lt;/li&gt;\r\n	&lt;li&gt;ចេកខ្ចី&lt;/li&gt;\r\n	&lt;li&gt;ត្រយ៉ូងចេក&lt;/li&gt;\r\n	&lt;li&gt;ស្ពៃចិន&lt;/li&gt;\r\n	&lt;li&gt;សាច់ជ្រូកបីជាន់&lt;/li&gt;\r\n	&lt;li&gt;បន្លែផ្សេងៗទៀតតាមចំណង់ចំណូលចិត្ត&lt;/li&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ទឹកប្រហុកថ្មី.jpg&quot; style=&quot;height:500px; width:960px&quot; /&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;ទំនាក់ទំនងតាមរយៈទូរស័ព្ទលេខ : 096 793 2240&amp;nbsp;&lt;/p&gt;\r\n', '/uploads/products/9ad685dac601ec4e30db8a403a1e7eb7.jpg', 0),
(43, 'ឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូ', 'ធី រតនា', 20, 20, '4', '&lt;h1&gt;&lt;span style=&quot;color:#3498db&quot;&gt;ឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូ&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូគឺជាម្ហូបទាជាមួយតៅហ៊ូលាយផ្សំជាមួយត្រាវគឺជាម្ហូបឆ្នាំងភ្លើងមួយបែបដែលពេញនិយមសម្រាប់ប្រជាជនខ្មែរ។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូ.jpg&quot; style=&quot;height:500px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;គ្រឿងផ្សំឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូ&lt;/h2&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;ទាមួយចំហៀងឬភ្លៅទាចំនួន៤កាត់ជាដុំៗ&lt;/li&gt;\r\n	&lt;li&gt;ខ្ទឹមស២ក្លែបហាន់ឲ្យតូចៗ&lt;/li&gt;\r\n	&lt;li&gt;ទឹកស៊ីអ៊ីវ១ស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ម្រេចកន្លះស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ប្រេងឆាមួយស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ខ្ទឹមបារាំងហាន់រួចមួយផ្លែ&lt;/li&gt;\r\n	&lt;li&gt;ត្រាវចំនួនមួយខាំ បកសំបករួចហាន់ជាដុំតូចៗ&lt;/li&gt;\r\n	&lt;li&gt;ម្សៅប៉ាប្រីកា (paprika) ចំនួនកន្លះស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ទឹកដូងខ្ចីចំនួនពីរកែវឬទឹកដូងកំប៉ុងមួយកំប៉ុង&lt;/li&gt;\r\n	&lt;li&gt;ទឹកចំនួនបួនកែវ&lt;/li&gt;\r\n	&lt;li&gt;តៅហ៊ូហិលចំនួនមួយកែវតូចឬតៅហ៊ូក្រហមចំនួនមួយកែវតូច&lt;/li&gt;\r\n	&lt;li&gt;ទឹកត្រីមួយស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;អំបិលកន្លះស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ត្រកួនចំនួនពីរខាំ បេះស្លឹកចេញឲ្យអស់រួចកាត់ជាកង់ៗប្រវែងមួយចំអាម លាងទឹកឲ្យស្អាតទុកទុកឲ្យស្ងួតទឹកអស់&lt;/li&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ឆ្នាំងភ្លើងទាជាមួយតៅហ៊ូ១.jpg&quot; style=&quot;height:540px; width:720px&quot; /&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '/uploads/products/638204658623b09cb940f30c5087c422.jpg', 0),
(44, 'សម្លម្ជូរម្នាស់ជាមួយបង្គា', 'ធី រតនា', 10, 20, '4', '&lt;h1&gt;សម្លម្ជូរម្នាស់ជាមួយបង្គា&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/សម្លម្ជូរម្នាស់ជាមួយបង្គា.jpg&quot; style=&quot;height:500px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;សម្លម្ជូរបង្គាមានរសជាតិ ផ្អែម ជូរ ហិរនិងទឹកសម្លមានរសជាតិបង្គាឆ្ងាញ់ពិសារម៉្យាងដែលប្រជាជនកម្ពុជាស្ទើរគ្រប់តំបន់និយមបរិភោគតាមគ្រួសារនិមួយៗ ពេលអ្នកចំអិនសម្លមួយមុខនេះ ចំណុចសំខាន់បំផុតនៅពេលភ្លក់រសជាតិម្តងៗ អ្នកត្រូវប្រើមាត់ដោយផ្ទាល់​ ប្រសិនបើអ្នកចូលចិត្តផ្អែមអ្នកត្រូវដាក់ស្ករថែមហើយប្រសិនជាអ្នកចូលចិត្តជូរអ្នកអាចដាក់ម្សៅអំបិលថែមឬដាក់អំបិលទុំក៏បាន។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/សម្លម្ជូរម្នាស់ជាមួយបង្គា1.jpg&quot; style=&quot;height:408px; width:638px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;គ្រឿងផ្សំ&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;ប្រេងឆាចំនួន១ស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ខ្ទឹមសហាន់រួចចំនួន២ក្លែប&lt;/li&gt;\r\n	&lt;li&gt;ទឹកចំនួន៤កែវ&lt;/li&gt;\r\n	&lt;li&gt;ម្នាស់ចំនួន១ចំហៀងឬម្នាស់កំប៉ុងក៏បាន&lt;/li&gt;\r\n	&lt;li&gt;ម្សៅស៊ុបអំពិលចំនួនកន្លះដុំឬដាក់តាមចំណង់ចំណូលចិត្ត&lt;/li&gt;\r\n	&lt;li&gt;ស្ករចំនួន២ស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;ទឹកត្រីចំនួន២ស្លាបព្រា&lt;/li&gt;\r\n	&lt;li&gt;បង្គាបកសំបករួចនិងវះសម្អាតរួចចំនួន២ខាំកន្លះ&lt;/li&gt;\r\n	&lt;li&gt;មើមស្ពៃ (Asian rhubarb) បកសំបករួចហាន់ជាដុំចំនួន២បាច់&lt;/li&gt;\r\n	&lt;li&gt;ប៉េងប៉ោះចំនួន១​ ហាន់ជាបន្ទះៗ&lt;/li&gt;\r\n	&lt;li&gt;សណ្តែកបណ្តុះចំនួន១កូនចាន&lt;/li&gt;\r\n	&lt;li&gt;ស្លឹកខ្ទឹមហាន់រួចចំនួន១កូនចាន&lt;/li&gt;\r\n	&lt;li&gt;ម្អម ជី ដែលហាន់រួចចំនួន១កូនចានតូច&lt;/li&gt;\r\n	&lt;li&gt;ម្ទេសចំនួន២ផ្លែ&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '/uploads/products/fc6296b0c3aef7598c1e939b22ca61d0.jpg', 0),
(45, 'ABC', 'ម៉ាន់ វាសនា', 30, 30, '1', '&lt;h1&gt;&lt;span style=&quot;color:#3498db&quot;&gt;ABC&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ABC ជាប្រភេទគ្រឿងស្រវឹង&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ABC.jpg&quot; style=&quot;height:179px; width:281px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ABC2.jpg&quot; style=&quot;height:512px; width:512px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/ABC1.jpg&quot; style=&quot;height:800px; width:772px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/201d3e3f4eeadafde7c2cdce32507a2e.jpg', 0),
(46, 'Anchor', 'ម៉ាន់ វាសនា', 16, 20, '1', '&lt;h1&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;Anchor&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/anchor1.jpg&quot; style=&quot;height:530px; width:530px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Anchor ជាប្រភេទគ្រឿងស្រវឹង&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/anchor.png&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/34c5819c20dd20b942c373c298248f91.jpg', 0),
(47, 'Cocacola', ' ធីតា រតនា', 16, 20, '2', '&lt;h1&gt;&lt;span style=&quot;color:#1abc9c&quot;&gt;Cocacola&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;Cocacola ជាប្រភេទភេសជ្ជៈប៉ូវកម្លាំង&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/cocola3.jpg&quot; style=&quot;height:1200px; width:1200px&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/cocacola1.jpg&quot; style=&quot;height:290px; width:174px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/8081c2504c57b3ab4c71d5b5dbd813d0.png', 0),
(48, 'Fanta', 'ធី រតនា', 20, 50, '2', '&lt;h1&gt;&lt;span style=&quot;color:#1abc9c&quot;&gt;Fanta&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;Fanta គឺជាប្រភេទភេសជ្ជប៉ូវកម្លាំង&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Fanta1.jpg&quot; style=&quot;height:640px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Fanta2.jpg&quot; style=&quot;height:474px; width:474px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Fanta3.jpg&quot; style=&quot;height:225px; width:225px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/9d310baef9417ce9beaf80ec134f8feb.jpg', 0),
(49, 'Pepsi', 'ម៉ាន់ វាសនា', 15, 20, '2', '&lt;h1&gt;&lt;span style=&quot;color:#1abc9c&quot;&gt;Pepsi&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;Pepsi​ គឺជាប្រភេទភេសជ្ជប៉ូវកម្លាំង។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/pepsi2.png&quot; style=&quot;height:168px; width:300px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/pepsi1.jpg&quot; style=&quot;height:177px; width:285px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/pepsi.jpg&quot; style=&quot;height:225px; width:225px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/252bb7b95f23de8fe59f66ba394e1e38.jpg', 0),
(50, 'Sting', 'ម៉ាន់ វាសនា', 15, 10, '2', '&lt;h1&gt;Sting&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;Stingគឺជាប្រភេទភេសជ្ជៈប៉ូវកម្លាំង។&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Sting1.jpg&quot; style=&quot;height:225px; width:225px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/sting2.jpg&quot; style=&quot;height:400px; width:115px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/4d0397a1768e54233300a9471dbf842f.jpg', 7),
(51, 'ទឹកសុទ្ធ', 'ធី រតនា', 2, 1, '2', '&lt;p&gt;ទឹកសុទ្ធសម្រាប់ពិសារ&lt;/p&gt;\r\n', '/uploads/products/bd09974ee601cb0601bcc479f2bced53.jpg', 6),
(53, 'ទឹកអំពៅ', 'ធី រតនា', 1, 20, '6', '&lt;h1&gt;ទឹកអំពៅពិសេស&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ប្រសិនបើ​អ្នក​ស្វែងរក​អត្ថប្រយោជន៍​នៃ​ទឹកអំពៅ អ្នក​នឹង​រក​ឃើញ​ថា វា​អាច​ដោះស្រាយ​បញ្ហា​បានជា​ច្រើន​។ វា​សម្បូរ​ទៅ​ដោយសារ​ធាតុ​ប្រឆាំង​អុកស៊ីតកម្ម អាច​ជួយ​ប្រយុទ្ធ​នឹង​ការ​ឆ្លង​មេរោគ និង​បង្កើន​សមត្ថភាព​នៃ​ប្រព័ន្ធ​ភាពស៊ាំ​យ៉ា​ង​មាន​ប្រសិទ្ធភាព​។ ទឹកអំពៅ​សម្បូរ​ទៅ​ដោយ​ជាតិ​ដែក ម៉ាញ៉េស្យូ​ម កាល់ស្យូម និង​ជាតិ​អេឡិចត្រូលីត​ដទៃ​ទៀត ដូច្នេះ​វា​ល្អ​សម្រាប់​ការ​ខះ​ជាតិ​ទឹក ថែម​ទាំង​អាច​ជួយ​ព្យាបាល​ការ​ឆ្លង​មេរោគ​ផ្តាសាយ និង​ការ​ឆ្លង​មេរោគ​ផ្សេង​ទៀត ហើយ​វា​ក៏​ជួយ​ប្រឆាំង​នឹង​ជំងឺ​គ្រុន​ផ្សេង​ៗ ដោយ​សារ​​វា​បង្កើន​កម្រិត​ប្រូ​តេ​អីុ​ន​ក្នុង​រាង​កាយ​។ ក្រៅពី​នេះ​នៅ​មាន​អត្ថប្រយោជន៍ជា​ច្រើន​ទៀត​នៃ​ទឹកអំពៅ ដែល​លោក​អ្នក​គួរតែ​ដឹង​៖&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Sugarcane_juice_1_1.jpg&quot; style=&quot;height:480px; width:725px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;១-​ទឹកអំពៅ គឺជា​ថ្នាំ​បញ្ចុះ​ទឹកនោម វា​អាច​ជួយ​ព្យាបាល​ការ​ឆ្លង​មេរោគ​ក្នុង​ផ្លូវ​បង្ហូរ​នោម ក្រួស​ក្នុង​តម្រងនោម និង​ធានា​ឱ្យ​បាន​នូវ​មុខងារ​នៃ​តម្រងនោម​នេះ​ថែម​ទៀត ។&lt;/p&gt;\r\n\r\n&lt;p&gt;២-​យោង​តាម​ការ​ព្យាបាល​បែប Ayurveda&amp;nbsp; ទឹកអំពៅ​ជួយ​ពង្រឹង​មុខងារ​ថ្លើម​របស់​អ្នក​ហើយ​វា​ត្រូវ​បាន​គេ​ប្រើប្រាស់​ក្នុង​ការ​ព្យាបាល​ការ​ខាន់លឿង ។ ខាន់លឿង​គឺជា​ជំងឺ​មួយ​ដែល​ស្បែក​និង​ភ្នាស​លើ​ដងខ្លួន​ឡើង​ពណ៌​លឿង ដោយសារ​ការ​កើនឡើង​សារធាតុ​ប៊ី​លី​រុយ​ប៊ី ក្នុង​សារធាតុ​រាវ​របស់​រាង​កាយ​ហើយ​ត្រូវ​បាន​បង្ក​ឡើង​ដោយ​ថ្លើម​មាន​បញ្ហា ។&lt;/p&gt;\r\n\r\n&lt;p&gt;ទឹកអំពៅ​ជួយ​បំពេញ​រាង​កាយ​របស់​អ្នក​ជាមួយនឹង​ប្រូ​តេ​អីុ​ន​ដែល​បាន​បាត់បង់ និង​សារធាតុចិញ្ចឹម ដែល​រាង​កាយ​ត្រូវការ​ដើម្បី​ឲ្យ​មុខងារ​ថ្លើម​ត្រលប់​មក​ធ្វើការ​ប្រក្រតី​វិញ ។&lt;/p&gt;\r\n\r\n&lt;p&gt;៣-​ភេសជ្ជៈ​ថាមពល ៖ ទឹកអំពៅ​សម្បូរ​ទៅ​ដោយ​កាបូ​អីុ​ដ្រា​ត​ប្រភេទ​ល្អ&amp;nbsp; ប្រូ​តេ​អីុ​ន&amp;nbsp; ជាតិ​ដែក ប៉ូ​តា​ស្យូ​ម និង​សរ​ធាតុ​ចិញ្ចឹម​សំខាន់​ផ្សេង​ទៀត ដែល​ធ្វើ​ឱ្យ​វា​ជា​ភេសជ្ជៈ​ប្រកប​ដោយ​ថាមពល​មួយ​ដ៏​វិសេសវិសាល​។ ជា​ពិសេស​នៅ​ក្នុង​រដូវក្តៅ ការ​ទទួលទាន​ទឹកអំពៅ​&lt;/p&gt;\r\n\r\n&lt;p&gt;មួយ​កែវ ពិតជា​ធ្វើ​ឲ្យ​សុខភាព​និង​កម្រិត​ថាមពល​របស់​អ្នកមាន​ភាព​រស់​រវើក​ឡើង ។ វា​ជួយ​បង្កើត​ប្លា​ស្មា និង​សារធាតុ​រាវ​ក្នុង​រាង​កាយ និង​ជួយ​ប្រឆាំង​ភាព​ស្ងួត និង​ការ​អស់កម្លាំង ។&lt;/p&gt;\r\n\r\n&lt;p&gt;៤-​តាម​ការ​ព្យាបាល​បែប Ayurveda ក៏​បាន​លើក​ឡើង​ដែរ​ថា ទឹកអំពៅ​មាន​លក្ខណៈសម្បត្តិ​បន្ទន់​លាមក ដូច្នេះ​ហើយ​វា​អាច​ធ្វើ​ឱ្យ​ប្រសើរ​ឡើង​នូវ​ចលនា​ពោះវៀន​និង​បន្ថយ​ការ​ទល់លាមក (​ប្រភព​ ៖ ayurhelp.com)​។ ទឹកអំពៅ​មាន​លក្ខណៈសម្បត្តិ​អាល់​កា​ឡាំង ដែល​មាន​ន័យ​ថា វា​ល្អ​សម្រាប់​ការ​ព្យាបាល​ការ​ច្រាល​ទឹក​អាស៊ីត និង​បញ្ហា​ឈឺ​ក្រពះ ។&lt;/p&gt;\r\n\r\n&lt;p&gt;៥-​វា​មាន​សារជាតិ​ស្ករ​ទាប (GI) ដូច្នេះ​វា​ល្អ​សម្រាប់​អ្នកជំងឺ​ទឹកនោមផ្អែម ។ ការ​សិក្សា​មួយ​បាន​បង្ហាញ​ថា ការ​ទទួលទាន​ទឹកអំពៅ មិន​បាន​ផ្លាស់​ប្តូរ​កម្រិត​ជាតិ​ស្ករ​ក្នុង​ឈាម​របស់​អ្នកជំងឺ​ទឹកនោមផ្អែម​ខ្លាំង​ទេ ប៉ុន្តែ​អ្នក​គួរតែ​ពិភាក្សា​ជាមួយ​វេជ្ជបណ្ឌិត​របស់​អ្នក មុន​ពេល​អ្នក​ចាប់ផ្តើម​ទទួលទាន​ដោយ​ខ្លួនឯង ។&lt;/p&gt;\r\n\r\n&lt;p&gt;៦-​ទឹកអំពៅ​សម្បូរ​សារធាតុ​រ៉ែ ដែល​ជួយ​ការពារ​ការ​ពុក​ធ្មេញ​និង​ក្លិន​មាត់​មិនល្អ ៕&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/images.jpg&quot; style=&quot;height:162px; width:311px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/6206973aff7b93e2c9ffbb53a4015c59.jpg', NULL),
(54, 'ទឹកក្រឡុកប័រ', 'ធី រតនា', 2, 20, '6', '&lt;h1&gt;&lt;span style=&quot;color:#e67e22&quot;&gt;ទឹកក្រឡុកប័រ&lt;/span&gt;&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;មានរស់ជាតិឈ្ញុយឆ្ញាញ់ពិសារមានអត្ថប្រយោជន៍ដូចជា៖&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/65508823_2167835190108043_367896.jpg&quot; style=&quot;height:491px; width:740px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/38735932_440589529792573_7582866.jpg&quot; style=&quot;height:564px; width:935px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/7e80543dca9638760bb302e26e2fbf57.jpg', NULL),
(55, 'Angkor', 'ធី រតនា', 15, 20, '1', '&lt;h1&gt;ស្រាបៀAngkor មានរស់ជាតិឈ្ងុយឆ្ញាញ់&lt;/h1&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;ស្រាបៀ Angkor មានរស់ជាតិឈ្ងុយឆ្ញាញ់ពិសារសជាតិស្រូវសាឡី៖&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/cus/uploads/Angkor.jpg&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', '/uploads/products/79b1fbff1b4fd82bf76993708a553270.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `time_create` datetime NOT NULL DEFAULT current_timestamp(),
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `sex`, `username`, `password`, `phone`, `address`, `time_create`, `active`) VALUES
(1, 'admin', 'admin', 'M', 'admin', '202cb962ac59075b964b07152d234b70', '0967932240', 'Kompong chhnang\r\nPhnom Penh', '2021-07-22 09:19:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_locked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `is_locked`) VALUES
(1, 'man', 'veasna', 'manveasna1994@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
