USE AcademyVPU_011

SELECT
		last_name + ' ' + first_name + ' ' + middle_name as N'Преподаватель',
		COUNT ( teacher_discipline_relation.discipline)	 as N'Дисциплина'
FROM teachers, disciplines, teacher_discipline_relation
WHERE teachers.teacher_id = teacher_discipline_relation.teacher
	AND disciplines.discipline_id = teacher_discipline_relation.discipline
GROUP BY teachers.last_name,teachers.first_name,teachers.middle_name