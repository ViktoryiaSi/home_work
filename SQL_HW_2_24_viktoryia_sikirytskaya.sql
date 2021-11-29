create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	
)

insert into employees(employee_name)
values ('Leland Ball'),
	   ('Alvin Dawson'),
	   ('Roosevelt Berry'),
	   ('Donald Thornton'),
	   ('Maryann Vasquez'),
	   ('Kristy Lawson'),
	   ('Dominick Moore'),
	   ('Marvin Brooks'),
	   ('Manuel Bridges'),
	   ('Wallace Hayes'),
       ('Earl Robertson'),
	   ('Stewart Miles'),
	   ('Gayle Cox'),
	   ('Tommy Murray'),
	   ('Blanca Swanson'),
	   ('Melissa Yates'),
	   ('Rita Baker'),
	   ('Ryan Morton'),
	   ('Jake Shelton'),
	   ('Manuel Rodriguez'),
	   ('Margarita Pearson'),
	   ('Ernesto Sandoval'),
	   ('Scott Davis'),
	   ('Raquel Howard'),
	   ('Muriel Johnston'),
	   ('Andrea Cummings'),
	   ('Austin Phillips'),
	   ('Rita Hall'),
	   ('Eduardo Wallace'),
	   ('Barry Salazar'),
	   ('June Cobb'),
	   ('Maureen Terry'),
	   ('Colin Oliver'),
	   ('Manuel Collier'),
	   ('Craig Schneider'),
	   ('Willis Watson'),
	   ('Maryann Sutton'),
	   ('Candice Reed'),
	   ('Pam Banks'),
	   ('Shane Todd'),
	   ('Jaime Carr'),
	   ('Beth Reyes'),
	   ('Roman Berry'),
	   ('Vicky Clayton'),
	   ('Virginia George'),
	   ('Lionel Sanders'),
	   ('Angel Vasquez'),
	   ('Dawn Moreno'),
	   ('Lynda Jacobs'),
	   ('Al Romero'),
	   ('Clint Henry'),
	   ('Jeanne Leonard'),
	   ('Bernard Wood'),
	   ('Amelia Mccarthy'),
	   ('Lorene Perry'),
	   ('Jessie Francis'),
	   ('Jerome Perkins'),
	   ('Connie Howard'),
	   ('Jaime Taylor'),
	   ('Malcolm Franklin'),
	   ('Luther Poole'),
	   ('Levi Green'),
	   ('Kathryn Norman'),
	   ('Alfred Farmer'),
	   ('Fannie Mason'),
	   ('Laura Owens'),
	   ('Alberto Wells'),
	   ('Arturo Kim'),
	   ('Henry Barker'),
	   ('Eva Arnold');
	  
	  
create table salary_1(
	id serial primary key,
	monthly_salary int not null
);

insert into salary_1(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
	  
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null

);

insert into employee_salary(employee_id, salary_id)
values (3, 7),
	   (71, 1),
	   (2, 8),
	   (95, 13),
	   (1, 6),
	   (99, 12),
	   (160, 8),
	   (11, 16),
	   (89, 10),
	   (13, 11),
	   (79, 9),
	   (20, 11),
	   (88, 7),
	   (23, 15),
	   (90, 13),
	   (30, 12),
	   (100, 9),
	   (39, 11),
	   (86, 14),
	   (4, 5),
	   (34, 12),
	   (33, 9),
	   (19, 4),
	   (22, 4),
	   (35, 1),
	   (25, 7),
	   (17, 13),
	   (6, 6),
	   (8, 4),
	   (28, 16),
	   (37, 3),
	   (12, 11),
	   (27, 5),
	   (40, 9),
	   (5, 4),
	   (7, 8),
	   (9, 6),
	   (10, 1),
	   (14, 6),
	   (15, 2);
	  
create table roles_1 (
	id serial primary key,
	role_name int not null unique
);
	   
alter table roles_1 alter column role_name type varchar(30);

insert into roles_1(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_1(id)
);

insert into roles_employee(employee_id, role_id)
values (7, 2),
	   (1, 16),
	   (51, 8),
	   (33, 11),
	   (18, 1),
	   (9, 4),
	   (2, 7),
	   (8, 13),
	   (61, 10),
	   (23, 3),
	   (3, 8),
	   (15, 9),
	   (44, 14),
	   (6, 1),
	   (4, 15),
	   (25, 5),
	   (46, 8),
	   (54, 10),
	   (38, 2),
	   (45, 9),
	   (19, 16),
	   (24, 13),
	   (14, 12),
	   (5, 7),
	   (47, 14),
	   (27, 2),
	   (35, 8),
	   (70, 3),
	   (49, 14),
	   (40, 15),
	   (66, 1),
	   (22, 9),
	   (21, 8),
	   (32, 6),
	   (69, 4),
	   (29, 11),
	   (60, 13),
	   (55, 10),
	   (37, 12),
	   (42, 5);
	   

select * from roles_employee;


