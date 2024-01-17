

USE [BUDT702_Project_0503_02] ;

--Drop foreign key constraint from Criteria table
ALTER TABLE [Criteria] DROP CONSTRAINT fk_Criteria_sourceID;
--Drop foreign key constraint from Ranking table
ALTER TABLE [Ranking] DROP CONSTRAINT fk_Ranking_programID;
ALTER TABLE [Ranking] DROP CONSTRAINT fk_Ranking_sourceID;
ALTER TABLE [Ranking] DROP CONSTRAINT fk_Ranking_criteriaID;
-- Drop foreign key constraint from Information table
ALTER TABLE [Information] DROP CONSTRAINT fk_Information_programID;
-- Drop foreign key constraint from Alumni table
ALTER TABLE [Alumni] DROP CONSTRAINT fk_Alumni_programID;
--Drop foreign key constraint from Student table
ALTER TABLE [Student] DROP CONSTRAINT fk_Student_programID;


--Drop table statement
 DROP TABLE  IF EXISTS [Program];
 DROP TABLE  IF EXISTS [Source];
 DROP TABLE  IF EXISTS [Criteria];
 DROP TABLE  IF EXISTS [Ranking];
 DROP TABLE  IF EXISTS [Information];
 DROP TABLE  IF EXISTS [Alumni];
 DROP TABLE  IF EXISTS [Student];


-- Creating Source table
CREATE TABLE [Source] (
    sourceID CHAR(10) NOT NULL, 
    sourceName VARCHAR(255),
    sourceType VARCHAR(50),
    sourceURL VARCHAR(255),
	CONSTRAINT pk_Source_sourceID PRIMARY KEY (sourceID)
);

-- Creating Criteria table
CREATE TABLE [Criteria] (
    criteriaID CHAR(10) NOT NULL,
    criteriaName VARCHAR(255),
    sourceID CHAR(10),
	CONSTRAINT pk_Criteria_criteriaID PRIMARY KEY(criteriaID),
    CONSTRAINT fk_Criteria_sourceID FOREIGN KEY (sourceID)
        REFERENCES [Source] (sourceID)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Creating Program table
CREATE TABLE [Program] (
    programID CHAR(10) NOT NULL,
    programName VARCHAR(255),
    programType VARCHAR(50),
    programDuration INT,
	CONSTRAINT pk_Program_programID PRIMARY KEY(programID)
);




-- Creating Ranking table
CREATE TABLE Ranking (
    rankValue INT,
	rankYearData INT,
    sourceID CHAR(10),
    criteriaID CHAR(10),
    programID CHAR(10),

    CONSTRAINT fk_Ranking_sourceID FOREIGN KEY (sourceID)
        REFERENCES Source (sourceID)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT fk_Ranking_criteriaID FOREIGN KEY (criteriaID)
        REFERENCES Criteria (criteriaID)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT fk_Ranking_programID FOREIGN KEY (programID)
        REFERENCES Program (programID)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Creating Information table
CREATE TABLE Information (
    infID CHAR(10) NOT NULL,
    infYear INT,
    infEnrollmentNumbers INT,
    infStudentToStaffRatio FLOAT,
    infFemalePercentage FLOAT,
    infInternationalPercentage FLOAT,
    infAcceptanceRates FLOAT,
    programID CHAR(10),
	CONSTRAINT pk_Information_infID PRIMARY KEY(infID),
    CONSTRAINT fk_Information_programID FOREIGN KEY (programID)
        REFERENCES Program (programID)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);


--Creating Alumni table
CREATE TABLE Alumni (
    alumniID CHAR(10) NOT NULL ,
    alumniName VARCHAR(255),
    alumniGraduationYear INT,
    alumniEmployer VARCHAR(255),
    alumniJobTitle VARCHAR(255),
    programID CHAR(10),
	CONSTRAINT pk_Alumni_alumniID PRIMARY KEY (alumniID),
	CONSTRAINT fk_Alumni_programID FOREIGN KEY (programID)
        REFERENCES Program (programID)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

--Creating Student table

CREATE TABLE Student (
    studentID CHAR(10) NOT NULL,
    studentName VARCHAR(255),
    studentEnrollmentYear INT,
    studentStatus VARCHAR(255),
    programID CHAR(10),
    CONSTRAINT fk_Student_programID FOREIGN KEY (programID)
        REFERENCES Program (programID)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);


