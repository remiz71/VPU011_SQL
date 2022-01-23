use AcademyVPU_011
go

insert into students 
			(last_name, first_name,middle_name,birth_date,speciality,rating,attendance)
values
			(N'Ремизов', N'Дмитрий',N'Викторович',N'1993-06-18',1,99,98),
			(N'Сорокина', N'Мария',N'Владимировна',N'1994-08-24',1,99,98),
			(N'Вагурин', N'Дмитрий',N'Владимирович',N'1988-02-10',1,95,91),
			(N'Володин', N'Алексей',N'Николаевич',N'1986-03-11',1,99,98);
	Go
	select * from students