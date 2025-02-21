# Creating table StudentScore
Create table StudentScores(
StudentId int, 
TotalScore int, 
MathScore int,
ScienceScore int
);

# Inserting values into table
Insert into StudentScores(StudentId, TotalScore, Mathscore,ScienceScore) values 
(1,95,45,50),
(2,85,35,60),
(3,75,40,30),
(4,65,25,20);

# Assiging Grades Based on Total Scores
select StudentId, TotalScore, case
	when TotalScore >=90 then 'A'
    when TotalScore >=80 then 'B'
    when TotalScore >=70 then 'C'
    else 'D (Fail)'
    end as Grade
from StudentScores;

# Identify Pass/Fail Status in Specific Subjects
select StudentId,MathScore, ScienceScore,
	case 
		when MathScore>=40 then 'Pass'
        else 'Fail'
	end as MathStatus,
    case
		when ScienceScore>=40 then 'Pass'
        else 'Fail'
	end as ScienceStatus
from StudentScores;
