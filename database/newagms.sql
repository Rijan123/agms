-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2025 at 08:22 AM
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
-- Database: `agms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 987654331, 'tester1@gmail.com', '$2y$10$qwjwI3ZHlQbF/reK6Q01SepEoCzdM2ZWNdN99D6iajcBAGkpy0XSq', '2022-12-29 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

CREATE TABLE `tblartist` (
  `ID` int NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext,
  `Award` mediumtext,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`ID`, `Name`, `MobileNumber`, `Email`, `Education`, `Award`, `Profilepic`, `CreationDate`) VALUES
(11, 'uma shanskar shah', 9888378388, 'uma@gmail.com', 'bachelor complete', 'sculptures and figurative artwork', '06d2aeb8ca5c5e7f3d0b2833a9968b8d.png', '2023-06-06 07:45:10'),
(12, 'Meera Singh', 9273364744, 'mera@gmail.com', 'master', 'best picture', 'afc93ae8a6d46ba03725deb43c25902a.jpg', '2023-06-07 09:14:12'),
(13, 'dev', 9827263738, 'dev@gmail.com', 'bachelor', 'Excellence in Painting Award', '7554632249b4cb7858b82fad6ecdd268.jpg', '2023-06-07 09:17:19'),
(14, 'Meera Shah', 9273364744, 'mera@gmail.com', 'master', 'Excellence in Painting Award', '7554632249b4cb7858b82fad6ecdd268.jpg', '2023-06-07 09:22:18'),
(15, 'sabin shrestha', 3934845757, 'sthasabin@gmail.com', 'bachelor in art', 'innovation in their artistic expression', 'b3507549610024819ace2eae8eb1b38c.png', '2023-06-07 18:10:24'),
(16, 'ravi nagarkoti', 9289393888, 'nagarkoti@gmail.com', 'Bachelor in art and painting', ' Recognizing the exceptional talent and mastery in the world of painting', '0e5465961780dc1b43d789583b1a9f3a.jpg', '2023-06-07 18:12:01'),
(17, 'davi sakya', 9988883838, 'davi@gmail.com', 'master in painting', 'creativity', '16975b1057a02579bb6f8287212fd575.png', '2023-06-07 18:13:24'),
(18, 'aryanman Rajbhandari', 9887737377, 'rajbhandari@gmail.com', '+2 in arts and painting', 'Painting Excellence Award', 'b3507549610024819ace2eae8eb1b38c.png', '2023-06-07 18:15:43'),
(19, 'Aarus Rajbhandari', 8569458559, 'arus@gmail.com', 'Master in painting', 'Recognizing exceptional talent, ', '0e5465961780dc1b43d789583b1a9f3a.jpg', '2023-06-07 18:18:17'),
(20, 'Riya Ranjit', 9748000000, 'riya@gmail.com', 'master in art', 'young artist award 2023', '6a6ab14a41fb3c3dc50ac20e89012f1f.png', '2024-03-06 13:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblartmedium`
--

CREATE TABLE `tblartmedium` (
  `ID` int NOT NULL,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartmedium`
--

INSERT INTO `tblartmedium` (`ID`, `ArtMedium`, `CreationDate`) VALUES
(1, 'Wood and Bronze', '2022-12-22 04:57:04'),
(2, 'Acrylic on canvas', '2022-12-22 04:57:34'),
(3, 'Resin', '2022-12-22 04:58:00'),
(4, 'Mixed Media', '2022-12-22 06:09:12'),
(5, 'Bronze', '2022-12-22 06:09:35'),
(6, 'Fibre', '2022-12-22 06:09:53'),
(7, 'Steel', '2022-12-22 06:10:16'),
(8, 'Metal', '2022-12-22 06:10:35'),
(9, 'Oil on Canvas', '2022-12-22 06:11:31'),
(10, 'Oil on Linen', '2022-12-22 06:12:12'),
(12, 'Hand-painted on particle wood/MDF', '2022-12-22 06:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblartproduct`
--

CREATE TABLE `tblartproduct` (
  `ID` int NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int DEFAULT NULL,
  `ArtType` int DEFAULT NULL,
  `ArtMedium` int DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `RefNum` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tags` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `RefNum`, `CreationDate`, `tags`) VALUES
(9, 'Dreamscape', '76x76', 'Landscape', 'Medium', 11, 6, 2, 9000, 'Unleashing Anime Magic', 'd521b63ecc6fcdfd2e7b2dce237e10f31686038968.jpg', 'e7df960dd7456106d36caea1039caf0b.jpg', '', '', '', 888087012, '2023-06-06 08:09:28', '[\"mind\",\"nature\",\"girl\"]'),
(18, 'shi', '86x86', 'Potrait', 'Medium', 13, 3, 2, 6000, 'A boundless expression of creativity that transcends time, ', '7554632249b4cb7858b82fad6ecdd2681686162339.jpg', '', '', '', '', 291699061, '2023-06-07 18:25:39', '[\"shiva\",\"religious\",\"lordsshiva\"]'),
(19, 'kanaya', '70x70', 'Potrait', 'Medium', 15, 3, 2, 3000, 'captivating the human spirit', '724e0bfc1b9139707845bd354b8b545c1686162491.jpg', '79396fe06d9c4f0661235bded7bed0e4.jpg', '', '', '', 695361456, '2023-06-07 18:28:11', '[\"religious\",\"lord\",\"krishna\",\"kanaya\",\"god\"]'),
(20, 'statue of Afel Tower', '45 inches tall', 'Landscape', 'Large', 17, 1, 7, 9000, ' reflecting the beauty and complexity of the world around us.', 'ab4af1d263dc329b7e2d1ef6790453911686162756.jpg', '', '', '', '', 797370361, '2023-06-07 18:32:36', '[\"Tower\",\"antique\",\"paris\",\"building\"]'),
(21, 'statue', '45 inches tall', 'Landscape', 'Medium', 16, 1, 10, 5000, 'igniting imagination', '568f6d874f3b89b30b33e4108390888d1686162961.jpg', 'bb108b3bbf13d7ce6935587988f93440.jpg', '', '', '', 792078862, '2023-06-07 18:36:01', '[\"statue\", \"white\", \"man\"]'),
(23, 'Dreamscape', '100x200', 'Landscape', 'Medium', 19, 2, 6, 5000, 'The universal language that speaks to the soul', '9fe7f34ab049ef751a5811c6b0e6e0181686163207.jpg', '7f2af81ae9c51fe89baaea28c34c5436.jpg', '', '', '', 726411136, '2023-06-07 18:40:07', '[\"dark\", \"antique\", \"war\"]'),
(24, 'imagination', '86x86', 'Landscape', 'Medium', 18, 4, 12, 5000, 'express the depths of the human experience.', '59277dc1a754ac0316851c56ab49bc301686163399.jpg', 'def971f95ca614d92f54f89d76926c9a.jpg', '', '', '', 897991823, '2023-06-07 18:43:19', '[\"handart\",\"blackandwhite\",\"girl\"]'),
(25, 'Eternal Blossoms', '86x86', 'Landscape', 'Medium', 14, 2, 12, 4849, 'elevate the world of art', '9b4c061e6e9eb99bdde8175a72f4955d1686193783.jpg', '2034c4762305c409c45584babb0efe54.png', '', '', '', 701718048, '2023-06-08 03:09:43', '[\"Nature\" ,\"tree\"]'),
(26, 'Messi', '80x60', 'Potrait', 'Small', 19, 4, 12, 900, 'football art.', '9c9c89638f3619ac04f85bc9d93b22aa1688785935.jpg', '', '', '', '', 132133313, '2023-07-08 03:12:15', '[\"messi\",\"football\"]'),
(27, 'mind', '86x86', 'Landscape', 'Medium', 18, 4, 12, 3000, 'imagine you are real', 'def971f95ca614d92f54f89d76926c9a1688796335.jpg', '', '', '', '', 575141733, '2023-07-08 06:05:35', '[\"girl\",\"girl\",\"book\",\"peace\"]'),
(28, 'Nature', '80x80', 'Potrait', 'Medium', 17, 5, 0, 5000, 'heal the pain', '39483093e19b101a88c9476069153dd51692906470.jpg', '', '', '', '', 583234377, '2023-08-24 19:47:50', '[\"Nature\",\"tree\"]'),
(29, 'God', '100x100', 'Potrait', 'Large', 19, 3, 12, 300000, 'bless us', '794a3a8c9f2eecf30ffd3955f59489c81692907449.jpg', '', '', '', '', 643699408, '2023-08-24 20:04:09', '[\"krishna\",\"god\",\"religious\",\"lord\"]'),
(30, 'kanaya', '90x90', 'Landscape', 'Medium', 14, 4, 2, 7000, 'always stay in peace', 'c25f862a328a9a65f4be84db20cbb23a1692907652.jpg', '', '', '', '', 232907822, '2023-08-24 20:07:32', '[\"lord\",\"religious\",\"god\",\"kanaya\",\"krishna\"]'),
(31, 'life', '100x100', 'Potrait', 'Medium', 14, 3, 4, 8000, 'give life and be happy', 'cf0d015a1940cef67d856e901f7497871692907862.jpg', '', '', '', '', 721119453, '2023-08-24 20:11:02', '[\"tree\",\"nature\",\"Nature\"]'),
(32, 'Waterfall', '70X70', 'Potrait', 'Large', 13, 5, 3, 60000, 'Water or waterfall both make our life perfect', 'ce46cdf29103fddab736374a9bd7cf9f1692908001.jpg', '', '', '', '', 444211323, '2023-08-24 20:13:21', '[\"Nature\",\"waterfall\",\"tree\",\"peace\"]'),
(33, 'mountain', '500x500', 'Landscape', 'Large', 15, 6, 0, 90000, 'mountain with beautiful nature', '99b8abc6967ee65f0f015e235f1e89251692908111.jpg', '', '', '', '', 991654658, '2023-08-24 20:15:11', '[\"Nature\",\"tree\",\"mountain\",\"peace\"]'),
(34, 'mountain', '70x70', 'Landscape', 'Medium', 12, 2, 7, 80047, 'nature teach us about life', '7fffb663120dd173020ed4b9bc2235831692908221.jpg', '', '', '', '', 911759051, '2023-08-24 20:17:01', '[\"mountain\",\"waterfall\",\"nature\"]'),
(35, 'sunshine', '80*80', 'Potrait', 'Large', 11, 6, 6, 921022, 'comfortable when art are made by perfect artist', '7c2164b8f710334d52c6f71b351c45da1692908696.jpg', '', '', '', '', 774110341, '2023-08-24 20:24:56', '[\"mountain\",\"peace\",\"l\",\"nature\"]'),
(36, 'statue', '70x70', 'Potrait', 'Medium', 16, 1, 4, 3225666, 'full of talents', '7fdc1a630c238af0815181f9faa190f51692908884.jpg', '', '', '', '', 536548202, '2023-08-24 20:28:04', '[\"statue\",\"white\",\"man\"]'),
(37, 'statue', '90x90', 'Landscape', 'Medium', 18, 1, 1, 665454, 'walking toward for better future', 'e937b9a7f0a84fe0a7e81dbbcea0887d1692909055.jpg', '', '', '', '', 860818222, '2023-08-24 20:30:55', '[\"ancient\",\"man\",\"antique\",\"war\"]'),
(38, 'life', '90x90', 'Potrait', 'Medium', 17, 6, 10, 65522222, 'precious', 'a03e30a79241fec906a56e27a2752b901692909167.jpg', '', '', '', '', 546081517, '2023-08-24 20:32:47', '[\"water\",\"nature\",\"waterfall\",\"tree\",\"mind\"]'),
(39, 'moon', '2000*1000', 'Potrait', 'Medium', 20, 4, 2, 3000, 'moon ', '34810d019f831bef9eddea87cc95ff0b1709730936.jpg', '', '', '', '', 403877286, '2024-03-06 13:15:36', '[\"nature moon\",\"nature\",\"moon\"]');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

CREATE TABLE `tblarttype` (
  `ID` int NOT NULL,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarttype`
--

INSERT INTO `tblarttype` (`ID`, `ArtType`, `CreationDate`) VALUES
(1, 'Sculptures', '2022-12-21 14:21:13'),
(2, 'Serigraphs', '2022-12-21 14:24:46'),
(3, 'Prints', '2022-12-21 14:25:00'),
(4, 'Painting', '2022-12-21 14:25:31'),
(5, 'Street Art', '2022-12-21 14:26:06'),
(6, 'Anime art ', '2022-12-21 14:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ID` int NOT NULL,
  `OrderNumber` varchar(10) NOT NULL,
  `Artpdid` int DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `OrderDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<p style=\"margin-bottom: 1.25em; white-space-collapse: preserve; border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">Welcome to <b>Kathmandu</b> <b>Canvas</b>, your customer-focused online destination where art takes center stage. We are dedicated to connecting art enthusiasts with a vibrant collection of masterpieces, showcasing the rich cultural heritage and artistic talent of Nepal. Our user-friendly website offers an immersive experience, allowing you to explore captivating artworks from the comfort of your own home.</p><p style=\"margin-top: 1.25em; margin-bottom: 1.25em; white-space-collapse: preserve; border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">At Kathmandu Canvas, our team of art enthusiasts and experts curates a diverse range of artwork, including paintings, sculptures, photographs, and more, sourced from talented artists across Nepal. Each piece reflects the unique essence of Nepali art, whether it be the intricate details of traditional Thangka paintings, the vibrant colors of contemporary abstract art, or the serene beauty captured in landscape photography. With detailed descriptions, high-resolution images, and artist profiles, we provide the information you need to make an informed and heartfelt decision.</p>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar<div>Kathmandu</div>', 'ktmgallery@gmail.com', 9818235335, NULL, '8:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartist`
--
ALTER TABLE `tblartist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblarttype`
--
ALTER TABLE `tblarttype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CardId` (`Artpdid`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblartist`
--
ALTER TABLE `tblartist`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblarttype`
--
ALTER TABLE `tblarttype`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
