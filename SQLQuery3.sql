USE AcademyVPU_011
GO

DELETE FROM schedule WHERE discipline = 5

DECLARE @start_date AS DATETIME = '2022-16-01 10:00'
DECLARE @end_date AS DATETIME = '2022-16-03 10:00'
DECLARE @i AS DATETIME = @start_date

WHILE (@i < @end_date)
BEGIN
INSERT INTO schedule(lesson_start, [group],teacher,discipline)
VALUES (@i,2,7,4)
SET @i=@i+7
END
GO

SELECT 
	lesson_start,
	group_name,
	last_name+' '+first_name+' ' + middle_name,
	discipline_name
FROM schedule,groups,teachers,disciplines
WHERE schedule.[group] = groups.group_id
	AND schedule.teacher = teachers.teacher_id
	AND schedule.discipline = disciplines.discipline_id
	