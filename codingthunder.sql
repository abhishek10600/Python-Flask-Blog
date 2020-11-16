-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 06:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'first post', 'firstpost@gamil.com', '123456789', 'first post', '2020-11-13 19:53:25'),
(2, 'Abhishek Sharma', 'abhishek_201900225@smit.smu.edu.in', '7003254154', 'sdadas', '2020-11-13 20:24:48'),
(3, 'mera naam', 'meraemail@gmail.com', '9162289872', 'posting now', '2020-11-13 20:27:56'),
(4, 'zaheer khan', 'zaheer@gmail.com', '7003254154', 'post wapas', '2020-11-13 20:35:58'),
(5, 'asada', 'afcca', '5678567', 'send message please', '2020-11-13 21:37:43'),
(6, 'asada', 'afcca', '5678567', 'send message please', '2020-11-13 21:42:14'),
(7, 'asada', 'afcca', '5678567', 'send message please', '2020-11-13 21:49:41'),
(8, 'Rahul Kumar', 'abhishek_201900225@smit.smu.edu.in', '9162289872', 'assas', '2020-11-13 21:50:56'),
(9, 'Rahul Kumar', 'abhishek_201900225@smit.smu.edu.in', '9162289872', 'assas', '2020-11-13 21:51:34'),
(10, 'Rahul Kumar', 'rahul@gmail.com', '9162289872', 'assadaw', '2020-11-13 21:54:37'),
(11, 'Anju Sharma', 'anju3100@gmail.com', '8443041516', 'mein tumagi mummy hoon abhishek', '2020-11-14 20:06:38'),
(12, 'Aditi Sharma', 'aditi.sharma0545@gmail.com', '8902498338', 'Bhak suar.', '2020-11-15 12:43:47'),
(13, 'Md Sharif Ali Khan', 'sharif123@gmail.com', '9175562354', 'Help me!', '2020-11-16 01:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s learn about stock market', 'that', 'first-post', 'In financial markets(abhi), stock is the capital that a firm gets by giving out and distributing shares.\r\n\r\nA person or organization which holds shares of stocks is called a shareholder. The whole value of the stocks that a firm has issued is called its market capitalization.\r\n\r\nStocks can be bought and sold from the stock exchange. Someone who buys and sells stock is called a stockbroker.\r\n\r\nIn the United Kingdom and Australia, the term share is used the same way as stock is described in the United States.\"\"', 'home-bg.jpg', '2020-11-16 00:23:38'),
(2, 'This is my second post.', 'coolest to check', 'second-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\"', 'about-bg.jpg', '2020-11-16 15:27:40'),
(3, 'third post', 'this is the third post', 'third-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).', 'home-bg.jpg', '2020-11-15 00:05:07'),
(5, 'fifth post', 'this is the fifth post', 'fifth-post', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses.', 'home-bg.jpg', '2020-11-15 00:09:14'),
(6, 'comments', 'tagline', 'slug-next', 'To comment-out part of a line in a template, use the comment syntax which is by default set to {# ... #}. This is useful to comment out parts of the template for debugging or to add information for other template designers or yourself:', '', '2020-11-15 00:13:22'),
(7, 'I added a new post', 'this is a new post', 'new-post', 'content', 'img.png', '2020-11-15 23:54:55'),
(8, 'just checking', 'to check', 'checking-post', '\"hello', 'hiu.png', '2020-11-16 15:26:42'),
(9, 'another check', 'heheh2', 'hehe-post', 'hellooooo ', 'asas.png', '2020-11-16 20:35:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
