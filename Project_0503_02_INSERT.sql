----------------------------------------------

USE [BUDT702_Project_0503_02]
-- Assuming a table named 'Source'
INSERT INTO Source (sourceID, sourceName, sourceType, sourceURL)
VALUES (1, 'US news', 'educational', 'https://www.usnews.com/best-graduate-schools/university-of-maryland-college-park-163286/overall-rankings#:~:text=UMD%20%27s%20Graduate%20School%20Rankings%201%20in%20Curriculum,%23%2011%20in%20Special%20Education%20%28tie%29%20More%20items');

INSERT INTO Source (sourceID, sourceName, sourceType, sourceURL)
VALUES (2, 'Top Universities', 'Educational', 'https://www.topuniversities.com/universities/university-maryland-college-park/university-maryland-robert-h-smith-school-business#p2-rankings');

INSERT INTO Source (sourceID, sourceName, sourceType, sourceURL)
VALUES (3, 'Shiksha', 'Educational', 'https://www.shiksha.com/studyabroad/usa/universities/university-of-maryland/ranking');

INSERT INTO Source (sourceID, sourceName, sourceType, sourceURL)
VALUES (4, 'College Dekho', 'Educational', 'https://collegedunia.com/usa-universities');

-- Assuming a table named 'Criteria'
INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (1, 'Employability', 1);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (2, 'Peer Assessment', 1);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (3, 'Overall', 1);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (4, 'Prestige', 1);
---------------------------
INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (5, 'Employability', 2);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (6, 'Peer Assessment', 2);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (7, 'Overall', 2);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (8, 'Prestige', 2);
---------------------
INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (9, 'Employability', 3);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (10, 'Peer Assessment', 3);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (11, 'Overall', 3);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (12, 'Prestige', 3);
----------------------
INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (13, 'Employability', 4);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (14, 'Peer Assessment', 4);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (15, 'Overall', 4);

INSERT INTO Criteria (criteriaID, criteriaName, sourceID)
VALUES (16, 'Prestige', 4);




-- Assuming a table named 'Program'
INSERT INTO Program (programID, programName, programType, programDuration)
VALUES (1, 'Information systems', 'STEM', 1);

INSERT INTO Program (programID, programName, programType, programDuration)
VALUES (2, 'Business Analytics', 'STEM', 18);

INSERT INTO Program (programID, programName, programType, programDuration)
VALUES (3, 'Supply Chain Management', 'NON-STEM', 2);

-- Assuming a table named 'Alumni'
INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027432, 'Keerthana Pramudi', 2022, 'Viatris', 'Analyst, Data Science', 1);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027294, 'Digina Derose', 2022, 'Concora Credit', 'Analyst', 1);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027934, 'Aditya Bhide', 2022, 'Neudesic', 'Consultant', 1);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027946, 'Tanmaya Kimpella', 2022, 'MBTA', 'Analyst', 2);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027308, 'Antara Kumar', 2022, 'Barclays', 'Analyst', 2);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027105, 'Kirti Menghani', 2022, 'Airtower Networks', 'Analyst', 2);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027284, 'Victoria Bazhenova', 2023, 'Varian Medical Systems', 'Logistics Order Processor', 3);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027957, 'Richard Xu', 2019, 'Amazon', 'Business Intelligence Engineer', 3);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027359, 'Wenjun Jin', 2021, 'Vankya', 'Supply Chain Specialist', 3);

INSERT INTO Alumni (alumniID, alumniName, alumniGraduationYear, alumniEmployer, alumniJobTitle, programID)
VALUES (174027395, 'Akshat Agarwal', 2022, 'Resilinc', 'Customer Success Intern', 3);

-- Assuming a table named 'Student'
INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905632, 'Rohit Abbireddi', 2023, 'International', 1);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905427, 'Farah Bushra', 2023, 'In-state', 1);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905268, 'Jessica choong', 2023, 'In-state', 1);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905408, 'Varun Shrivastava', 2022, 'International', 2);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905593, 'Charishma J', 2022, 'International', 2);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905109, 'Priyanka Gona', 2023, 'International', 2);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905275, 'Brand Gideon', 2023, 'International', 3);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905592, 'Aayush Shah', 2023, 'International', 3);

INSERT INTO Student (studentID, studentName, studentEnrollmentYear, studentStatus, programID)
VALUES (238905734, 'Pavan Bagingere Nanjappa', 2023, 'International', 3);


-- Inserting data into Ranking table
INSERT INTO Ranking ( rankValue, sourceID, criteriaID, programID, rankYearData)
VALUES
    (13, 1, 1, 1, 2022),
    (11, 1, 1, 1, 2023),
    (35, 1, 2, 1, 2022),
    (30, 1, 2, 1, 2023),
    (30, 1, 3, 1, 2022),
    (25, 1, 3, 1, 2023),
    (8, 1, 4, 1, 2022),
    (5, 1, 4, 1, 2023),
    (15, 2, 5, 2, 2022),
    ( 10, 2, 5, 2, 2023),
    ( 38, 2, 6, 2, 2022),
    ( 31, 2, 6, 2, 2023),
    ( 38, 2, 7, 2, 2022),
    ( 31, 2, 7, 2, 2023),
    ( 19, 2, 8, 2, 2022),
    ( 18, 3, 8, 2, 2023),
    ( 13, 3, 9, 3, 2022),
    ( 10, 3, 9, 3, 2023),
    ( 28, 3, 10, 3, 2022),
    ( 26, 3, 10, 3, 2023),
    ( 26, 3, 11, 3, 2022),
    ( 28, 3, 11, 3, 2023),
    ( 13, 3, 12, 3, 2022),
    ( 8, 3, 12, 3, 2023);

-- Inserting data into Information table
INSERT INTO Information (infID, infYear, infEnrollmentNumbers, infStudentToStaffRatio, infFemalePercentage, infInternationalPercentage, infAcceptanceRates, programID)
VALUES
    (1, 2022, 180, 36, 42, 60, 44, 1),
    (2, 2023, 187, 37.4, 46, 65, 42, 1),
    (3, 2022, 120, 24, 48, 58, 52, 2),
    (4, 2023, 119, 23.8, 49, 59.5, 51, 2),
    (5, 2022, 160, 32, 45, 57, 55, 3),
    (6, 2023, 165, 33, 47, 60.2, 57, 3);