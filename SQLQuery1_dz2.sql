create database Academy
go
use database Academy
go
create table Departments(
ID int primary key not null identity(1,1),
Financing money not null default 0 check(Financing>-1),
Name nvarchar(100) not null unique check(Name<>' ')
)
go
create table Faculties(
ID int primary key not null identity(1,1),
Dean nvarchar(max) not null check(Dean<>' '),
Name nvarchar(100) not null unique check(Name<>' ')
)
go
create table Groups(
ID int primary key not null identity(1,1),
Name nvarchar(100) not null unique check(Name<>' '),
Rating int not null check(Rating>-1 and Rating<6),
Year int not null check(Year>0 and Year<6)
)
go
create table Teachers(
ID int primary key not null identity(1,1),
EmploymentDate date not null check(EmploymentDate>'01-01-1990'),
IsAssistant bit not null default 0,
IsProfessor bit not null default 0,
Name nvarchar(100) not null unique check(Name<>' '),
Position nvarchar(max) not null check(Position<>' '),
Premium money not null default 0 check(Premium>0),
Salary money not null check(Salary>0),
Surname nvarchar(max) not null check(Surname<>' ')
)
go
select Name, Financing, ID
from Departments;
go
select Name as "Group Name", Rating as "Group Rating"
from Groups;
go
select Surname, (Salary / Premium) * 100 as "Salary to Premium (%)", (Salary / (Salary + Premium)) * 100 as "Salary to Total (%)"
from Teachers;
go
select 'The dean of faculty ' + Name + ' is ' + Dean as Info
from Faculties;
go
select Surname
from Teachers
where IsProfessor = 1 and Salary > 1050;
go
select Name
from Departments
where Financing < 11000 or Financing > 25000;
go
select Name
from Faculties
where Name <> 'Computer Science';
go
select Surname, Position
from Teachers
where IsProfessor = 0;
go
select Surname, Position, Salary, Premium
from Teachers
where IsAssistant = 1 and Premium between 160 and 550;
go
select Surname, Salary
from Teachers
where IsAssistant = 1;
go
select Surname, Position
from Teachers
where EmploymentDate < '2000-01-01';
go
select Name as "Name of Department"
from Departments
where Name < 'Software Development';
go
select Surname
from Teachers
where IsAssistant = 1 and (Salary + Premium) <= 1200;
go
select Name
from Groups
where Year = 5 and Rating between 2 and 4;
go
select Surname
from Teachers
where IsAssistant = 1 and (Salary < 550 or Premium < 200);
go

insert into Departments (ID, Name, Rating, Year) values (1, 'Shermie', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (2, 'Saundra', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (3, 'Kathryne', 5, 3);
insert into Departments (ID, Name, Rating, Year) values (4, 'Tann', 6, 0);
insert into Departments (ID, Name, Rating, Year) values (5, 'Hazlett', 5, 2);
insert into Departments (ID, Name, Rating, Year) values (6, 'Gardie', 0, 6);
insert into Departments (ID, Name, Rating, Year) values (7, 'Clarissa', 6, 5);
insert into Departments (ID, Name, Rating, Year) values (8, 'Stevie', 6, 0);
insert into Departments (ID, Name, Rating, Year) values (9, 'Larry', 3, 3);
insert into Departments (ID, Name, Rating, Year) values (10, 'Lorianna', 3, 5);
insert into Departments (ID, Name, Rating, Year) values (11, 'Arvie', 0, 6);
insert into Departments (ID, Name, Rating, Year) values (12, 'Hilary', 5, 3);
insert into Departments (ID, Name, Rating, Year) values (13, 'Avram', 3, 2);
insert into Departments (ID, Name, Rating, Year) values (14, 'Roley', 2, 1);
insert into Departments (ID, Name, Rating, Year) values (15, 'Ave', 5, 1);
insert into Departments (ID, Name, Rating, Year) values (16, 'Vale', 6, 4);
insert into Departments (ID, Name, Rating, Year) values (17, 'Eleonore', 3, 0);
insert into Departments (ID, Name, Rating, Year) values (18, 'Jody', 1, 6);
insert into Departments (ID, Name, Rating, Year) values (19, 'Constancy', 3, 2);
insert into Departments (ID, Name, Rating, Year) values (20, 'Eldridge', 5, 0);
insert into Departments (ID, Name, Rating, Year) values (21, 'Gussi', 6, 4);
insert into Departments (ID, Name, Rating, Year) values (22, 'Flossi', 4, 1);
insert into Departments (ID, Name, Rating, Year) values (23, 'Addi', 3, 2);
insert into Departments (ID, Name, Rating, Year) values (24, 'Hildagarde', 1, 1);
insert into Departments (ID, Name, Rating, Year) values (25, 'Brendon', 6, 1);
insert into Departments (ID, Name, Rating, Year) values (26, 'Dominique', 1, 2);
insert into Departments (ID, Name, Rating, Year) values (27, 'Joan', 1, 3);
insert into Departments (ID, Name, Rating, Year) values (28, 'Lothario', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (29, 'Sharla', 4, 2);
insert into Departments (ID, Name, Rating, Year) values (30, 'Christoffer', 6, 6);
insert into Departments (ID, Name, Rating, Year) values (31, 'Catlaina', 4, 3);
insert into Departments (ID, Name, Rating, Year) values (32, 'Melantha', 5, 0);
insert into Departments (ID, Name, Rating, Year) values (33, 'Mildrid', 0, 4);
insert into Departments (ID, Name, Rating, Year) values (34, 'Palm', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (35, 'Sheffie', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (36, 'Dynah', 2, 1);
insert into Departments (ID, Name, Rating, Year) values (37, 'Raoul', 1, 2);
insert into Departments (ID, Name, Rating, Year) values (38, 'Theresita', 2, 5);
insert into Departments (ID, Name, Rating, Year) values (39, 'Richie', 5, 3);
insert into Departments (ID, Name, Rating, Year) values (40, 'Melina', 2, 3);
insert into Departments (ID, Name, Rating, Year) values (41, 'Maryl', 1, 6);
insert into Departments (ID, Name, Rating, Year) values (42, 'Jacquelynn', 6, 5);
insert into Departments (ID, Name, Rating, Year) values (43, 'Hamlen', 2, 6);
insert into Departments (ID, Name, Rating, Year) values (44, 'Carlee', 3, 1);
insert into Departments (ID, Name, Rating, Year) values (45, 'Francois', 2, 0);
insert into Departments (ID, Name, Rating, Year) values (46, 'Mirabel', 5, 5);
insert into Departments (ID, Name, Rating, Year) values (47, 'Brock', 4, 6);
insert into Departments (ID, Name, Rating, Year) values (48, 'Ursa', 1, 0);
insert into Departments (ID, Name, Rating, Year) values (49, 'Aubrie', 2, 1);
insert into Departments (ID, Name, Rating, Year) values (50, 'Munroe', 4, 4);
insert into Departments (ID, Name, Rating, Year) values (51, 'Tobe', 6, 1);
insert into Departments (ID, Name, Rating, Year) values (52, 'Creighton', 2, 6);
insert into Departments (ID, Name, Rating, Year) values (53, 'Faun', 2, 0);
insert into Departments (ID, Name, Rating, Year) values (54, 'Mattie', 4, 0);
insert into Departments (ID, Name, Rating, Year) values (55, 'Sanson', 5, 6);
insert into Departments (ID, Name, Rating, Year) values (56, 'Oriana', 0, 2);
insert into Departments (ID, Name, Rating, Year) values (57, 'Verile', 6, 0);
insert into Departments (ID, Name, Rating, Year) values (58, 'Stephen', 1, 3);
insert into Departments (ID, Name, Rating, Year) values (59, 'Kerianne', 4, 1);
insert into Departments (ID, Name, Rating, Year) values (60, 'Emmye', 0, 3);
insert into Departments (ID, Name, Rating, Year) values (61, 'Hewie', 2, 1);
insert into Departments (ID, Name, Rating, Year) values (62, 'Nolie', 5, 3);
insert into Departments (ID, Name, Rating, Year) values (63, 'Donny', 4, 2);
insert into Departments (ID, Name, Rating, Year) values (64, 'Nester', 0, 2);
insert into Departments (ID, Name, Rating, Year) values (65, 'Gretal', 1, 0);
insert into Departments (ID, Name, Rating, Year) values (66, 'Ramon', 0, 4);
insert into Departments (ID, Name, Rating, Year) values (67, 'Charlena', 5, 4);
insert into Departments (ID, Name, Rating, Year) values (68, 'Hilarius', 6, 3);
insert into Departments (ID, Name, Rating, Year) values (69, 'Lari', 4, 5);
insert into Departments (ID, Name, Rating, Year) values (70, 'Von', 1, 6);
insert into Departments (ID, Name, Rating, Year) values (71, 'Kimberley', 4, 1);
insert into Departments (ID, Name, Rating, Year) values (72, 'Tyler', 4, 0);
insert into Departments (ID, Name, Rating, Year) values (73, 'Karel', 6, 2);
insert into Departments (ID, Name, Rating, Year) values (74, 'Emelita', 1, 1);
insert into Departments (ID, Name, Rating, Year) values (75, 'Donnell', 3, 3);
insert into Departments (ID, Name, Rating, Year) values (76, 'Cornie', 3, 2);
insert into Departments (ID, Name, Rating, Year) values (77, 'Tades', 2, 6);
insert into Departments (ID, Name, Rating, Year) values (78, 'Hedwiga', 2, 0);
insert into Departments (ID, Name, Rating, Year) values (79, 'Shea', 2, 5);
insert into Departments (ID, Name, Rating, Year) values (80, 'Emili', 4, 2);
insert into Departments (ID, Name, Rating, Year) values (81, 'Davie', 2, 0);
insert into Departments (ID, Name, Rating, Year) values (82, 'Claiborn', 4, 0);
insert into Departments (ID, Name, Rating, Year) values (83, 'Bryan', 1, 5);
insert into Departments (ID, Name, Rating, Year) values (84, 'Lesley', 1, 3);
insert into Departments (ID, Name, Rating, Year) values (85, 'Vickie', 3, 0);
insert into Departments (ID, Name, Rating, Year) values (86, 'Lola', 5, 5);
insert into Departments (ID, Name, Rating, Year) values (87, 'Ginnifer', 4, 5);
insert into Departments (ID, Name, Rating, Year) values (88, 'Rem', 6, 2);
insert into Departments (ID, Name, Rating, Year) values (89, 'Heindrick', 4, 5);
insert into Departments (ID, Name, Rating, Year) values (90, 'Wynn', 1, 0);
insert into Departments (ID, Name, Rating, Year) values (91, 'Dell', 6, 2);
insert into Departments (ID, Name, Rating, Year) values (92, 'Madelyn', 2, 5);
insert into Departments (ID, Name, Rating, Year) values (93, 'Garrick', 0, 0);
insert into Departments (ID, Name, Rating, Year) values (94, 'Brinna', 3, 3);
insert into Departments (ID, Name, Rating, Year) values (95, 'Ingaborg', 0, 1);
insert into Departments (ID, Name, Rating, Year) values (96, 'Manuel', 2, 1);
insert into Departments (ID, Name, Rating, Year) values (97, 'Royce', 5, 0);
insert into Departments (ID, Name, Rating, Year) values (98, 'Cullie', 4, 6);
insert into Departments (ID, Name, Rating, Year) values (99, 'Brade', 6, 3);
insert into Departments (ID, Name, Rating, Year) values (100, 'Hebert', 6, 2);
go

insert into Faculties (ID, Name, Dean) values (1, 'Cassandry', 'Cassandry Gerok');
insert into Faculties (ID, Name, Dean) values (2, 'Rea', 'Rea Benyon');
insert into Faculties (ID, Name, Dean) values (3, 'Livia', 'Livia Goede');
insert into Faculties (ID, Name, Dean) values (4, 'Sayre', 'Sayre Humm');
insert into Faculties (ID, Name, Dean) values (5, 'Tymothy', 'Tymothy Duligal');
insert into Faculties (ID, Name, Dean) values (6, 'Wilfred', 'Wilfred Canceller');
insert into Faculties (ID, Name, Dean) values (7, 'Jillane', 'Jillane Potes');
insert into Faculties (ID, Name, Dean) values (8, 'Grace', 'Grace Shone');
insert into Faculties (ID, Name, Dean) values (9, 'Silas', 'Silas Rides');
insert into Faculties (ID, Name, Dean) values (10, 'Loella', 'Loella Finicj');
insert into Faculties (ID, Name, Dean) values (11, 'Martha', 'Martha Castellini');
insert into Faculties (ID, Name, Dean) values (12, 'Dinah', 'Dinah Lilbourne');
insert into Faculties (ID, Name, Dean) values (13, 'Cecil', 'Cecil Motherwell');
insert into Faculties (ID, Name, Dean) values (14, 'Dalenna', 'Dalenna Thorrold');
insert into Faculties (ID, Name, Dean) values (15, 'Bernadina', 'Bernadina Thewys');
insert into Faculties (ID, Name, Dean) values (16, 'Kaylee', 'Kaylee Ranald');
insert into Faculties (ID, Name, Dean) values (17, 'Allister', 'Allister Crosgrove');
insert into Faculties (ID, Name, Dean) values (18, 'Godart', 'Godart Tunsley');
insert into Faculties (ID, Name, Dean) values (19, 'Dane', 'Dane Bescoby');
insert into Faculties (ID, Name, Dean) values (20, 'Danya', 'Danya Kennsley');
insert into Faculties (ID, Name, Dean) values (21, 'Harrison', 'Harrison Kohnemann');
insert into Faculties (ID, Name, Dean) values (22, 'Elsa', 'Elsa Ragbourn');
insert into Faculties (ID, Name, Dean) values (23, 'Valentijn', 'Valentijn Harty');
insert into Faculties (ID, Name, Dean) values (24, 'Cris', 'Cris Ciciura');
insert into Faculties (ID, Name, Dean) values (25, 'Danila', 'Danila Edgehill');
insert into Faculties (ID, Name, Dean) values (26, 'Juan', 'Juan Trubshawe');
insert into Faculties (ID, Name, Dean) values (27, 'Moyra', 'Moyra Albrecht');
insert into Faculties (ID, Name, Dean) values (28, 'Matilda', 'Matilda Dunseath');
insert into Faculties (ID, Name, Dean) values (29, 'Heywood', 'Heywood Dyka');
insert into Faculties (ID, Name, Dean) values (30, 'Robyn', 'Robyn Felder');
insert into Faculties (ID, Name, Dean) values (31, 'Arda', 'Arda Flood');
insert into Faculties (ID, Name, Dean) values (32, 'Saw', 'Saw Linnitt');
insert into Faculties (ID, Name, Dean) values (33, 'Fredericka', 'Fredericka Ortsmann');
insert into Faculties (ID, Name, Dean) values (34, 'Debora', 'Debora Cocozza');
insert into Faculties (ID, Name, Dean) values (35, 'Biddie', 'Biddie Savins');
insert into Faculties (ID, Name, Dean) values (36, 'Harp', 'Harp Keri');
insert into Faculties (ID, Name, Dean) values (37, 'Cathryn', 'Cathryn Lampen');
insert into Faculties (ID, Name, Dean) values (38, 'Ranna', 'Ranna Burkill');
insert into Faculties (ID, Name, Dean) values (39, 'Nancy', 'Nancy Major');
insert into Faculties (ID, Name, Dean) values (40, 'Natka', 'Natka Grellier');
insert into Faculties (ID, Name, Dean) values (41, 'Gay', 'Gay Learie');
insert into Faculties (ID, Name, Dean) values (42, 'Carolina', 'Carolina Igounet');
insert into Faculties (ID, Name, Dean) values (43, 'Elvin', 'Elvin Cleeves');
insert into Faculties (ID, Name, Dean) values (44, 'Clovis', 'Clovis Flowers');
insert into Faculties (ID, Name, Dean) values (45, 'Agretha', 'Agretha Pendlenton');
insert into Faculties (ID, Name, Dean) values (46, 'Gibbie', 'Gibbie Oleksiak');
insert into Faculties (ID, Name, Dean) values (47, 'Weber', 'Weber Lantiff');
insert into Faculties (ID, Name, Dean) values (48, 'Ara', 'Ara Gerardeaux');
insert into Faculties (ID, Name, Dean) values (49, 'Griffie', 'Griffie Cranny');
insert into Faculties (ID, Name, Dean) values (50, 'Ross', 'Ross McMurrugh');
insert into Faculties (ID, Name, Dean) values (51, 'Natka', 'Natka Stillmann');
insert into Faculties (ID, Name, Dean) values (52, 'Kelsey', 'Kelsey Tethcote');
insert into Faculties (ID, Name, Dean) values (53, 'Merl', 'Merl Jordan');
insert into Faculties (ID, Name, Dean) values (54, 'Andre', 'Andre Sterman');
insert into Faculties (ID, Name, Dean) values (55, 'Rod', 'Rod Moult');
insert into Faculties (ID, Name, Dean) values (56, 'Becki', 'Becki Galliard');
insert into Faculties (ID, Name, Dean) values (57, 'Dore', 'Dore Spears');
insert into Faculties (ID, Name, Dean) values (58, 'Lazar', 'Lazar Zanetto');
insert into Faculties (ID, Name, Dean) values (59, 'Rustie', 'Rustie Duly');
insert into Faculties (ID, Name, Dean) values (60, 'Lavinie', 'Lavinie Winchurst');
insert into Faculties (ID, Name, Dean) values (61, 'Sigrid', 'Sigrid Tucknott');
insert into Faculties (ID, Name, Dean) values (62, 'Birgit', 'Birgit Zaple');
insert into Faculties (ID, Name, Dean) values (63, 'Esmaria', 'Esmaria Coplestone');
insert into Faculties (ID, Name, Dean) values (64, 'Elisha', 'Elisha Crossman');
insert into Faculties (ID, Name, Dean) values (65, 'Torre', 'Torre Ducker');
insert into Faculties (ID, Name, Dean) values (66, 'Lilah', 'Lilah Melling');
insert into Faculties (ID, Name, Dean) values (67, 'Clarita', 'Clarita Lanchberry');
insert into Faculties (ID, Name, Dean) values (68, 'Carleen', 'Carleen Rowling');
insert into Faculties (ID, Name, Dean) values (69, 'Vince', 'Vince Treker');
insert into Faculties (ID, Name, Dean) values (70, 'Egon', 'Egon Matiewe');
insert into Faculties (ID, Name, Dean) values (71, 'Selene', 'Selene Katte');
insert into Faculties (ID, Name, Dean) values (72, 'Dulcie', 'Dulcie Padillo');
insert into Faculties (ID, Name, Dean) values (73, 'Meriel', 'Meriel Goss');
insert into Faculties (ID, Name, Dean) values (74, 'Elicia', 'Elicia Dallman');
insert into Faculties (ID, Name, Dean) values (75, 'Rogerio', 'Rogerio Juanes');
insert into Faculties (ID, Name, Dean) values (76, 'Brigham', 'Brigham Gilliard');
insert into Faculties (ID, Name, Dean) values (77, 'Teddi', 'Teddi Tyreman');
insert into Faculties (ID, Name, Dean) values (78, 'Annmaria', 'Annmaria Keese');
insert into Faculties (ID, Name, Dean) values (79, 'Aylmar', 'Aylmar Spurdens');
insert into Faculties (ID, Name, Dean) values (80, 'Conroy', 'Conroy Keal');
insert into Faculties (ID, Name, Dean) values (81, 'Kendricks', 'Kendricks Putson');
insert into Faculties (ID, Name, Dean) values (82, 'Omero', 'Omero Birkenshaw');
insert into Faculties (ID, Name, Dean) values (83, 'Sapphira', 'Sapphira McGinny');
insert into Faculties (ID, Name, Dean) values (84, 'Alexina', 'Alexina Nye');
insert into Faculties (ID, Name, Dean) values (85, 'Dana', 'Dana Carsey');
insert into Faculties (ID, Name, Dean) values (86, 'Gerardo', 'Gerardo Whitworth');
insert into Faculties (ID, Name, Dean) values (87, 'Tito', 'Tito Castel');
insert into Faculties (ID, Name, Dean) values (88, 'Cash', 'Cash O''Kielt');
insert into Faculties (ID, Name, Dean) values (89, 'Christan', 'Christan Bortolussi');
insert into Faculties (ID, Name, Dean) values (90, 'Robb', 'Robb Tireman');
insert into Faculties (ID, Name, Dean) values (91, 'Frieda', 'Frieda Loader');
insert into Faculties (ID, Name, Dean) values (92, 'Ajay', 'Ajay Ogan');
insert into Faculties (ID, Name, Dean) values (93, 'Evy', 'Evy Walesby');
insert into Faculties (ID, Name, Dean) values (94, 'Kylila', 'Kylila MacMarcuis');
insert into Faculties (ID, Name, Dean) values (95, 'Oren', 'Oren Brookes');
insert into Faculties (ID, Name, Dean) values (96, 'Brigham', 'Brigham Handrok');
insert into Faculties (ID, Name, Dean) values (97, 'Bernarr', 'Bernarr Grevel');
insert into Faculties (ID, Name, Dean) values (98, 'Aldous', 'Aldous Marks');
insert into Faculties (ID, Name, Dean) values (99, 'Galina', 'Galina Alesi');
insert into Faculties (ID, Name, Dean) values (100, 'Orbadiah', 'Orbadiah Dagon');
go

insert into Groups (ID, Name, Rating, Year) values (1, 'Edgardo', 5, 4);
insert into Groups (ID, Name, Rating, Year) values (2, 'Arlee', 1, 5);
insert into Groups (ID, Name, Rating, Year) values (3, 'Jada', 2, 3);
insert into Groups (ID, Name, Rating, Year) values (4, 'Gallagher', 4, 2);
insert into Groups (ID, Name, Rating, Year) values (5, 'Taffy', 1, 0);
insert into Groups (ID, Name, Rating, Year) values (6, 'Vanni', 6, 4);
insert into Groups (ID, Name, Rating, Year) values (7, 'Ailbert', 1, 0);
insert into Groups (ID, Name, Rating, Year) values (8, 'Lorine', 2, 5);
insert into Groups (ID, Name, Rating, Year) values (9, 'Burch', 4, 3);
insert into Groups (ID, Name, Rating, Year) values (10, 'Kiel', 3, 0);
insert into Groups (ID, Name, Rating, Year) values (11, 'Cassius', 5, 4);
insert into Groups (ID, Name, Rating, Year) values (12, 'Melita', 0, 2);
insert into Groups (ID, Name, Rating, Year) values (13, 'Bliss', 0, 4);
insert into Groups (ID, Name, Rating, Year) values (14, 'Clayson', 3, 6);
insert into Groups (ID, Name, Rating, Year) values (15, 'Sena', 4, 1);
insert into Groups (ID, Name, Rating, Year) values (16, 'Sidoney', 5, 4);
insert into Groups (ID, Name, Rating, Year) values (17, 'Myrah', 0, 2);
insert into Groups (ID, Name, Rating, Year) values (18, 'Bartholomew', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (19, 'Joya', 2, 3);
insert into Groups (ID, Name, Rating, Year) values (20, 'Thia', 2, 6);
insert into Groups (ID, Name, Rating, Year) values (21, 'Jsandye', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (22, 'Forester', 2, 2);
insert into Groups (ID, Name, Rating, Year) values (23, 'Rory', 5, 4);
insert into Groups (ID, Name, Rating, Year) values (24, 'Cross', 0, 6);
insert into Groups (ID, Name, Rating, Year) values (25, 'Kingston', 2, 0);
insert into Groups (ID, Name, Rating, Year) values (26, 'Jareb', 6, 3);
insert into Groups (ID, Name, Rating, Year) values (27, 'Rycca', 4, 2);
insert into Groups (ID, Name, Rating, Year) values (28, 'Alaine', 2, 2);
insert into Groups (ID, Name, Rating, Year) values (29, 'Lydie', 1, 1);
insert into Groups (ID, Name, Rating, Year) values (30, 'Ellynn', 2, 4);
insert into Groups (ID, Name, Rating, Year) values (31, 'Pippa', 5, 5);
insert into Groups (ID, Name, Rating, Year) values (32, 'Verge', 1, 3);
insert into Groups (ID, Name, Rating, Year) values (33, 'Bobbi', 1, 6);
insert into Groups (ID, Name, Rating, Year) values (34, 'Emmie', 0, 6);
insert into Groups (ID, Name, Rating, Year) values (35, 'Laird', 1, 1);
insert into Groups (ID, Name, Rating, Year) values (36, 'Maxie', 0, 1);
insert into Groups (ID, Name, Rating, Year) values (37, 'Faustina', 3, 2);
insert into Groups (ID, Name, Rating, Year) values (38, 'Dag', 3, 0);
insert into Groups (ID, Name, Rating, Year) values (39, 'Bank', 4, 6);
insert into Groups (ID, Name, Rating, Year) values (40, 'Wendy', 3, 0);
insert into Groups (ID, Name, Rating, Year) values (41, 'Vinni', 6, 2);
insert into Groups (ID, Name, Rating, Year) values (42, 'Hailee', 0, 1);
insert into Groups (ID, Name, Rating, Year) values (43, 'Anna-diana', 1, 3);
insert into Groups (ID, Name, Rating, Year) values (44, 'Adolpho', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (45, 'Klaus', 2, 1);
insert into Groups (ID, Name, Rating, Year) values (46, 'Justus', 2, 0);
insert into Groups (ID, Name, Rating, Year) values (47, 'Manny', 1, 3);
insert into Groups (ID, Name, Rating, Year) values (48, 'Danika', 5, 0);
insert into Groups (ID, Name, Rating, Year) values (49, 'Blaine', 2, 1);
insert into Groups (ID, Name, Rating, Year) values (50, 'Silvain', 5, 1);
insert into Groups (ID, Name, Rating, Year) values (51, 'Issy', 4, 6);
insert into Groups (ID, Name, Rating, Year) values (52, 'Jade', 0, 3);
insert into Groups (ID, Name, Rating, Year) values (53, 'Barbra', 6, 5);
insert into Groups (ID, Name, Rating, Year) values (54, 'Patrick', 4, 1);
insert into Groups (ID, Name, Rating, Year) values (55, 'Eldon', 2, 3);
insert into Groups (ID, Name, Rating, Year) values (56, 'Galen', 1, 2);
insert into Groups (ID, Name, Rating, Year) values (57, 'Nicko', 2, 5);
insert into Groups (ID, Name, Rating, Year) values (58, 'Mallorie', 6, 5);
insert into Groups (ID, Name, Rating, Year) values (59, 'Zaria', 4, 0);
insert into Groups (ID, Name, Rating, Year) values (60, 'Harp', 0, 6);
insert into Groups (ID, Name, Rating, Year) values (61, 'Morten', 1, 4);
insert into Groups (ID, Name, Rating, Year) values (62, 'Maurizio', 2, 3);
insert into Groups (ID, Name, Rating, Year) values (63, 'Peria', 1, 4);
insert into Groups (ID, Name, Rating, Year) values (64, 'Anastasie', 6, 6);
insert into Groups (ID, Name, Rating, Year) values (65, 'Lukas', 2, 6);
insert into Groups (ID, Name, Rating, Year) values (66, 'Rainer', 1, 4);
insert into Groups (ID, Name, Rating, Year) values (67, 'Anthony', 5, 5);
insert into Groups (ID, Name, Rating, Year) values (68, 'Casandra', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (69, 'Dulcea', 2, 4);
insert into Groups (ID, Name, Rating, Year) values (70, 'Vito', 1, 5);
insert into Groups (ID, Name, Rating, Year) values (71, 'Jewell', 4, 3);
insert into Groups (ID, Name, Rating, Year) values (72, 'Othilie', 5, 1);
insert into Groups (ID, Name, Rating, Year) values (73, 'Tildy', 4, 0);
insert into Groups (ID, Name, Rating, Year) values (74, 'Mona', 3, 6);
insert into Groups (ID, Name, Rating, Year) values (75, 'Donnamarie', 5, 3);
insert into Groups (ID, Name, Rating, Year) values (76, 'Oliviero', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (77, 'Gilli', 5, 0);
insert into Groups (ID, Name, Rating, Year) values (78, 'Kathleen', 4, 0);
insert into Groups (ID, Name, Rating, Year) values (79, 'Cosimo', 0, 0);
insert into Groups (ID, Name, Rating, Year) values (80, 'Fabian', 6, 2);
insert into Groups (ID, Name, Rating, Year) values (81, 'Ezekiel', 6, 0);
insert into Groups (ID, Name, Rating, Year) values (82, 'Desirae', 1, 6);
insert into Groups (ID, Name, Rating, Year) values (83, 'Fredra', 1, 6);
insert into Groups (ID, Name, Rating, Year) values (84, 'Adda', 3, 4);
insert into Groups (ID, Name, Rating, Year) values (85, 'Silvano', 6, 6);
insert into Groups (ID, Name, Rating, Year) values (86, 'Katti', 6, 3);
insert into Groups (ID, Name, Rating, Year) values (87, 'Mendie', 4, 6);
insert into Groups (ID, Name, Rating, Year) values (88, 'Yurik', 6, 4);
insert into Groups (ID, Name, Rating, Year) values (89, 'Leanor', 0, 2);
insert into Groups (ID, Name, Rating, Year) values (90, 'Frank', 6, 2);
insert into Groups (ID, Name, Rating, Year) values (91, 'Chloette', 1, 0);
insert into Groups (ID, Name, Rating, Year) values (92, 'Reginald', 4, 0);
insert into Groups (ID, Name, Rating, Year) values (93, 'Udell', 2, 2);
insert into Groups (ID, Name, Rating, Year) values (94, 'Mahmud', 5, 0);
insert into Groups (ID, Name, Rating, Year) values (95, 'Maryl', 6, 6);
insert into Groups (ID, Name, Rating, Year) values (96, 'Kacie', 1, 1);
insert into Groups (ID, Name, Rating, Year) values (97, 'Ivory', 5, 5);
insert into Groups (ID, Name, Rating, Year) values (98, 'Teresa', 3, 0);
insert into Groups (ID, Name, Rating, Year) values (99, 'Tilly', 6, 1);
insert into Groups (ID, Name, Rating, Year) values (100, 'Dolf', 5, 6);
go

insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (1, '8/6/1989', true, true, 'Brnaby', 'Lecturer', '$55.51', '$805.02', 'Goodhall');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (2, '1/26/2025', false, false, 'Dante', 'Assistant', '$63.49', '$1143.97', 'Gallego');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (3, '5/23/2014', true, false, 'Haily', 'Senior Lecturer Associate', '$92.23', '$26.45', 'Abercrombie');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (4, '9/17/2014', true, true, 'Corney', 'Lecturer', '$59.19', '$623.03', 'Mabbs');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (5, '2/18/2011', false, true, 'Jaquenette', 'Senior Lecturer Associate', '$29.47', '$1296.84', 'Itzig');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (6, '10/12/2019', false, false, 'Simona', 'Assistant', '$30.50', '$1799.26', 'Bris');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (7, '12/20/1994', true, true, 'Broddie', 'Professor', '$53.65', '$867.64', 'Merigot');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (8, '7/1/1996', true, false, 'Francine', 'Senior Lecturer Associate', '$48.13', '$2645.36', 'Cabel');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (9, '4/24/2018', false, true, 'Gavrielle', 'Lecturer', '$62.28', '$799.60', 'Steljes');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (10, '5/23/1992', true, true, 'Barry', 'Assistant', '$33.42', '$2089.46', 'Cosstick');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (11, '1/6/2019', true, true, 'Olly', 'Professor', '$61.55', '$1533.41', 'Miskin');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (12, '5/4/1997', true, false, 'Hector', 'Senior Lecturer Associate', '$6.57', '$1197.03', 'Guinane');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (13, '12/24/1998', true, true, 'Brodie', 'Senior Lecturer Associate', '$37.07', '$1109.10', 'Shuter');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (14, '12/5/2021', false, true, 'Euell', 'Professor', '$32.00', '$553.13', 'Rumney');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (15, '8/9/1993', false, true, 'Ira', 'Lecturer', '$9.57', '$1939.65', 'Crumly');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (16, '2/23/2006', false, true, 'Cletis', 'Professor', '$54.89', '$2614.81', 'Codd');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (17, '1/26/2004', true, false, 'Devonne', 'Professor', '$3.16', '$415.59', 'Curry');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (18, '9/15/2004', false, true, 'Hobey', 'Professor', '$25.69', '$953.61', 'Summerbell');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (19, '6/1/1996', true, true, 'Christoforo', 'Senior Lecturer Associate', '$71.70', '$2826.12', 'Merchant');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (20, '6/23/2005', true, false, 'Trisha', 'Lecturer', '$42.20', '$1760.94', 'Stroton');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (21, '3/8/2022', true, true, 'Levey', 'Senior Lecturer Associate', '$11.42', '$98.81', 'Itzkin');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (22, '3/15/1999', false, false, 'Nona', 'Professor', '$71.78', '$1693.84', 'Reddle');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (23, '1/23/1996', false, false, 'Viv', 'Assistant', '$1.85', '$1739.28', 'Beney');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (24, '11/9/2016', true, false, 'Antoni', 'Assistant', '$10.02', '$2271.44', 'Londsdale');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (25, '7/19/1991', true, false, 'Milo', 'Senior Lecturer Associate', '$72.86', '$2519.34', 'Dyble');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (26, '9/18/2014', false, true, 'Tore', 'Professor', '$96.25', '$857.51', 'Sebrens');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (27, '3/27/2010', false, false, 'Merwyn', 'Professor', '$49.31', '$2650.45', 'Radoux');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (28, '9/26/2025', true, false, 'Fifi', 'Professor', '$34.61', '$213.99', 'Cheale');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (29, '5/25/1997', true, true, 'Rois', 'Professor', '$15.36', '$2026.05', 'Torrejon');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (30, '3/20/2008', false, false, 'Zsa zsa', 'Professor', '$16.46', '$2080.86', 'Jardin');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (31, '7/31/1989', true, false, 'Haleigh', 'Professor', '$50.10', '$1679.73', 'McClenan');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (32, '8/7/2019', true, false, 'Alexandrina', 'Lecturer', '$72.93', '$140.93', 'Foulis');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (33, '12/25/1997', false, false, 'Anita', 'Professor', '$74.35', '$375.47', 'Trevithick');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (34, '12/6/2011', true, false, 'Ellyn', 'Professor', '$30.78', '$1821.79', 'Delaney');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (35, '2/12/2013', true, true, 'Mirelle', 'Assistant', '$57.96', '$2258.27', 'Branni');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (36, '2/21/2019', false, false, 'Arlee', 'Senior Lecturer Associate', '$13.36', '$2674.65', 'Carress');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (37, '12/4/2012', false, false, 'Bennie', 'Assistant', '$79.57', '$409.24', 'Boult');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (38, '6/25/1999', true, true, 'Hamlen', 'Senior Lecturer Associate', '$89.92', '$1185.92', 'Kaser');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (39, '6/30/2018', true, true, 'Josias', 'Lecturer', '$75.66', '$2897.50', 'Casajuana');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (40, '10/15/2013', false, true, 'Bryce', 'Lecturer', '$3.62', '$588.83', 'Hutten');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (41, '8/22/2001', false, false, 'Nathaniel', 'Lecturer', '$27.88', '$553.47', 'Stickler');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (42, '10/9/2003', false, false, 'Sofie', 'Professor', '$51.70', '$2621.12', 'Alliston');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (43, '12/24/2011', false, false, 'Grethel', 'Assistant', '$90.65', '$2172.41', 'Ayres');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (44, '12/7/2002', false, true, 'Bradley', 'Lecturer', '$0.56', '$933.91', 'Szantho');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (45, '3/22/2012', true, false, 'Flory', 'Professor', '$95.59', '$2329.87', 'Hellyar');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (46, '12/18/2007', true, true, 'Ferne', 'Lecturer', '$86.20', '$88.52', 'Tows');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (47, '6/18/2005', false, true, 'Nealy', 'Professor', '$48.52', '$1056.51', 'Britten');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (48, '2/7/2022', true, true, 'Bruno', 'Professor', '$38.98', '$2729.13', 'Giovanardi');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (49, '8/12/2013', true, true, 'Gavra', 'Professor', '$98.69', '$1604.61', 'Haughan');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (50, '4/7/2008', false, false, 'Lanny', 'Assistant', '$71.26', '$2814.32', 'Remington');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (51, '11/29/2008', false, false, 'Diarmid', 'Professor', '$32.62', '$1519.48', 'Strowthers');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (52, '10/11/1995', true, true, 'Derron', 'Professor', '$62.51', '$2122.90', 'Bysouth');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (53, '12/5/1989', false, false, 'Nariko', 'Assistant', '$58.43', '$1880.75', 'Bradane');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (54, '11/24/2024', false, false, 'Susan', 'Lecturer', '$35.20', '$1629.30', 'Crighten');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (55, '8/11/2008', true, false, 'Brien', 'Lecturer', '$10.18', '$2103.70', 'Mosco');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (56, '3/8/2011', true, true, 'Lurette', 'Assistant', '$92.73', '$2395.21', 'Kalf');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (57, '3/28/2010', false, false, 'Astrix', 'Assistant', '$15.55', '$2623.78', 'Cuschieri');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (58, '9/20/2025', true, true, 'Danielle', 'Lecturer', '$77.15', '$914.34', 'Mithan');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (59, '6/30/1994', false, true, 'Christophorus', 'Senior Lecturer Associate', '$91.02', '$2032.36', 'Pietersen');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (60, '3/10/2003', false, false, 'Immanuel', 'Professor', '$57.18', '$99.30', 'Gallymore');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (61, '12/26/2003', false, false, 'Kiele', 'Senior Lecturer Associate', '$4.17', '$709.75', 'Chatres');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (62, '1/7/1994', true, true, 'Stanislaus', 'Assistant', '$91.06', '$2925.57', 'Lester');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (63, '9/3/1999', true, false, 'Loella', 'Assistant', '$80.26', '$2201.60', 'Pettiford');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (64, '8/28/2014', true, false, 'Marietta', 'Professor', '$95.94', '$2267.59', 'Yeabsley');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (65, '9/17/2015', true, false, 'Chauncey', 'Professor', '$37.29', '$1706.80', 'Lemary');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (66, '6/3/2022', false, true, 'Garner', 'Assistant', '$89.71', '$2336.06', 'Tenby');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (67, '5/13/1995', false, false, 'Ludovika', 'Professor', '$42.12', '$501.90', 'Fridlington');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (68, '9/21/2022', false, true, 'Orv', 'Lecturer', '$51.36', '$2554.81', 'Enticott');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (69, '9/26/1990', false, true, 'Gretel', 'Senior Lecturer Associate', '$65.27', '$2825.47', 'Goodricke');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (70, '10/20/2016', false, false, 'Leland', 'Senior Lecturer Associate', '$41.79', '$942.77', 'Belderson');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (71, '11/22/2000', false, false, 'Padraig', 'Professor', '$49.83', '$2251.29', 'Quan');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (72, '1/10/1991', false, true, 'Dominica', 'Lecturer', '$8.06', '$2159.28', 'Minett');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (73, '4/18/2023', true, true, 'Amalee', 'Assistant', '$33.11', '$1791.99', 'Rossbrook');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (74, '3/20/1998', false, true, 'Olenka', 'Assistant', '$70.63', '$299.25', 'Harbisher');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (75, '3/15/2017', false, true, 'Burton', 'Assistant', '$19.24', '$781.35', 'Tradewell');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (76, '10/30/2016', false, true, 'Lynn', 'Assistant', '$26.58', '$2988.01', 'Grahamslaw');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (77, '12/2/2014', true, true, 'Dom', 'Professor', '$8.66', '$1018.22', 'Batters');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (78, '8/17/2000', false, false, 'Manon', 'Senior Lecturer Associate', '$55.62', '$1079.16', 'Tooze');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (79, '4/15/2002', false, true, 'Enoch', 'Senior Lecturer Associate', '$95.30', '$1898.58', 'Monk');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (80, '9/30/2012', false, true, 'Hobard', 'Professor', '$7.24', '$2157.77', 'Houston');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (81, '2/24/2018', false, false, 'Paulie', 'Assistant', '$98.48', '$2464.03', 'Lamberteschi');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (82, '11/28/2012', false, false, 'Falkner', 'Professor', '$35.48', '$1379.00', 'Gosker');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (83, '4/11/1999', false, false, 'Ralf', 'Lecturer', '$32.04', '$1524.41', 'Moubray');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (84, '7/19/1998', true, false, 'Kira', 'Lecturer', '$57.83', '$275.38', 'Rosenqvist');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (85, '11/6/2017', false, false, 'Agatha', 'Lecturer', '$16.18', '$520.87', 'Gittoes');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (86, '7/10/1995', false, false, 'Thane', 'Assistant', '$82.18', '$1755.40', 'Lapworth');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (87, '2/5/2023', true, true, 'Harriott', 'Lecturer', '$69.73', '$2862.73', 'Cymper');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (88, '8/21/1996', true, true, 'Edsel', 'Assistant', '$6.71', '$734.22', 'Barke');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (89, '1/30/2000', false, false, 'Kizzee', 'Professor', '$15.28', '$309.12', 'Kinahan');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (90, '7/23/2025', true, false, 'Mavra', 'Lecturer', '$19.38', '$1045.45', 'Robben');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (91, '5/8/2011', false, false, 'Dick', 'Professor', '$52.34', '$2274.15', 'Quinton');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (92, '9/18/1997', false, true, 'Jenny', 'Lecturer', '$21.46', '$1261.15', 'Salt');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (93, '7/12/2010', false, false, 'Lorry', 'Professor', '$18.20', '$224.23', 'Edworthye');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (94, '2/9/2001', false, false, 'Tomas', 'Professor', '$41.30', '$123.60', 'Gresham');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (95, '5/3/2018', true, true, 'Berton', 'Professor', '$4.21', '$731.00', 'Redihough');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (96, '12/8/1994', false, false, 'Rowney', 'Professor', '$83.08', '$2679.90', 'Wraight');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (97, '10/22/2013', true, true, 'Brynn', 'Senior Lecturer Associate', '$28.10', '$2190.88', 'Philbin');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (98, '1/21/2010', true, true, 'Ashil', 'Professor', '$76.43', '$2688.37', 'McFaul');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (99, '10/19/2023', false, false, 'Hamlen', 'Professor', '$77.94', '$1384.33', 'Pearl');
insert into Teachers (ID, EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) values (100, '11/6/2017', true, false, 'Abbie', 'Lecturer', '$38.07', '$1133.48', 'Gronous');
