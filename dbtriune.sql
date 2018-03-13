/*
Navicat MySQL Data Transfer

Source Server         : TUADB
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : dbtriune

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-03-13 07:53:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for triune_citizenship
-- ----------------------------
DROP TABLE IF EXISTS `triune_citizenship`;
CREATE TABLE `triune_citizenship` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CitizenshipID` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Citizenship` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_citizenship
-- ----------------------------
INSERT INTO `triune_citizenship` VALUES ('1', '1', 'Russian');
INSERT INTO `triune_citizenship` VALUES ('2', '2', 'American');

-- ----------------------------
-- Table structure for triune_code_description
-- ----------------------------
DROP TABLE IF EXISTS `triune_code_description`;
CREATE TABLE `triune_code_description` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `TableName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_code_description
-- ----------------------------
INSERT INTO `triune_code_description` VALUES ('1', 'EGIS', 'ELECTRONIC GRADING SYSTEM', 'triune_privilege', 'rdlagdaan', '2017-10-28 07:41:48');
INSERT INTO `triune_code_description` VALUES ('2', 'TAIMS', 'TRINITY ACADEMIC INFORMATION MANAGEMENT SYSTEM', 'triune_privilege', 'rdlagdaan', '2017-10-28 09:20:26');
INSERT INTO `triune_code_description` VALUES ('3', 'ADMIN', 'Admin', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:10:55');
INSERT INTO `triune_code_description` VALUES ('4', 'REGISTRAR', 'Registrar', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:11:17');
INSERT INTO `triune_code_description` VALUES ('5', 'FINANCE', 'Finance', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:11:44');
INSERT INTO `triune_code_description` VALUES ('6', 'GENSERVICE', 'General Services', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:12:06');
INSERT INTO `triune_code_description` VALUES ('7', 'STUDENTS', 'Students', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:12:29');
INSERT INTO `triune_code_description` VALUES ('8', 'HR', 'HR', 'triune_privilege', 'rdlagdaan', '2017-11-01 15:12:47');
INSERT INTO `triune_code_description` VALUES ('9', 'TUC', 'TRIUNE USER CREDENTIALS', 'triune_privilege', 'rdlagdaan', '2017-11-03 06:47:50');
INSERT INTO `triune_code_description` VALUES ('10', 'COURSES', 'Courses', 'triune_privilege', 'rdlagdaan', '2017-12-02 16:46:16');
INSERT INTO `triune_code_description` VALUES ('11', 'LESSONS', 'Lessons', 'triune_privilege', 'rdlagdaan', '2017-12-02 16:46:23');

-- ----------------------------
-- Table structure for triune_college_course
-- ----------------------------
DROP TABLE IF EXISTS `triune_college_course`;
CREATE TABLE `triune_college_course` (
  `ID` smallint(2) NOT NULL AUTO_INCREMENT,
  `CourseGroup` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `CourseCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Department` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `GroupID` tinyint(1) NOT NULL,
  `CourseDescription` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CourseAbbreviation` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ActiveFlag` tinyint(1) NOT NULL,
  `TimeStamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UserID` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_college_course
-- ----------------------------
INSERT INTO `triune_college_course` VALUES ('1', 'CAS', '3022', 'C', '1', 'BACHELOR OF ARTS IN COMMUNICATION', 'COMMUNICATION (BA)', '1', '2017-09-25 16:46:16', 'rdlagdaan');
INSERT INTO `triune_college_course` VALUES ('2', 'CAS', '3008', 'C', '1', 'BACHELOR OF SCIENCE IN BIOLOGY', 'BIOLOGY (BS)', '1', '2017-09-25 00:00:00', 'rdlagdaan');
INSERT INTO `triune_college_course` VALUES ('3', 'CBA', '3101', 'C', '2', 'BACHELOR OF SCIENCE IN ACCOUNTANCY', 'ACCOUNTANCY (BS)', '1', '2017-09-25 00:00:00', 'rdlagdaan');
INSERT INTO `triune_college_course` VALUES ('4', 'CNU', '3501', 'N', '6', 'BACHELOR OF SCIENCE IN NURSING', 'NURSING (BS)', '1', '2017-09-26 14:20:42', 'rdlagdaan');

-- ----------------------------
-- Table structure for triune_employees
-- ----------------------------
DROP TABLE IF EXISTS `triune_employees`;
CREATE TABLE `triune_employees` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmployeeNumber` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeLName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeFName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeMName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`,`EmployeeNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_employees
-- ----------------------------

-- ----------------------------
-- Table structure for triune_personal_data
-- ----------------------------
DROP TABLE IF EXISTS `triune_personal_data`;
CREATE TABLE `triune_personal_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middleName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `studentNumber` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `createdBy` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeStamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_personal_data
-- ----------------------------
INSERT INTO `triune_personal_data` VALUES ('1', 'Sy', 'Jose', 'Tuazon', '2009300100', '1979-05-05', 'rdlagdaan', '2018-03-11 13:21:01');
INSERT INTO `triune_personal_data` VALUES ('2', 'Robles', 'Vinzent', 'Cruz', '2009300200', '1999-05-05', 'rdlagdaan', '2018-03-12 12:43:09');

-- ----------------------------
-- Table structure for triune_privilege
-- ----------------------------
DROP TABLE IF EXISTS `triune_privilege`;
CREATE TABLE `triune_privilege` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OrgCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BranchOfficeCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CategorySystemID` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `GroupSystemID` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `SourceSystemID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DataElementID` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ElementValueID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_privilege
-- ----------------------------
INSERT INTO `triune_privilege` VALUES ('1', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'DefaultGradePeriod', 'rdlagdaan', '2017-10-28 08:21:17');
INSERT INTO `triune_privilege` VALUES ('2', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'CardSetup', 'rdlagdaan', '2017-10-28 08:22:16');
INSERT INTO `triune_privilege` VALUES ('3', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'FacultyAssignment', 'rdlagdaan', '2017-10-28 08:25:53');
INSERT INTO `triune_privilege` VALUES ('4', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'DayOfSchool', 'rdlagdaan', '2017-10-28 08:27:05');
INSERT INTO `triune_privilege` VALUES ('5', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'AdviserAssignment', 'rdlagdaan', '2017-10-28 08:27:08');
INSERT INTO `triune_privilege` VALUES ('6', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'OfficerSetup', 'rdlagdaan', '2017-10-28 08:28:18');
INSERT INTO `triune_privilege` VALUES ('7', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'GradePeriod', 'rdlagdaan', '2017-10-28 08:28:45');
INSERT INTO `triune_privilege` VALUES ('8', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'TraitSetup', 'rdlagdaan', '2017-10-28 08:29:12');
INSERT INTO `triune_privilege` VALUES ('9', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-MDL', 'GradeAreaSetup', 'rdlagdaan', '2017-10-28 08:29:51');
INSERT INTO `triune_privilege` VALUES ('10', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSeup-MNU', 'TransferLetter', 'rdlagdaan', '2017-10-28 09:54:38');
INSERT INTO `triune_privilege` VALUES ('11', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSeup-MNU', 'LetterToParents', 'rdlagdaan', '2017-10-28 09:54:56');
INSERT INTO `triune_privilege` VALUES ('12', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSeup-MNU', 'SubjectSequence', 'rdlagdaan', '2017-10-28 09:55:08');
INSERT INTO `triune_privilege` VALUES ('13', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'CLASSSTANDINGENCODING-MDL', 'Traits', 'rdlagdaan', '2017-10-28 08:38:52');
INSERT INTO `triune_privilege` VALUES ('14', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'CLASSSTANDINGENCODING-MDL', 'Attendance', 'rdlagdaan', '2017-10-28 08:39:14');
INSERT INTO `triune_privilege` VALUES ('15', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'CLASSSTANDINGENCODING-MDL', 'RawScores', 'rdlagdaan', '2017-10-28 08:39:46');
INSERT INTO `triune_privilege` VALUES ('16', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-MDL', 'Curriculum', 'rdlagdaan', '2017-10-28 08:51:24');
INSERT INTO `triune_privilege` VALUES ('17', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-Curriculum-MNU', 'CurriculumAlignment', 'rdlagdaan', '2017-10-28 09:55:22');
INSERT INTO `triune_privilege` VALUES ('18', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-MDL', 'Faculty', 'rdlagdaan', '2017-10-28 08:58:20');
INSERT INTO `triune_privilege` VALUES ('19', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-Faculty-MNU', 'FacultyList', 'rdlagdaan', '2017-10-28 09:55:31');
INSERT INTO `triune_privilege` VALUES ('20', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-MDL', 'Promotion', 'rdlagdaan', '2017-10-28 09:10:34');
INSERT INTO `triune_privilege` VALUES ('21', 'TUA', 'ERODSR', 'INFORMATION', 'FINANCE', 'TAIMS', 'ACCOUNTING-MDL', 'ReferenceSetup', 'rdlagdaan', '2017-10-28 09:14:20');
INSERT INTO `triune_privilege` VALUES ('22', 'TUA', 'ERODSR', 'INFORMATION', 'FINANCE', 'TAIMS', 'ACCOUNTING-MDL', 'StudentAccounts', 'rdlagdaan', '2017-10-28 10:42:29');
INSERT INTO `triune_privilege` VALUES ('23', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'SHGrade11', 'rdlagdaan', '2017-10-28 09:55:42');
INSERT INTO `triune_privilege` VALUES ('24', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'SHGrade12', 'rdlagdaan', '2017-10-28 09:55:45');
INSERT INTO `triune_privilege` VALUES ('25', 'TUA', 'ERODSR', 'INFORMATION', 'FINANCE', 'TAIMS', 'ACCOUNTING-StudentAccounts-MNU', 'AccountConfiguration', 'rdlagdaan', '2017-10-28 10:43:07');
INSERT INTO `triune_privilege` VALUES ('26', 'TUA', 'ERODSR', 'INFORMATION', 'ADMIN', '', null, null, 'rdlagdaan', '2017-11-01 15:09:11');
INSERT INTO `triune_privilege` VALUES ('27', 'TUA', 'ERODSR', 'INFORMATION', 'HR', '', null, null, 'rdlagdaan', '2017-11-01 15:09:28');
INSERT INTO `triune_privilege` VALUES ('28', 'TUA', 'ERODSR', 'INFORMATION', 'GENSERVICE', '', null, null, 'rdlagdaan', '2017-11-01 15:09:43');
INSERT INTO `triune_privilege` VALUES ('29', 'TUA', 'ERODSR', 'INFORMATION', 'STUDENTS', '', null, null, 'rdlagdaan', '2017-11-01 19:40:49');
INSERT INTO `triune_privilege` VALUES ('30', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-MDL', 'Grade', 'rdlagdaan', '2017-11-01 10:02:47');
INSERT INTO `triune_privilege` VALUES ('31', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'BySection', 'rdlagdaan', '2017-11-01 10:07:55');
INSERT INTO `triune_privilege` VALUES ('32', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'ByStudent', 'rdlagdaan', '2017-11-01 10:07:55');
INSERT INTO `triune_privilege` VALUES ('33', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'Ranking', 'rdlagdaan', '2017-11-01 10:07:55');
INSERT INTO `triune_privilege` VALUES ('34', 'TUA', 'ERODSR', 'ADMINISTRATION', 'ADMIN', 'TUC', 'ACCOUNTS-MDL', 'Users', 'rdlagdaan', '2017-11-03 06:56:11');
INSERT INTO `triune_privilege` VALUES ('35', 'TUA', 'ERODSR', 'ADMINISTRATION', 'ADMIN', 'TUC', 'ACCOUNTS-Users-MNU', 'UserList', 'rdlagdaan', '2017-11-03 06:56:34');
INSERT INTO `triune_privilege` VALUES ('36', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'TAIMS', 'OAR-MDL', 'PersonalProfile', 'rdlagdaan', '2017-11-28 10:19:13');
INSERT INTO `triune_privilege` VALUES ('37', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-PersonalProfile-MNU', 'StudentProfile', 'rdlagdaan', '2017-11-28 10:20:23');
INSERT INTO `triune_privilege` VALUES ('38', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-MDL', 'Beginner', 'rdlagdaan', '2017-12-02 16:45:44');
INSERT INTO `triune_privilege` VALUES ('39', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'HelloWorld', 'rdlagdaan', '2017-12-02 16:46:01');
INSERT INTO `triune_privilege` VALUES ('40', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'TemplateSyntaxProperties', 'rdlagdaan', '2017-12-18 13:39:57');
INSERT INTO `triune_privilege` VALUES ('41', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'SearchBox', 'rdlagdaan', '2017-12-18 13:40:20');
INSERT INTO `triune_privilege` VALUES ('42', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'ColorPicker', 'rdlagdaan', '2017-12-19 11:47:51');
INSERT INTO `triune_privilege` VALUES ('43', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'Collapsible', 'rdlagdaan', '2017-12-19 15:25:51');

-- ----------------------------
-- Table structure for triune_token
-- ----------------------------
DROP TABLE IF EXISTS `triune_token`;
CREATE TABLE `triune_token` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `timeStamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_token
-- ----------------------------
INSERT INTO `triune_token` VALUES ('9', '0fead74c6bdfc4502859503937a19e', '15', '2018-03-12 00:00:00');
INSERT INTO `triune_token` VALUES ('10', 'c24b97ba68161c7bfe3409e2ab9d7e', '16', '2018-03-12 00:00:00');
INSERT INTO `triune_token` VALUES ('11', 'ef91288c4f5e98c4bd35bf7bafcb72', null, '2018-03-12 00:00:00');
INSERT INTO `triune_token` VALUES ('12', '21a208bc1961e51067532f4e25ff8a', null, '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('13', 'e837c6ac6be9745271722f31ee4edc', '19', '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('14', '434fd14e2352c9ce566caf316f4ae2', '16', '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('15', '6518ad629bb327f8308a5f5e05a89a', '16', '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('16', 'e2a5f3915b5dcd257f352a9162d2d9', '16', '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('17', '388ebd40897e70e8cc1f592fecadad', '16', '2018-03-13 00:00:00');
INSERT INTO `triune_token` VALUES ('18', '8ad3531234cea0e25eee2f3f6e898c', '16', '2018-03-13 00:00:00');

-- ----------------------------
-- Table structure for triune_user
-- ----------------------------
DROP TABLE IF EXISTS `triune_user`;
CREATE TABLE `triune_user` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailAddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activationCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgottenPasswordCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgottenPasswordTime` time DEFAULT NULL,
  `rememberCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `createdBy` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `role` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `firstNameUser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastNameUser` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `companyNameUser` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timeStamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_user
-- ----------------------------
INSERT INTO `triune_user` VALUES ('1', 'rdlagdaan', '$2a$10$XY6gA3GMK6O4Vnxk/cPfUe7MbtuMtQaRAvxoExM0BD9/9SHT890uq', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-10-27', null, null, null, null, null, 'Randy', 'Lagdaan', 'TUA', '12-000-000', '2017-11-01 13:29:33');
INSERT INTO `triune_user` VALUES ('2', 'bbjuliano', '$2a$10$JCTan4ajbswrZiO8AUPFEOUXuIDxVbdwj/JQ9tWIx7U8SccQIdfae', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-11-03', null, null, null, null, null, 'Bernadine', 'Juliano', 'TUA', '12-000-001', '2017-11-03 08:50:19');
INSERT INTO `triune_user` VALUES ('3', 'acaytin', '$2a$10$cu1vYO9IxTU2KrM2DJ0H3ucdSUmJIlvHar/sdMmS3A8SUD1OYdbiK', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-11-03', null, null, null, null, null, 'Ace', 'Aytin', 'TUA', '12-000-002', '2017-11-03 08:50:20');
INSERT INTO `triune_user` VALUES ('4', 'jldespojo', '$2a$10$g6d6zVKgy.0lIpppzzSAO.TgdDZIzx4XN3aGzeh3DV7O/CV/a.EsO', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-11-03', null, null, null, null, null, 'Jim ', 'Despojo', 'TUA', '12-000-003', '2017-11-03 08:50:20');
INSERT INTO `triune_user` VALUES ('5', 'jlmendeja', '$2a$10$RPN3CKMZA73Eeu3qH568EuXXmA0lQA1qXY11oqXGQiRB0DLP.xg0O', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-11-03', null, null, null, null, null, 'Joshua', 'Mendeja', 'TUA', '12-000-004', '2017-11-03 08:50:21');
INSERT INTO `triune_user` VALUES ('6', 'sample', '$2a$10$BqRE8oFy1PEkwQcspH3yYOv1enqUoaAV2LBNWLKhRtNDVPGRTVW5G', null, 'rdlagdaan@gmail.com', null, null, null, null, '2017-11-11', null, null, null, null, null, 'Joshua', 'Mendeja', null, '12-000-004', '2017-11-11 08:29:52');
INSERT INTO `triune_user` VALUES ('16', 'jtsy', 'ae2647571de2d5aa203653a4e7ffba30485843c044533dd8ff5f24eb56e0f4f3e85e3eec8b6fa8f78c89f09027559beb9da1f1c7bb2f677c6a8264ca61c51c09qk0jip/VWj2q+9QOz21tS9GFE5zp7LMMVIWr+pyBbEE=', null, 'jtsy@gmail.com', null, null, null, null, null, null, '2018-03-13 12:50:25', 'subscriber', 'approved', null, 'Jose', 'Sy', null, '2009300100', '2018-03-12 17:50:25');
INSERT INTO `triune_user` VALUES ('19', 'vrobles', null, null, 'vrobles@gmail.com', null, null, null, null, null, null, null, 'subscriber', 'pending', null, 'Vinzent', 'Robles', null, '2009300200', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for triune_user_privilege
-- ----------------------------
DROP TABLE IF EXISTS `triune_user_privilege`;
CREATE TABLE `triune_user_privilege` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT,
  `OrgCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BranchOfficeCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CategorySystemID` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `GroupSystemID` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `SourceSystemID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DataElementID` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `ElementValueID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Control` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccessRights` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserLevel` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserID` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of triune_user_privilege
-- ----------------------------
INSERT INTO `triune_user_privilege` VALUES ('1', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSetup-MNU', 'TransferLetter', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('2', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSetup-MNU', 'LetterToParents', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('3', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SETTINGS-CardSetup-MNU', 'SubjectSequence', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('4', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-Curriculum-MNU', 'CurriculumAlignment', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('5', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-Faculty-MNU', 'FacultyList', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('6', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'SHGrade11', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('8', 'TUA', 'ERODSR', 'INFORMATION', 'FINANCE', 'TAIMS', 'ACCOUNTING-StudentAccounts-MNU', 'AccountConfiguration', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-02 08:54:32');
INSERT INTO `triune_user_privilege` VALUES ('9', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'HSGrade7', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('10', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'HSGrade8', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('11', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'HSGrade9', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('14', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'ELGrade4', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('15', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'K12-Promotion-MNU', 'ELGrade5', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('16', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'BySection', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('17', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'ByStudent', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('18', 'TUA', 'ERODSR', 'ACADEMIC', 'REGISTRAR', 'EGIS', 'SUMMARY-Grade-MNU', 'Ranking', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-03 08:26:23');
INSERT INTO `triune_user_privilege` VALUES ('19', 'TUA', 'ERODSR', 'ADMINISTRATION', 'ADMIN', 'TUC', 'ACCOUNTS-Users-MNU', 'UserList', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-02 08:54:32');
INSERT INTO `triune_user_privilege` VALUES ('20', 'TUA', 'ERODSR', 'INFORMATION', 'REGISTRAR', 'TAIMS', 'OAR-PersonalProfile-MNU', 'StudentProfile', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-11-28 10:20:48');
INSERT INTO `triune_user_privilege` VALUES ('21', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'HelloWorld', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-02 16:47:46');
INSERT INTO `triune_user_privilege` VALUES ('22', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'TemplateSyntaxProperties', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-12 16:00:41');
INSERT INTO `triune_user_privilege` VALUES ('23', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'SearchBox', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-18 13:40:36');
INSERT INTO `triune_user_privilege` VALUES ('24', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'ColorPicker', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-19 11:50:05');
INSERT INTO `triune_user_privilege` VALUES ('25', 'TUA', 'ERODSR', 'ACADEMIC', 'COURSES', 'LESSONS', 'ANGULAR-Beginner-MNU', 'Collapsible', ';', 'CRUD', 'ADMIN', 'rdlagdaan', 'rdlagdaan', '2017-12-19 15:26:24');
