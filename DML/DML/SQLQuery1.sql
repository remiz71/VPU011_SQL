use AcademyVPU_011
go 

select 
	last_name + ' ' + first_name + ' '+ middle_name as N'�������',
	birth_date		as N'���� ��������',
	speciality_name as N'�������������',
	rating			as N'�������',
	attendance		as N'������������'



from students,specialities
where speciality = speciality_id;