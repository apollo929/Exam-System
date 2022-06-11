-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 03:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinexaminationci`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Lecturer', 'For making and checking Questions. And also conducting examinations'),
(3, 'Student', 'Exam Participants');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(8, '::1', 'noul', 1647821289),
(12, '::1', 'nouladmin@mail.com', 1647824838),
(13, '::1', 'nouladmin@mail.com', 1647824927);

-- --------------------------------------------------------

--
-- Table structure for table `placement_test`
--

CREATE TABLE `placement_test` (
  `id` int(11) NOT NULL,
  `problem_no` int(11) NOT NULL,
  `person_a` varchar(255) DEFAULT NULL,
  `person_b` varchar(255) DEFAULT NULL,
  `conversation_a` varchar(255) DEFAULT NULL,
  `conversation_b` varchar(255) DEFAULT NULL,
  `questions` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `placement_test`
--

INSERT INTO `placement_test` (`id`, `problem_no`, `person_a`, `person_b`, `conversation_a`, `conversation_b`, `questions`, `answer`, `del_flag`) VALUES
(7, 1, 'Manager', 'Assistant', 'Where’s Mr Davidson?', 'Oh, he’s _____ London today.', 'in#on #to#at', 'in', 0),
(8, 2, 'Amirah', 'Chris', 'Do you like cats?', 'No, but there _____ lots of other animals I like.', 'is #be #are #was', 'are ', 0),
(9, 3, 'Andrew', 'Martin', 'Where _____ Alicia come from?', ' I think she’s from the United States.', 'is#do#are#does', 'are', 0),
(10, 4, 'Teacher', 'Student', 'Tell me something about your parents, Lucas.', 'My mother and father _____ both very tall.', 'is#isn\'t#are#aren\'t', 'are', 0),
(11, 5, 'Ayla', 'Sophie', ' That’s a nice table, Sophie! Is it new?', 'Oh no, it’s my _____ old dining table.', 'mother#mothers#mother\'s#mothers\'', 'mother\'s', 0),
(12, 6, 'Chloe', 'Emma', 'Do you visit people, too?', 'No, I _____ go out.', 'often#never#always#sometimes', 'never', 0),
(13, 7, 'Katie', 'Laura', 'Is Charlotte at school today?', ' No, she _____. She’s not well today.', 'isn\'t#aren\'t #doesn\'t#hasn\'t', 'isn\'t', 0),
(14, 8, 'Alex', 'Andrea', ' I’d like to make a cake. _____ eggs have we got?', 'Three, I think. Let me check.', 'How big#How much#How many#How long', 'How many', 0),
(15, 9, 'Ifrah', 'Antonia', 'Which bus goes to the hospital?', '_____ the 236. It stops outside.', 'Get#Got#Gets#Getting', 'Get', 0),
(16, 10, 'Father', 'Daughter', 'Are we ready to go?', 'No, Mum can’t find _____ hat.', 'its#his#her#their', 'her', 0),
(17, 11, 'Shop Assistant', 'Customer', 'Can I help you?', 'Yes, I’d like to buy _____ trousers.', 'a#an#this#these', 'these', 0),
(18, 12, 'Mother', 'Daughter', 'Where’s that fish I bought? It was on the table.', 'Oh no! The cat _____ it.', 'eat#eats#is eating#are eating', 'is eating', 0),
(19, 13, 'Amanda', 'Fahima', ' I like your new sofa.', 'Thanks. It’s _____ comfortable than the other one we had.', 'too#very#much#more', 'more', 0),
(20, 14, 'Alicia', 'Peter', ' I’m going to the supermarket. Do you want anything?', 'Could you get _____ milk, please?', 'a#any#some#every', 'some', 0),
(21, 15, 'Karina', 'Aniqa', 'When do you want to play football?', 'I _____ to play tomorrow, because I don’t need to go to work.', 'like#likes#liked#\'d like', '\'d like', 0),
(22, 16, 'Manisha', 'Nicola', 'What did you do at the weekend?', 'I _____ tennis with my friend on Saturday.', 'play#played#plays#playing', 'played', 0),
(23, 17, 'Wife', 'Husband', 'Have we got any cheese in the fridge?', 'No, we haven’t. I’m _____ buy some this afternoon.', 'go#go to#going#going to', 'going to', 0),
(24, 18, 'Laura', 'Beatriz', ' Where _____ you last Tuesday? I tried to phone you.', 'Oh, I was visiting my grandmother. I didn’t have my phone with me.', 'were#was#are#is', 'were', 0),
(25, 19, 'Miriam', 'Brian', 'Are you coming to my party on Tuesday?', ' I’m really sorry, but I _____ to take my daughter to the airport.', 'has#had#have #having', 'have ', 0),
(26, 20, 'Saif', 'Isabella', 'Why do you like running?', 'Because it’s _____ way to keep fit.', 'best#better#the best#the better', 'the best', 0),
(27, 21, 'Anna', 'Stefan', ' Have you lived here a long time?', ' Yes, over 40 years. I know _____ of people in this town.', 'any#lots#more#most', 'lots', 0),
(28, 22, 'Josef', 'Chloe', 'Why didn’t you come to the cinema last week?', 'I wanted to but I couldn’t. I _____ studying for that test we had on Monday.', 'was#were#am#been', 'was', 0),
(29, 23, 'Anna', 'Juliana', ' That bird’s on the garden table again. I think it’s hungry.', ' Yes, look! It _____ eat the bread we put there.', 'is #will#goes to #is going to', 'is going to', 0),
(30, 24, 'Sophie', 'Ying Yue', 'How long _____ married?', ' Two years. I met my husband when I was working in New York.', 'had you got#did you get#have you been#are you being', 'have you been', 0),
(31, 25, 'David', 'Susanna', ' Have you _____ that new film yet?', 'No, I haven’t. We could go on Thursday if you like?', 'see#saw#seen#seeing', 'seen', 0),
(32, 26, 'Shop Assistant', 'Customer', 'Excuse me, please. Could I get past?', 'Oh, I’m sorry. I’m getting in the way, ____ I?', 'don\'t#aren\'t#can\'t#haven\'t', 'aren\'t', 0),
(33, 27, 'Wife', 'Husband', 'Advertising is a big business for musicians.', 'Yes, musicians _____ a lot of money for writing short pieces of music.', 'pay#paid#are paid#are paying', 'are paid', 0),
(34, 28, 'Son', 'Mother', 'Mum, I’d really like a guitar. Can I have one?', 'OK, but if we buy one you _____ have to practise playing it.', 'will#can#could#must', 'will', 0),
(35, 29, 'Juliana', 'Miriodere', 'Do you like Brazilian coffee?', 'No I don’t, because it’s _____ strong.', 'too#such#much#enough', 'too', 0),
(36, 30, 'Matthew', 'Alicia', 'Would you like anything from the shop?', 'Yes, I’d like one of _____ celebrity magazines, please.', 'most recent#more recent# the most recent#the more recent', ' the most recent', 0),
(37, 31, 'Daughter', 'Mother', ' Mum, my computer is broken again. I really need a new one.', 'I _____ buy one if we had the money, but it’s not possible right now.', 'will#may#should#would', 'would', 0),
(38, 32, 'Mother', 'Son', '_____ you packed your suitcase yet? We’re leaving early tomorrow morning.', ' I’ll do it later. It won’t take long.', 'Did#Have#Will#Are', 'Have', 0),
(39, 33, 'Lucas', 'Natasha', 'Do you play the piano, Natasha?', 'Well, I _____ play when I was younger, but I’m not sure I remember now.', 'can#can\'t#could#couldn\'t', 'could', 0),
(40, 34, 'Martina', 'Padma', 'What did the doctor say about your stomach pains?', 'He asked me what I _____ for the last two days.', 'eat#had eaten #was eating#would eat', 'had eaten ', 0),
(41, 35, 'Daughter', 'Mother', ' Everyone has arrived apart from Pamela.', 'Don’t worry, she phoned me this morning and said she _____ be a bit late.', 'can #must#should#would', 'would', 0),
(42, 36, 'Vincent', 'Pauline', ' Did you see the weather forecast? It’s going to be extremely hot this weekend.', ' I know, I can’t believe it! It _____ since Monday.', 'rains#has been raining#is raining#was raining', 'has been raining', 0),
(43, 37, 'Ameena', 'Charlotte ', 'What colour are you going to paint the living room?', 'I _____ probably choose something bright, like yellow.', 'will#may#can#might', 'will', 0),
(44, 38, 'Victor', 'Simon', 'I’d love to go back in history to see how people lived hundreds of years ago.', 'Me too! If I _____ choose, I’d probably travel to ancient Rome.', 'can#will#could #would', 'could ', 0),
(45, 39, 'Stephen', 'Yuuto', 'The concert was fantastic yesterday. You _____ have come.', 'I know. I wanted to, but I had to work late.', 'must#could#ought#should', 'should', 0),
(46, 40, 'Matthew', 'Katie', ' I don’t mind, I’ll let you decide.', 'OK, let’s go sightseeing, _____ we? ', 'should#shall#might#would', 'shall', 0),
(47, 41, 'Amanda', 'Andrew', 'It said on the news that the president also owns all the national newspapers.', 'That _____ be right! I don’t think that’s true.', 'must#can\'t#won\'t#would', 'can\'t', 0),
(48, 42, 'Assistant', 'Manager', ' That meeting was really difficult. What would you have done if you _____ in my position?', ' Oh, I think you managed it very well.', 'are#were#had been#would be', 'had been', 0),
(49, 43, 'Natalia', 'Katie', 'My new smartphone doesn’t seem to work.', 'Oh dear! Perhaps you should take it _____ and ask for a refund.', 'up#out#away#back', 'back', 0),
(50, 44, 'Chris', 'Alison', 'I wish I could be with our cousins …', ' Me too! By this time tomorrow they _____ on a Greek beach while we’re revising for our history test.', 'sunbathe#will sunbathe#will be sunbathing#will have sunbathed', 'will be sunbathing', 0),
(51, 45, 'Son', 'Mother', ' Are you OK, Mum? You don’t seem very relaxed.', ' I just wish I _____ an aisle seat so that I could get up and walk around more easily.', 'had chosen#have chosen#would choose#should choose', 'had chosen', 0),
(52, 46, 'Nicola', 'Victor', ' I love this picture, but won’t it cost a fortune?', 'No, it’s just a copy. The original, _____ is a portrait of the artist’s friend, sold for €4 million!', 'whose#which#whom#that', 'which', 0),
(53, 47, 'Laura ', 'Emily', 'I can’t believe how talented this artist was.', ' I know, it’s amazing. _____ he was almost 90 when he did them, his paintings are beautiful.', 'Since#Besides#Although#Therefore', 'Although', 0),
(54, 48, 'Andrea', 'Shan', ' I want to buy some new shoes for the winter.', 'Well, I _____ looking for a new pair of boots for weeks, but I can’t find anything I like.', 'am#was#had been#have been', 'have been', 0),
(55, 49, 'Client', 'Accountant', 'I don’t have much money – just enough to _____.', 'Well, let me suggest a way of helping you save more.', 'get by#pay off#do with#make up', 'get by', 0),
(56, 50, 'Pablo', 'Alison', 'In April next year I _____ here for ten years exactly.', 'Wow! It really doesn’t seem that long.', 'will live #will be living#am going to live#will have been living', 'will have been living', 0),
(57, 51, 'Student', 'Teacher', 'Is it true that it took Bell and Watson ages to invent the telephone?', 'Yes. When they finally succeeded, they _____ on it for about 30 years.', 'must work#had been working# have worked#would be working', 'had been working', 0),
(58, 52, 'Rachel', 'Natasha', 'This would be a lovely place to sit on a dry day.', 'Yes, I know. I just wish the rain _____.', 'would stop#has stopped#will have stopped#would be stopping', 'would stop', 0),
(59, 53, 'Student', 'Teacher', 'What’s today’s lesson going to be about?', ' Today we’re going to learn about a tribe _____ descendants live in Lima, the capital of Peru.', 'who#which#whose#whom', 'whose', 0),
(60, 54, 'Andrea', 'Katie', 'Did your town have a good market?', 'Yes. When I was young we _____ there every Saturday looking for bargains.', 'had gone#would go#were going#had been going', 'would go', 0),
(61, 55, 'Daughter', 'Mother', ' Joanna has been really supportive. I’m so lucky to have her as a friend.', 'Yes. Just think – if you hadn’t sat next to her in class at school, you _____ so close now.', 'won’t be# wouldn’t be#wouldn’t have been#aren’t', ' wouldn’t be', 0),
(62, 56, 'David', 'Nicola', 'Did you see the headline this evening?', 'Yes – the Prime Minister was _____ to resign today.', 'charged#argued#struggled#forced', 'forced', 0),
(63, 57, 'Student', 'Professor', 'I’m concerned about the chemical test results I’ve just had from the river.', 'It _____ be a good idea to check the acid levels as well then.', 'must#should#might#ought', 'might', 0),
(64, 58, 'Aamir', 'Laura', 'They’ve just announced that our train has been delayed.', 'That’s annoying. We _____ have rushed to get here after all.', 'needn\'t #could#should#mustn’t', 'needn\'t ', 0),
(65, 59, 'Liam', 'Cian', 'So, your Dad’s got a laptop!', 'Yes, I bought it for him last year – until then he  _____ a typewriter!', 'used#has used#has been using#had been using', 'had been using', 0),
(66, 60, 'Isabella', 'Safia', 'The flight is fully booked, so I won’t be able to go to Barbados next week.', 'If you _____ the ticket sooner, you’d have found a seat.', 'had booked#were booking#booked#would have booked', 'had booked', 0),
(67, 61, 'Receptionist', 'Customer', 'You _____taken a taxi to the hotel since you arrived so late.', 'It was OK, actually. There was a direct bus service from the airport.', ' will have#should have#might have#would have', 'should have', 0),
(68, 62, 'Sophie', 'Rafi', 'Have they finished interviewing for the manager’s position yet?', 'No, but they _____ all the candidates by next Friday.', 'won’t see#would see#haven’t seen#will have seen', 'will have seen', 0),
(69, 63, 'Athlete', 'Coach', '_____ hard I try, I can’t run any faster.', 'You’ve improved a lot. I wouldn’t worry about it.', 'Though#Whereas#However#Considering', 'However', 0),
(76, 64, 'Laura', 'Jeremy', 'That’s a really beautiful painting. The colours are so vivid.', ' Yes, it’s amazing to think it was lost for years and _____.', 'must be restored#had to be restored#has been restoring#would be restoring', 'had to be restored', 0),
(77, 65, 'Charlotte', 'Niall', 'I saw the photos from the film festival. Was that you with the actor from The Hobbit?', ' Yes, it was! _____ did I imagine I would ever actually meet him.', 'Not#Much#Hardly#Little', 'Little', 0),
(78, 66, 'Pauline', 'Chris', 'I hear you got soaked on the golf course this morning.', 'Yes. I wish I _____ listened to the weather forecast..', 'had#have#would have# should have', 'had', 0),
(79, 67, 'Laura', 'Ricardo', 'How was the meeting?', 'It finished late because Victor didn’t arrive until 5 pm. He told me he _____ been given the wrong directions', 'has#had#should have#would have', 'had', 0),
(80, 68, 'Andrew', 'Pedro', 'I picked up some of that cat food you wanted.', 'Oh good. Once _____ to these new cat biscuits, they won’t want to go back to the other stuff.', 'we’ve switched#we’ll be switching#we’ll have switched#we’ve been switched', 'we’ve switched', 0),
(81, 69, 'Antonia', 'Phillip', ' Has your son done well in his exams?', 'Yes. Only once _____ he wasn’t sufficiently prepared, but he can take that one again.', 'he found#he has found# did he find#could he find', ' did he find', 0),
(82, 70, 'Son', 'Mother', ' I had a bit of a stomach ache this morning.', ' Oh dear! Well, I did say you _____ eaten that chicken last night.', ' wouldn’t have#couldn’t have#mustn’t have#shouldn’t have', 'shouldn’t have', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'Administrator', '$2y$12$Ei9BB61SaTD9QvFI0xBSTOLnSaZjpmtJ/qq93lyjO0ffmYN838fl2', 'admin@gmail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1647860981, 1, 'Admin', 'Williams', 'ADMIN', '0'),
(3, '::1', '12183018', '$2y$10$TLtlU8WsPUBQgLWcL5n8SO9YoTd1jDktGIkIvm9Fk2ROI0yJQ.TlC', 'steeve@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550225511, 1639556039, 1, 'Steeve', 'Jackman', NULL, NULL),
(4, '::1', '12345678', '$2y$10$9CxUKgrB/0tlgOEIec1Fl.RMrLLcpJPGyFqqRh2gec.crgeVBWvym', 'jeremy@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550226286, 1550743600, 1, 'Jeremy', 'McCugh', NULL, NULL),
(8, '::1', '01234567', '$2y$10$5pAJAyB3XvrGEkvGak2QI.1pWqwK/S76r3Pf4ltQSGQzLMpw53Tvy', 'conrad@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1550289356, 1639555952, 1, 'Conrad', 'Wills', NULL, NULL),
(9, '::1', '01112004', '$2y$10$bjU.7aM7ZiVTqLh/SPwSeO0iMmDtX.HDlc22DUAiNjlVqbAtTGvA2', 'demostd@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1639498020, 1639843341, 1, 'Demo', 'Student', NULL, NULL),
(10, '::1', '24000011', '$2y$10$OcwaL9G18Z62JLSgAWBBW.wP1DS0m0eNa8yHGKf5P4xhu97VJJBzO', 'danny@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1639498362, 1639845648, 1, 'Danny', 'Test', NULL, NULL),
(11, '::1', '88888888', '$2y$10$Hzz3dl6vSQnrve6ZglW/1OFqX0FlUn0MtvnkRBQ0B9EaoKvNJGRsi', 'thomas@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1639670971, 1639929460, 1, 'Thomas', 'Thomas', NULL, NULL),
(12, '::1', '77777777', '$2y$10$OdDzP0IF2JwOLoOsBgFj3.GN.viBu2wmF5hQCk0PGbdxmeYgBsrtS', 'demolecturer@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1640061049, 1640158156, 1, 'Demo', 'Lecturer', NULL, NULL),
(13, '::1', '1111111111', '$2y$10$9pAK.Knop6pf8gcoth0D4OtjpK25IgHWeSPQjb5KJ.f/z5aASNS0e', 'teststudent@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1640061112, 1647824086, 1, 'Test', 'Student', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 1, 1),
(5, 3, 3),
(6, 4, 2),
(10, 8, 2),
(11, 9, 3),
(12, 10, 2),
(13, 11, 2),
(14, 12, 2),
(15, 13, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_test`
--
ALTER TABLE `placement_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`),
  ADD UNIQUE KEY `uc_email` (`email`) USING BTREE;

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `placement_test`
--
ALTER TABLE `placement_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
