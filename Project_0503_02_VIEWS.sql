USE [BUDT702_Project_0503_02];


-- Creating a SmithRankingView View
CREATE VIEW SmithRankingView AS
SELECT
    s.sourceID ,
    s.sourceName     ,
    s.sourceType     ,
    s.sourceURL      ,
    c.criteriaName   ,
    p.programID      ,
    p.programName    ,
    r.rankValue      ,
    r.rankYearData   
FROM
    [Source] s
JOIN
    [Criteria] c ON s.sourceID = c.sourceID
JOIN
    [Program] p ON c.sourceID = p.programID
JOIN
    [Ranking] r ON p.programID = r.programID AND 
	               c.criteriaID=r.criteriaID AND
				   s.sourceID=r.sourceID
;
-- Creating view for Program-Student join
CREATE VIEW ProgramInfoView AS
SELECT
    p.[programID]              ,
    p.[programName]            ,
    i.[infID]                  ,
    i.[infEnrollmentNumbers]   ,
    i.[infStudentToStaffRatio] ,
	i.[infFemalePercentage]    ,
	i.[infAcceptanceRates]     

FROM
    [Program] p
JOIN
    [dbo].[Information] i ON p.programID = i.programID;
-- Creating view for Program-Alumni join
CREATE VIEW ProgramAlumniView AS
SELECT
    p.programID            ,
    p.programName          ,
    a.alumniID             ,
    a.alumniName           ,
    a.alumniGraduationYear ,
    a.alumniEmployer       ,
    a.alumniJobTitle       
FROM
    [Program] p
JOIN
    [Alumni] a ON p.programID = a.programID;


