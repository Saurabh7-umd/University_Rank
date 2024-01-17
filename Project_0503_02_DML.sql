USE [BUDT702_Project_0503_02];




--	1)
WITH SmithRank as (
SELECT programID,
       programName  ,
	   criteriaName , 
	   rankValue    , 
	   ROW_NUMBER() OVER (PARTITION BY criteriaName ORDER BY rankValue  ) AS toprank
FROM SmithRankingView WHERE rankYearData='2022' ) 
SELECT 
       programName  AS 'Program Name',
	   criteriaName AS 'Ranking Criteria', 
	   rankValue    AS 'Rank'
FROM SmithRank WHERE toprank=1
;
--2)
SELECT  
        programName  AS 'Program Name',
		criteriaName AS 'Ranking Criteria', 
		rankValue    AS 'Rank', 
		rankYearData AS 'Year' 
FROM SmithRankingView WHERE programName='Information Systems' 
ORDER BY criteriaName,rankYearData ;

--3)
WITH RankedPrograms AS (
    SELECT TOP 3
        programName  AS 'Program Name',
        criteriaName AS 'Ranking Criteria' ,
        rankValue    AS 'Rank',
        rankYearData AS 'Year'
    FROM
        SmithRankingView WHERE criteriaName='Employability' AND rankYearData='2022')
SELECT
    programName   AS 'Program Name'  ,
    criteriaName  AS 'Ranking Criteria',
    rankValue     AS 'Rank',
    rankYearData  AS 'Year',
    COALESCE(rankValue - PreviousYearRank, 0) AS 'Change in Rank'
FROM
    RankedPrograms WHERE programName='Information Systems' AND rankYearData='2023'
ORDER BY
    programID, criteriaName, rankYearData;

--4)
SELECT TOP 1 p.programName AS 'Program Name' ,i.infInternationalPercentage AS 'International Student Percentage'  FROM Information i
LEFT OUTER JOIN Program p 
ON i.programID = p.programID
WHERE i.infYear=2022
ORDER BY I.infInternationalPercentage DESC

   



--5) 
WITH SmithRank as (
SELECT s.programID,
       s.programName  ,
	   p.alumniJobTitle  
FROM SmithRankingView s
LEFT OUTER JOIN ProgramAlumniView p
ON s.programID=p.programID
AND s.rankYearData=p.alumniGraduationYear
WHERE   rankYearData='2022' ) 
SELECT DISTINCT alumniJobTitle AS 'Job Roles'
FROM SmithRank 
;

;