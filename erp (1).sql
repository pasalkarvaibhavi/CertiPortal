-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 03:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_details`
--

CREATE TABLE `academic_details` (
  `id` bigint(20) NOT NULL,
  `admission_year` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `previous_college_name` varchar(255) DEFAULT NULL,
  `previous_course_name` varchar(255) DEFAULT NULL,
  `previous_passing_year` varchar(255) DEFAULT NULL,
  `previous_year_percentage` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_details`
--

INSERT INTO `academic_details` (`id`, `admission_year`, `course`, `department`, `full_name`, `medium`, `previous_college_name`, `previous_course_name`, `previous_passing_year`, `previous_year_percentage`, `section`, `session`, `student_id`) VALUES
(1, '2025', 'M.Sc. Computer Science', 'Computer Science & Applications', 'MALI GANESH RAJENDRA', 'English', 'HPT ARTS AND RYK SCIENCE COLLEGE NASHIK	', 'B.Sc. Computer Science', '2024', '97.36', 'A', '2025-2026', '20250001'),
(2, '2025', 'B.Sc. Environmental Science', 'Environmental Science', 'Dhavale Ajinkya Balasaheb', 'English', 'Modern College Of Arts Science And Commerce Pune 411005.', 'B.A. Fine Arts', '2024', '98.77', 'A', '2025-2026', '20250003'),
(3, '2025', 'B.A. History', 'History', 'Pasalkar Vaibhavi Sanjay', 'English', 'Modern College Of Arts Science And Commerce Pune 411005.', 'B.Sc. Botany', '2024', '85.60', 'A', '2025-2026', '20250002');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `password`, `role`, `username`) VALUES
(1, 'account', 'account', 'account@gmail.com'),
(2, 'library', 'library', 'library@gmail.com'),
(3, 'scholarship', 'scholarship', 'scholarship@gmail.com'),
(4, 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `admission_id` bigint(20) NOT NULL,
  `aadhar_no` varchar(255) NOT NULL,
  `admission_generated_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`admission_id`, `aadhar_no`, `admission_generated_id`, `email`, `first_name`, `flag`, `last_name`, `middle_name`, `password`, `start_date`) VALUES
(1, '789478941236', '20250001', 'ganeshmali.fc@gmail.com', 'Ganesh', 0, 'Mali', 'Rajendra', 'student', '02-04-2025'),
(2, '456123788945', '20250002', 'vaibhavipasalkar2004@gmail.com', 'Vaibhavi', 0, 'Pasalkar', 'Sanjay', 'student', '02-04-2025'),
(3, '123412341234', '20250003', 'ajinkyadhavle@gmail.com', 'Ajinkya', 0, 'Dhavale', 'Balasaheb', 'student', '02-04-2025'),
(4, '145263546557', '20250004', 'aman@gmail.com', 'Aman ', 0, 'Jadhav', 'Sachin', 'student', '11-04-2025'),
(5, '766464354655', '20250005', 'komal1232@gmail.com', 'Komal', 0, 'Joshi', 'Deepak', 'student', '11-04-2025'),
(6, '459478941236', '20250006', 'sanjaypaslkar2004@gmail.com', 'Sanjay', 0, 'Pasalkar', 'Narayan', 'student', '11-04-2025'),
(7, '766464354656', '20250007', 'isha123@gmail.com', 'Isha', 0, 'Deshmukh', 'Ram', 'student', '11-04-2025'),
(8, '145263546545', '20250008', 'neha23@gmail.com', 'Neha', 0, 'More', 'Vikas', 'student', '11-04-2025');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL,
  `admin_approval` int(11) DEFAULT NULL,
  `application_date` datetime(6) DEFAULT NULL,
  `certificate_reason` varchar(255) DEFAULT NULL,
  `certificate_type` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `fee_reciept_path` varchar(255) DEFAULT NULL,
  `from_date` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `identity_proof_path` varchar(255) DEFAULT NULL,
  `issue_date` datetime(6) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `teacher_verified_date` varchar(255) DEFAULT NULL,
  `to_date` varchar(255) DEFAULT NULL,
  `verification_letter_path` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `admin_approval`, `application_date`, `certificate_reason`, `certificate_type`, `course`, `department`, `division`, `fee_reciept_path`, `from_date`, `full_name`, `gender`, `identity_proof_path`, `issue_date`, `student_id`, `teacher_name`, `teacher_verified_date`, `to_date`, `verification_letter_path`, `year`) VALUES
(1, 2, '2025-04-10 12:28:47.000000', 'Scholership', 'Attendance Certificate', 'M.Sc. Computer Science', 'Computer Science & Applications', 'A', '1744268327299_images.jpg', '2024-10-01', 'Mali Ganesh Rajendra', 'Male', '1744268327287_images.jpg', NULL, '20250001', 'Mr. Ujwala Rane', '2025-04-10', '2025-04-10', '1744268327303_Screenshot 2025-03-19 233537.jpg', '2024-2025'),
(2, 1, '2025-04-11 16:59:54.000000', 'Internship', 'Attendance Certificate', 'B.Sc. Environmental Science', 'Environmental Science', 'A', '1744370994425_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '2025-01-01', 'Dhavle Ajinkya Balasaheb', 'Male', '1744370994421_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', NULL, '20250003', 'Mr. Uma Madje', '2025-04-08', '2025-04-01', '1744370994426_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '2024-2025'),
(3, 1, '2025-04-11 17:59:34.000000', 'Job', 'Attendance Certificate', 'B.A. History', 'History', 'A', '1744374574526_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '2025-01-12', 'Pasalkar Vaibhavi Sanjay', 'Female', '1744374574523_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', NULL, '20250002', 'Mrs Smita Bapat', '2025-04-12', '2025-04-08', '1744374574527_sun.png', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `bonafide`
--

CREATE TABLE `bonafide` (
  `id` bigint(20) NOT NULL,
  `admin_approval` int(11) DEFAULT NULL,
  `application_date` datetime(6) DEFAULT NULL,
  `birth_proof_path` varchar(255) DEFAULT NULL,
  `certificate_reason` varchar(255) DEFAULT NULL,
  `certificate_type` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `dob_in_words` varchar(255) DEFAULT NULL,
  `fee_receipt_path` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `identity_proof_path` varchar(255) DEFAULT NULL,
  `local_address` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `total_fees` double DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `issue_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bonafide`
--

INSERT INTO `bonafide` (`id`, `admin_approval`, `application_date`, `birth_proof_path`, `certificate_reason`, `certificate_type`, `course`, `department`, `division`, `dob`, `dob_in_words`, `fee_receipt_path`, `full_name`, `gender`, `identity_proof_path`, `local_address`, `payment_id`, `payment_status`, `permanent_address`, `student_id`, `total_fees`, `year`, `issue_date`) VALUES
(1, 1, '2025-04-10 12:17:06.000000', '1744267626508_Screenshot 2025-02-28 233901.jpg', 'Scholership ', 'Bonafide Certificate', 'M.Sc. Computer Science', 'Computer Science & Applications', 'A', '2003-09-07', 'SEVENTH SEPTEMBER TWO THOUSAND THREE', '1744267626512_Screenshot 2025-02-28 233901.jpg', 'Mali Ganesh Rajendra', 'Male', '1744267626476_Screenshot 2025-02-28 233901.jpg', 'Kohinoor estatenear wakdewadi bus stand shivaji nagar pune', 'pay_QHGCWqzBVrENBc', 'Paid', 'Yudhishtir society pandav nagari indira nagar nashik ', '20250001', 50, '2024-2025', NULL),
(2, 1, '2025-04-11 16:58:17.000000', '1744370897813_Screenshot 2025-02-28 233901.jpg', 'Bus Pass Application', 'Bonafide Certificate', 'B.Sc. Environmental Science', 'Environmental Science', 'A', '2003-04-22', 'TWENTY SECOND APRIL TWO THOUSAND THREE', '1744370897815_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'Dhavale Ajinkya Balasaheb', 'Male', '1744370897811_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'Ground floor 1, neelesh apartment, 1074, chatuhshrungi rd, model colony, shivajinagar, pune, maharashtra 411016, india', 'pay_QHjYjYoIY3tI8d', 'Paid', 'Ground floor 1, neelesh apartment, 1074, chatuhshrungi rd, model colony, shivajinagar, pune, maharashtra 411016, india', '20250003', 50, '2024-2025', '2025-04-11 18:03:08.000000'),
(3, 2, '2025-04-11 18:00:48.000000', '1744374648788_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'Scholership', 'Bonafide Certificate', 'B.A. History', 'History', 'A', '2004-01-15', 'FIFTEENTH JANUARY TWO THOUSAND FOUR', '1744374648789_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'Pasalkar Vaibhavi Sanjay', 'Female', '1744374648786_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'Sr no 116/5 near shubhatej mangal karyalay pashan ', 'pay_QHkclUgZbvQYVp', 'Paid', 'Sr no 116/5 near shubhatej mangal karyalay pashan ', '20250002', 50, '2024-2025', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` bigint(20) NOT NULL,
  `abc_number` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `caste` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `family_income` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `handicap` varchar(255) DEFAULT NULL,
  `handicap_percentage` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `mother_tongue` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `parent_mobile` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `sub_caste` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `abc_number`, `blood_group`, `caste`, `dob`, `family_income`, `father_name`, `father_occupation`, `gender`, `handicap`, `handicap_percentage`, `marital_status`, `mobile`, `mother_name`, `mother_occupation`, `mother_tongue`, `nationality`, `occupation`, `pan_number`, `parent_mobile`, `place_of_birth`, `religion`, `student_id`, `sub_caste`) VALUES
(1, '454565123456', 'O+', 'OBC', '2003-09-07', '30000', 'Rajendra', 'None', 'Male', 'No', NULL, 'Single', '9021817579', 'Bebabai', 'House Wife', 'Marathi', 'Indian', 'Student', 'GJHGJ6458N', '8208302143', 'Karanji Bk', 'Hindu', '20250001', 'Ful Mali'),
(2, '454565456759', 'A+', 'OBC', '2003-04-22', '100000', 'Balasaheb', 'Farmer ', 'Male', 'No', NULL, 'Single', '8978945678', 'Sarita', 'House Wife', 'Marathi', 'Indian', 'Student ', 'GJHGJ6458O', '', 'Aundh', 'Hindu', '20250003', 'Kunbi'),
(3, '454565456756', 'O+', 'OPEN', '2004-01-15', '450000', 'Sanjay', 'Worker', 'Female', 'No', NULL, 'Single', '7972291891', 'Ujwala', 'House Wife', 'Marathi', 'Indian', 'Student ', 'GKHGJ6458N', '', 'Aundh', 'Hindu', '20250002', 'Maratha');

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE `student_address` (
  `id` bigint(20) NOT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `permanent_city` varchar(255) DEFAULT NULL,
  `permanent_country` varchar(255) DEFAULT NULL,
  `permanent_district` varchar(255) DEFAULT NULL,
  `permanent_pincode` varchar(255) DEFAULT NULL,
  `permanent_state` varchar(255) DEFAULT NULL,
  `permanent_taluka` varchar(255) DEFAULT NULL,
  `same_as_permanent` bit(1) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `temporary_address` varchar(255) DEFAULT NULL,
  `temporary_city` varchar(255) DEFAULT NULL,
  `temporary_country` varchar(255) DEFAULT NULL,
  `temporary_district` varchar(255) DEFAULT NULL,
  `temporary_pincode` varchar(255) DEFAULT NULL,
  `temporary_state` varchar(255) DEFAULT NULL,
  `temporary_taluka` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`id`, `permanent_address`, `permanent_city`, `permanent_country`, `permanent_district`, `permanent_pincode`, `permanent_state`, `permanent_taluka`, `same_as_permanent`, `student_id`, `temporary_address`, `temporary_city`, `temporary_country`, `temporary_district`, `temporary_pincode`, `temporary_state`, `temporary_taluka`) VALUES
(1, 'Yudhishtir society pandav nagari indira nagar nashik ', 'Nashik', 'India', 'Nashik', '422009', 'Maharashtra', 'Nashik', b'0', '20250001', 'Kohinoor estatenear wakdewadi bus stand shivaji nagar pune', 'Pune', 'India', 'Pune', '411005', 'Maharashtra', 'Pune'),
(2, 'Ground floor 1, neelesh apartment, 1074, chatuhshrungi rd, model colony, shivajinagar, pune, maharashtra 411016, india', 'Pune', 'India', 'Pune', '411015', 'Maharashtra', 'Haveli', b'1', '20250003', 'Ground floor 1, neelesh apartment, 1074, chatuhshrungi rd, model colony, shivajinagar, pune, maharashtra 411016, india', 'Pune', 'India', 'Pune', '411015', 'Maharashtra', 'Haveli'),
(3, 'Sr no 116/5 near shubhatej mangal karyalay pashan ', 'Pune', 'India', 'Pune', '411021', 'Maharashtra', 'Haveli', b'1', '20250002', 'Sr no 116/5 near shubhatej mangal karyalay pashan ', 'Pune', 'India', 'Pune', '411021', 'Maharashtra', 'Haveli');

-- --------------------------------------------------------

--
-- Table structure for table `student_document`
--

CREATE TABLE `student_document` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_document`
--

INSERT INTO `student_document` (`id`, `photo`, `sign`, `student_id`) VALUES
(1, '1743583439728_WhatsApp Image 2025-04-02 at 2.01.42 PM.jpeg', '1743583439742_Signature.jpg', '20250001'),
(2, '1744427015774_Photo New 2 (1).jpg', '1744427015795_WhatsApp Image 2025-04-12 at 8.21.23 AM.jpeg', '20250003'),
(3, '1744374484774_sun.png', '1744374484777_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '20250002');

-- --------------------------------------------------------

--
-- Table structure for table `tc`
--

CREATE TABLE `tc` (
  `id` bigint(20) NOT NULL,
  `account_approval` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `admin_approval` int(11) DEFAULT NULL,
  `new_admission_type` varchar(255) DEFAULT NULL,
  `alternate_no` varchar(255) DEFAULT NULL,
  `application_date` datetime(6) DEFAULT NULL,
  `application_fee` double DEFAULT NULL,
  `birth_date_proof` varchar(255) DEFAULT NULL,
  `caste_category` varchar(255) DEFAULT NULL,
  `certificate_reason` varchar(255) DEFAULT NULL,
  `certificate_type` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `dob_in_words` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `identity_proof` varchar(255) DEFAULT NULL,
  `last_cgpa` varchar(255) DEFAULT NULL,
  `last_class` varchar(255) DEFAULT NULL,
  `last_exam_month` varchar(255) DEFAULT NULL,
  `last_exam_name` varchar(255) DEFAULT NULL,
  `last_exam_year` varchar(255) DEFAULT NULL,
  `last_grade` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `last_seat_no` varchar(255) DEFAULT NULL,
  `last_sem` varchar(255) DEFAULT NULL,
  `latest_marksheet` varchar(255) DEFAULT NULL,
  `library_approval` int(11) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `new_course` varchar(255) DEFAULT NULL,
  `passing_certificate` varchar(255) DEFAULT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `processing_fee` double DEFAULT NULL,
  `proof_of_admission` varchar(255) DEFAULT NULL,
  `scholarship_approval` int(11) DEFAULT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `tc_type` varchar(255) DEFAULT NULL,
  `total_fee` double DEFAULT NULL,
  `university_name` varchar(255) DEFAULT NULL,
  `issue_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tc`
--

INSERT INTO `tc` (`id`, `account_approval`, `address`, `admin_approval`, `new_admission_type`, `alternate_no`, `application_date`, `application_fee`, `birth_date_proof`, `caste_category`, `certificate_reason`, `certificate_type`, `college_name`, `contact_no`, `course`, `department`, `dob`, `dob_in_words`, `email_id`, `first_name`, `gender`, `identity_proof`, `last_cgpa`, `last_class`, `last_exam_month`, `last_exam_name`, `last_exam_year`, `last_grade`, `last_name`, `last_result`, `last_seat_no`, `last_sem`, `latest_marksheet`, `library_approval`, `middle_name`, `new_course`, `passing_certificate`, `payment_date`, `payment_id`, `payment_status`, `processing_fee`, `proof_of_admission`, `scholarship_approval`, `student_id`, `tc_type`, `total_fee`, `university_name`, `issue_date`) VALUES
(1, 1, 'Yudhishtir society pandav nagari indira nagar nashik ', 1, 'Maharashtra Student', '', '2025-04-11 15:53:30.000000', 100, '1744367010305_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'OBC', 'For Future Education', 'Transference Certificate', 'Symboisis College Pune ', '9021817579', 'M.Sc. Computer Science', 'Computer Science & Applications', '2003-09-07', 'SEVENTH SEPTEMBER TWO THOUSAND THREE', 'ganeshmali.fc@gmail.com', 'Ganesh', 'Male', '1744367010307_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '9.8', 'M.Sc. II', 'April', 'M.Sc. II Computer Science', '2024', 'O', 'Mali', 'Passed', '246209', 'SEM IV', '1744367010286_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 1, 'Rajendra', 'Ph.D. Computer Science', '1744367010298_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '2025-04-11 15:53:30.000000', 'pay_QHiS177HS2QEr7', 'Paid', 50, '1744367010304_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 1, '20250001', 'Original', 150, 'Savitribai Phule Pune University', NULL),
(2, 1, 'Ground floor 1, neelesh apartment, 1074, chatuhshrungi rd, model colony, shivajinagar, pune, maharashtra 411016, india', 1, 'Maharashtra Student', '', '2025-04-11 17:02:47.000000', 200, '1744371167181_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 'OBC', 'Change School', 'Migration Certificate', 'Symboisis College Pune ', '8978945678', 'B.Sc. Environmental Science', 'Environmental Science', '2003-04-22', 'TWENTY SECOND APRIL TWO THOUSAND THREE', 'ajinkyadhavle@gmail.com', 'Ajinkya', 'Male', '1744371167185_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '9.8', 'TY', 'April', 'TY B.Sc. Environmental Science', '2025', 'O', 'Dhavle', 'Passed', '246202', 'SEM VI', '1744371167176_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 1, 'Balasaheb', 'M.Sc. Environmental Science', '1744371167179_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', '2025-04-11 17:02:47.000000', 'pay_QHjdUZmnoLu1z8', 'Paid', 50, '1744371167180_WhatsApp Image 2024-11-24 at 2.49.08 PM.jpeg', 1, '20250003', 'Original', 250, 'Savitribai Phule Pune University', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_details`
--
ALTER TABLE `academic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `UKmi8vkhus4xbdbqcac2jm4spvd` (`username`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`admission_id`),
  ADD UNIQUE KEY `UKfpxhfssqbp21wwriuwi56cii1` (`aadhar_no`),
  ADD UNIQUE KEY `UKe64i7gtedoglh6cwagkxsweqh` (`admission_generated_id`),
  ADD UNIQUE KEY `UKkvoqktp8nnfqucx1ykwqmo9sm` (`email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonafide`
--
ALTER TABLE `bonafide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_address`
--
ALTER TABLE `student_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_document`
--
ALTER TABLE `student_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc`
--
ALTER TABLE `tc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_details`
--
ALTER TABLE `academic_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `admission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bonafide`
--
ALTER TABLE `bonafide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_address`
--
ALTER TABLE `student_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_document`
--
ALTER TABLE `student_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tc`
--
ALTER TABLE `tc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
