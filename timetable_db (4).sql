-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2025 at 06:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'yourpassword');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batchID` int(11) NOT NULL,
  `degree_Program` varchar(100) DEFAULT NULL,
  `batchYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batchID`, `degree_Program`, `batchYear`) VALUES
(21, 'BSCS', 2025),
(22, 'BE', 2024),
(23, 'BSDS', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `credits` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courseName`, `credits`, `description`) VALUES
(2, 'data', 2, 'gg'),
(3, 'Datastructures', 7, 'jj'),
(4, 'Datastructures', 66, '66'),
(5, 'Software Engineering', 3, 'engineering'),
(6, 'Datastructures', 0, 'mjb'),
(7, 'Datastructures', 4, 'h\r\n'),
(8, 'Datastructures', 2, 'yjy'),
(9, 'DBMS', NULL, NULL),
(10, 'Programming Fundamentals', 3, 'about python'),
(11, 'Datastructures', 2, 'All abou data'),
(12, 'Database', 2, 'data'),
(13, 'Software Engineering', 2, 'rrr'),
(14, 'Software Engineering', 2, 'www');

-- --------------------------------------------------------

--
-- Table structure for table `department_timetable`
--

CREATE TABLE `department_timetable` (
  `courseID` varchar(10) NOT NULL,
  `courseName` varchar(100) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `instructor` varchar(100) DEFAULT NULL,
  `schedule` varchar(100) DEFAULT NULL,
  `roomNumber` varchar(50) DEFAULT NULL,
  `enrolledStudents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_timetable`
--

INSERT INTO `department_timetable` (`courseID`, `courseName`, `credits`, `instructor`, `schedule`, `roomNumber`, `enrolledStudents`) VALUES
('Css1021', 'data', 2, 'Miss Anum', 'Mon/Wed 9:00–10:30 AM', 'B14', 100);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `block` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `capacity`, `block`) VALUES
(1, 200, 'b12'),
(2, 23, 'B'),
(3, 200, 'd'),
(4, 50, 'A'),
(5, 890, 'b17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sessionID` int(11) NOT NULL,
  `sessionYear` varchar(20) NOT NULL,
  `semester` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sessionID`, `sessionYear`, `semester`) VALUES
(18, '2025', 'Fall'),
(19, '2025', 'Spring');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherID` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherID`, `teacher_name`, `email`, `phone_number`, `department`) VALUES
(5, 'Miss Zehra', 'zehra@gmail.com', '034556', 'Comp Science and SE'),
(6, 'Sir Ali', 'alimurtaza@gmail.com', '034556', 'Comp Science and SE'),
(7, 'sara', 'ridathedeveloper@gmail.com', '034556', 'Comp Science and SE'),
(8, 'alia', 'admin@example.com', '034556', 'Comp Science and SE'),
(11, 'anum', 'admin@example.com', '034556', 'Comp Science and SE'),
(17, 'Miss Fizza', 'admin@example.com', '034556', 'Comp Science and SE'),
(19, 'Sir AZAM', 'zehra@gmail.com', '33', 'Comp Science and SE'),
(20, 'Rida', 'ridathedeveloper@gmail.com', '234', 'Comp Science and SE');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course_assignment`
--

CREATE TABLE `teacher_course_assignment` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_course_assignment`
--

INSERT INTO `teacher_course_assignment` (`id`, `teacher_id`, `course_id`, `batch_id`, `session_id`, `room_id`, `slot_id`) VALUES
(63, 17, 4, 21, 18, 2, 17),
(64, 19, 9, 22, 19, 5, 18),
(65, 5, 4, 21, 19, 3, 20),
(66, 5, 11, 21, 18, 3, 19),
(67, 6, 9, 21, 18, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `timeslot_id` int(11) DEFAULT NULL,
  `type` enum('Lab','Theory') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `teacher_id`, `course_id`, `department`, `room`, `day`, `timeslot_id`, `type`) VALUES
(1, 1, 1, 'Comp Science and SE', '00', 'Tuesday', 1, 'Theory'),
(2, 5, 1, 'Comp Science and SE', '00', 'Monday', 1, 'Theory'),
(3, 5, 1, 'Comp Science and SE', '00', 'Tuesday', 1, 'Theory'),
(4, 6, 1, 'Comp Science and SE', '999', 'Tuesday', 1, 'Theory');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `slot_id` int(11) NOT NULL,
  `slot_type` varchar(50) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`slot_id`, `slot_type`, `day`, `start_time`, `end_time`, `room_id`) VALUES
(17, 'Theory', 'Monday', '09:00:00', '10:00:00', 2),
(18, 'Lab', 'Tuesday', '09:00:00', '12:00:00', 5),
(19, 'Lab', 'Friday', '09:00:00', '00:00:00', 3),
(20, 'Lab', 'Friday', '09:00:00', '12:00:00', 3),
(21, 'Theory', 'Thursday', '11:00:00', '12:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batchID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_timetable`
--
ALTER TABLE `department_timetable`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indexes for table `teacher_course_assignment`
--
ALTER TABLE `teacher_course_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `fk_room` (`room_id`),
  ADD KEY `fk_slot` (`slot_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`slot_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher_course_assignment`
--
ALTER TABLE `teacher_course_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_course_assignment`
--
ALTER TABLE `teacher_course_assignment`
  ADD CONSTRAINT `fk_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `fk_slot` FOREIGN KEY (`slot_id`) REFERENCES `time_slots` (`slot_id`),
  ADD CONSTRAINT `teacher_course_assignment_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacherID`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_course_assignment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_course_assignment_ibfk_3` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batchID`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_course_assignment_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`sessionID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
