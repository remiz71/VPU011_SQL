use AcademyVPU_011
go 

select 
	last_name + ' ' + first_name + ' '+ middle_name as N'Студент',
	birth_date		as N'Дата рождения',
	speciality_name as N'Специальность',
	rating			as N'Рейтинг',
	attendance		as N'Посещаемость'



from students,specialities
where speciality = speciality_id;