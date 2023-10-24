insert into activitytype
select d.* from (values 
	(1,'Программа', 	'program'	),
   	(2,'Подпрограмма',	'subprogram'),
	(3,'Проект',		'project'	),
	(4,'Контракт',		'contract'	),
	(5,'КТ',			'point'		)
) as d(id, name, sysname)
where not exists(
    select 1 from activitytype as t
    where t.id = d.id
);

insert into activity 
values	(1, 1, 'first_code', 'name_1', 1, null),
		(2, 2, 'second_code', 'name_2', 1, 1),
		(3, 3, 'third_code', 'name_3', 1, 2),
		(4, 4, 'fourth_code', 'name_4', 1, 3),
		(5, 5, 'fifth_code', 'name_5', 1, 4),
		(6, 1, 'code1_1', 'name1_1', 2, 1),
		(7, 2, 'code2_1', 'name2_1', 2, 2),
		(8, 3, 'code3_1', 'name3_1', 2, 3),
		(9, 4, 'code4_1', 'name4_1', 2, 4)
on conflict do nothing;

insert into program 
values 	(1, 123, 2000, 2001),
	   	(2, 234, 2000, 2001)
on conflict do nothing;

insert into subprogram 
values	(1, 1231),
		(2, 1232)
on conflict do nothing;

insert into area 
values	(1, 'First'),
		(2, 'Second')
on conflict do nothing;

insert into project
values 	(1, 'First project'),
		(2, 'Second project')
on conflict do nothing;

insert into contract 
values 	(1, 1),
		(2, 2)
on conflict do nothing;

insert into point
values	(1, date '2000-01-01', date '2000-02-02'),
		(2, date '2000-03-03', date '2000-04-04')
on conflict do nothing;
