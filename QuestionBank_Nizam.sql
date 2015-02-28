/*
Navicat SQL Server Data Transfer

Source Server         : SQL Server
Source Server Version : 105000
Source Host           : :1433
Source Database       : QuestionBank_Nizam
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2015-02-28 23:31:19
*/


-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE [question]
GO
CREATE TABLE [question] (
[question_code] varchar(255) NOT NULL ,
[topics_code] varchar(255) NULL ,
[question] varchar(255) NULL ,
[correct_ans] varchar(255) NULL ,
[wrong_answer1] varchar(255) NULL ,
[wrong_answer2] varchar(255) NULL ,
[wrong_answer3] varchar(255) NULL ,
[difficulty_level] varchar(255) NULL ,
[estimated_time] varchar(40) NULL 
)


GO

-- ----------------------------
-- Records of question
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [question] ([question_code], [topics_code], [question], [correct_ans], [wrong_answer1], [wrong_answer2], [wrong_answer3], [difficulty_level], [estimated_time]) VALUES (N'001', N'001', N'What is it?', N'A', N'B', N'C', N'D', N'Easy', N'1 minute'), (N'003', N'003', N'What next?', N'A', N'B', N'C', N'D', N'Easy', N'1 Minute')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE [subject]
GO
CREATE TABLE [subject] (
[subject_code] varchar(255) NOT NULL ,
[subject_name] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of subject
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [subject] ([subject_code], [subject_name]) VALUES (N'001', N'English'), (N'002', N'Bangla')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE [topics]
GO
CREATE TABLE [topics] (
[topics_code] varchar(255) NOT NULL ,
[subject_code] varchar(255) NULL ,
[topics_name] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of topics
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [topics] ([topics_code], [subject_code], [topics_name]) VALUES (N'001', N'1', N'New Topic'), (N'002', N'001', N'Another Topic'), (N'003', N'001', N'Learning English: A new perspective'), (N'004', N'002', N'Bangla: A New Era'), (N'005', N'002', N'adfadf'), (N'006', null, N'Test'), (N'007', N'001', N'test'), (N'adf', null, N'df')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Indexes structure for table question
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table question
-- ----------------------------
ALTER TABLE [question] ADD PRIMARY KEY ([question_code])
GO

-- ----------------------------
-- Indexes structure for table subject
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table subject
-- ----------------------------
ALTER TABLE [subject] ADD PRIMARY KEY ([subject_code])
GO

-- ----------------------------
-- Indexes structure for table topics
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table topics
-- ----------------------------
ALTER TABLE [topics] ADD PRIMARY KEY ([topics_code])
GO
