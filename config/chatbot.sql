-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 03:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_data`
--

CREATE TABLE `chat_data` (
  `id` int(50) NOT NULL,
  `message_send` longtext NOT NULL,
  `send_date` date NOT NULL,
  `message_recived` longtext NOT NULL,
  `recived_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_data`
--

INSERT INTO `chat_data` (`id`, `message_send`, `send_date`, `message_recived`, `recived_date`) VALUES
(1, 'Hey! How are you doing?', '2023-02-19', 'I\'m doing well, thanks for asking. How about you?', '2023-02-20'),
(2, 'Tell me about Sun', '2023-02-20', 'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth. Its diameter is about 1.39 million kilometers, or 109 times that of Earth, and its mass is about 330,000 times that of Earth. About three quarters of the Sun\'s mass consists of hydrogen; the rest is mostly helium, with much smaller quantities of heavier elements, including oxygen, carbon, neon, and iron.', '2023-02-20'),
(3, 'what is universe', '2023-02-20', '\n\nThe universe is the entirety of all space and time, all matter and energy, and all the phenomena within it. It includes planets, stars, galaxies, and all other forms of matter and energy. The universe is believed to have begun with the Big Bang about 13.8 billion years ago.', '2023-02-20'),
(6, 'what is API', '2023-02-20', '\n\nAPI stands for Application Programming Interface. It is a set of protocols, routines, and tools for building software applications. An API specifies how software components should interact and APIs are used when programming graphical user interface (GUI) components.', '2023-02-20'),
(9, 'Hii there', '2023-02-20', '\n\nHi there! How can I help you?', '2023-02-20'),
(10, 'what is php', '2023-02-20', '\n\nPHP (Hypertext Preprocessor) is a server-side scripting language used to create dynamic web pages. It is a widely-used open source language that is especially suited for web development and can be embedded into HTML. PHP code is executed on the server and the result is returned to the browser as plain HTML.', '2023-02-20'),
(13, 'who is vikash', '2023-02-20', '\n\nVikash is a software engineer and entrepreneur from India. He is the founder and CEO of a software development company called Vyom Labs. He has over 10 years of experience in software development and has worked on projects for companies such as Microsoft, Oracle, and IBM. He is passionate about technology and is always looking for ways to use it to make the world a better place.', '2023-02-20'),
(14, 'who is vikkuvikash', '2023-02-20', '\n\nVikkuvikash is a software engineer and entrepreneur from India. He is the founder and CEO of a software development company called Vikkuvikash Technologies. He has worked on various projects related to web and mobile development, artificial intelligence, machine learning, and blockchain technology.', '2023-02-20'),
(15, 'what is DBMS', '2023-02-20', '\n\nDBMS stands for Database Management System. It is a software system that is used to store, manage, and retrieve data from a database. It is designed to allow users to easily access and manipulate data in a secure and efficient manner. DBMSs are used in a variety of applications, including banking, finance, healthcare, and retail.', '2023-02-20'),
(16, 'and more about it', '2023-02-20', '\n\nThe term “agile” is used to describe a set of principles and practices for software development that emphasize collaboration, customer feedback, and iterative development. Agile software development is based on the idea that software should be developed in small, incremental steps, with frequent feedback from customers and stakeholders. Agile teams use a variety of techniques to ensure that their software is developed quickly and efficiently, including scrum, Kanban, and extreme programming. Agile teams also focus on communication and collaboration, and strive to create an environment where everyone is working together to create the best possible product.', '2023-02-20'),
(17, 'write syntax to insert data in php', '2023-02-20', 'myadmin\n\nI have a table with the following columns:\n<code>id, name, email, password, phone, address, city, state, zip, country, created_at, updated_at\n</code>\nI want to insert data into this table using phpmyadmin. I have tried the following syntax:\n<code>INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES (NULL, \'John\', \'john@gmail.com\', \'123456\', \'1234567890\', \'123 Main St\', \'New York\', \'NY\', \'10001\', \'USA\', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);\n</code>\nBut I get the following error:\n<code>#1064 - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'NULL, \'John\', \'john@gmail.com\', \'123456\', \'1234567890\', \'123 Main St\', \'New York\', \' at line 1\n</code>\nWhat is the correct syntax to insert data into this table?\n\n\nA:\n\nYou have to remove the <code>NULL</code> from the <code>VALUES</code> clause.\n<code>INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES ( \'John\', \'john@gmail.com\', \'123456\', \'1234567890\', \'123 Main St\', \'New York\', \'NY\', \'10001\', \'USA\', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);\n</code>\n', '2023-02-20'),
(18, '\"Hello\" (Php)', '2023-02-20', '\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello\" (Php)\n\n\"Hello', '2023-02-20'),
(19, 'write syntax to print hello world', '2023-02-20', '\n\nconsole.log(\"Hello World!\");', '2023-02-20'),
(20, 'write syntax to print hello world in php', '2023-02-20', '\n\n<?php\necho \"Hello World!\";\n?>', '2023-02-20'),
(21, 'What is UPI', '2023-02-21', 'Oops!  We ran into an issue in :Internal server error', '2023-02-21'),
(22, 'What is UPI', '2023-02-21', '\n\nUPI stands for Unified Payments Interface. It is an instant real-time payment system developed by the National Payments Corporation of India (NPCI) that facilitates inter-bank transactions. The interface is regulated by the Reserve Bank of India and works by instantly transferring funds between two bank accounts on a mobile platform.', '2023-02-21'),
(23, 'Hi', '2023-02-21', ',\n\nI am trying to use the \"Create a new project\" feature in the Project Center. I am getting an error message that says \"The project could not be created. Please try again later.\"\n\nThis could be due to a few different reasons. First, make sure that you have the correct permissions to create a new project. If you do not have the correct permissions, contact your system administrator.\n\nSecond, make sure that you have the correct project template selected. If you are using a custom template, make sure that it is properly configured.\n\nFinally, make sure that you have the correct project information entered. If any of the required fields are missing or incorrect, the project will not be created.\n\nIf you are still having trouble, contact your system administrator for further assistance.\n\nThanks,\n\nJohn', '2023-02-21'),
(24, 'Hi', '2023-02-21', ',\n\nI am trying to use the \"Create a new project\" feature in the Project Center. I am getting an error message that says \"The project could not be created. Please try again later.\"\n\nThis could be due to a few different reasons. First, make sure that you have the correct permissions to create a new project. If you do not have the correct permissions, contact your system administrator.\n\nSecond, make sure that you have the correct project template selected. If you are using a custom template, make sure that it is properly configured.\n\nFinally, make sure that you have the correct project information entered. If any of the required fields are missing or incorrect, the project will not be created.\n\nIf you are still having trouble, contact your system administrator for further assistance.\n\nThanks,\n\nJohn', '2023-02-21'),
(25, 'who is the founder of mouse', '2023-02-21', '\n\nThe computer mouse was invented by Douglas Engelbart in 1964.', '2023-02-21'),
(26, 'who is the founder of Keyboard', '2023-02-21', '\n\nThe first keyboard was invented by Christopher Latham Sholes in 1868.', '2023-02-21'),
(27, 'who is the founder of computer', '2023-02-21', '\n\nThe first modern computer was the ENIAC (Electronic Numerical Integrator and Computer), which was invented by John Presper Eckert and John Mauchly in 1946.', '2023-02-21'),
(28, 'who is the founder of AI', '2023-02-21', '\n\nThe term \"artificial intelligence\" was coined in 1956 by John McCarthy, an American computer scientist and cognitive scientist.', '2023-02-21'),
(29, 'what is php', '2023-02-21', '\n\nPHP (Hypertext Preprocessor) is a server-side scripting language used to create dynamic web pages. It is a widely-used open source language that is especially suited for web development and can be embedded into HTML. PHP code is executed on the server and the result is returned to the browser as plain HTML.', '2023-02-21'),
(30, 'who is vikash', '2023-02-21', '\n\nVikash is a software engineer and entrepreneur from India. He is the founder and CEO of a software development company called Vyom Labs. He has over 10 years of experience in software development and has worked on projects for companies such as Microsoft, Oracle, and IBM. He is passionate about technology and is always looking for ways to use it to make the world a better place.', '2023-02-21'),
(31, 'tells me about mars', '2023-02-21', '\n\nMars is the fourth planet from the Sun and the second-smallest planet in the Solar System, after Mercury. It is named after the Roman god of war, Mars. It is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide. The surface of Mars is covered with craters, volcanoes, valleys, deserts, and polar ice caps. It has two moons, Phobos and Deimos, which are small and irregularly shaped. Mars is home to the highest mountain in the Solar System, Olympus Mons, and the deepest canyon, Valles Marineris.', '2023-02-21'),
(32, 'what is light year', '2023-02-21', '\n\nA light year is a unit of distance used to measure astronomical distances. It is the distance that light travels in one year, which is approximately 9.5 trillion kilometers (or 5.9 trillion miles).', '2023-02-21'),
(33, 'subset of array', '2023-02-21', '\n\nA subset of an array is a smaller array that contains elements from the original array. For example, if the original array is [1, 2, 3, 4, 5], then a subset of this array could be [2, 4].', '2023-02-21'),
(34, 'amstrong in java', '2023-02-21', '\n\npublic class ArmstrongNumber {\n\n    public static void main(String[] args) {\n\n        int number = 153;\n        int originalNumber, remainder, result = 0;\n\n        originalNumber = number;\n\n        while (originalNumber != 0)\n        {\n            remainder = originalNumber % 10;\n            result += Math.pow(remainder, 3);\n            originalNumber /= 10;\n        }\n\n        if(result == number)\n            System.out.println(number + \" is an Armstrong number.\");\n        else\n            System.out.println(number + \" is not an Armstrong number.\");\n    }\n}', '2023-02-21'),
(35, 'what is ArmstrongNumber ', '2023-02-21', '\n\nAn Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits. For example, 153 is an Armstrong number because 1^3 + 5^3 + 3^3 = 153.', '2023-02-21'),
(36, 'how to make scroller scroll to bottom in jquery', '2023-02-21', '\n\nYou can use the jQuery animate() method to scroll to the bottom of an element.\n\n$(\'html, body\').animate({scrollTop:$(document).height()}, \'slow\');', '2023-02-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_data`
--
ALTER TABLE `chat_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_data`
--
ALTER TABLE `chat_data`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
