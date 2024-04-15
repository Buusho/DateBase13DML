CREATE TABLE students13
(
    id         serial primary key,
    first_name varchar not null,
    last_name  varchar,
    age        int,
    email      varchar unique,
    course     varchar,
    exam_point int
);

insert into students13 (first_name, last_name, age, email, course, exam_point)
values ('Bektur', 'Duishembek uluu', 23, 'bektur@email.com', 'Java', 80),
       ('Adyl', 'Tolomushev', 18, 'adyl@gmail.com', 'JS', 100),
       ('Nurkyz', 'Zikirdinova', 19, 'nurkyz@gmail.com', 'JS', 60),
       ('Nurtilek', 'Abdippataev', 18, 'nurtilek@gmail.com', 'Java', 75),
       ('Muktarbek', 'Elebesov', 18, 'muktar@gmail.com', 'Java', 90),
       ('Beksultan', 'Isaev', 21, 'beksultan@gmail.com', 'JS', 70),
       ('Eldiyar', 'Ayazbekov', 17, 'eldiyar@gmail.com', 'Java', 85),
       ('Bektur', 'Temirbekov', 32, 'bektur@gmail.com', 'JS', 65),
       ('Nurmuhammed', 'Rusbaev', 17, 'nurmuhammed@gmail.com', 'Java', 70),
       ('Nurmuhamed', 'Akimbaev', 18, 'nurmuhamed@gmail.com', 'JS', 80);
-- * All
select *
from students13;

select students13.first_name, students13.last_name
from students13;

select students13.first_name as name
from students13;
--concat Adyl(first_name) + Tolomushev(last_name) = Adyl Tolomushev concatination
select concat(first_name, ' ', last_name) as fullName
from students13;

select first_name, last_name
from students13
order by first_name;

select age
from students13
order by age desc;

select distinct students13.first_name
from students13;

select students13.first_name, students13.last_name, students13.course
from students13
where course = 'Java';

select students13.first_name, students13.age
from students13
where age < 18;

select students13.first_name, students13.last_name, students13.course, students13.exam_point
from students13
where exam_point <> 80;

select students13.first_name, students13.last_name
from students13
where age = 18
  and course = 'JS';

select students13.first_name, students13.last_name, course, students13.exam_point
from students13
where exam_point = 80
   or course = 'Java';

select students13.first_name, students13.last_name
from students13 fetch first 10 rows only;


create table people
(
    id         INT,
    first_name VARCHAR(50),
    last_name  VARCHAR(50),
    email      VARCHAR(50),
    gender     VARCHAR(50),
    age        int,
    language   VARCHAR(50)
);
insert into people (id, first_name, last_name, email, gender, age, language)
values (1, 'Joela', 'Cattonnet', 'jcattonnet0@nasa.gov', 'Female', 19, 'Somali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (2, 'Dorothy', 'Onions', 'donions1@stumbleupon.com', 'Female', 20, 'Filipino');
insert into people (id, first_name, last_name, email, gender, age, language)
values (3, 'Conrado', 'Batstone', 'cbatstone2@clickbank.net', 'Male', 34, 'Irish Gaelic');
insert into people (id, first_name, last_name, email, gender, age, language)
values (4, 'Andre', 'MacGillespie', 'amacgillespie3@amazonaws.com', 'Male', 12, 'English');
insert into people (id, first_name, last_name, email, gender, age, language)
values (5, 'Vlad', 'Elson', 'velson4@reference.com', 'Male', 15, 'Montenegrin');
insert into people (id, first_name, last_name, email, gender, age, language)
values (6, 'Arman', 'Matejic', 'amatejic5@linkedin.com', 'Male', 19, 'Papiamento');
insert into people (id, first_name, last_name, email, gender, age, language)
values (7, 'Perkin', 'Altham', 'paltham6@hibu.com', 'Male', 45, 'Zulu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (8, 'Nathan', 'Dommett', 'ndommett7@storify.com', 'Male', 23, 'Polish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (9, 'Rahal', 'Dericot', 'rdericot8@twitter.com', 'Female', 48, 'Armenian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (10, 'Alonso', 'Marusik', 'amarusik9@blogtalkradio.com', 'Male', 67, 'Swahili');
insert into people (id, first_name, last_name, email, gender, age, language)
values (11, 'Clari', 'Wipper', 'cwippera@twitter.com', 'Female', 18, 'Montenegrin');
insert into people (id, first_name, last_name, email, gender, age, language)
values (12, 'Andonis', 'Pointon', 'apointonb@soundcloud.com', 'Male', 20, 'Ndebele');
insert into people (id, first_name, last_name, email, gender, age, language)
values (13, 'Orelia', 'Besson', 'obessonc@hubpages.com', 'Female', 19, 'Czech');
insert into people (id, first_name, last_name, email, gender, age, language)
values (14, 'Tulley', 'Swann', 'tswannd@tinyurl.com', 'Male', 35, 'Zulu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (15, 'Kirstin', 'Driffill', 'kdriffille@smh.com.au', 'Female', 20, 'Guaraní');
insert into people (id, first_name, last_name, email, gender, age, language)
values (16, 'Garvy', 'Sherry', 'gsherryf@nyu.edu', 'Male', 26, 'Punjabi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (17, 'Morgen', 'Snoxell', 'msnoxellg@bandcamp.com', 'Male', 28, 'Nepali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (18, 'Janine', 'Curl', 'jcurlh@slate.com', 'Female', 27, 'Kyrgyz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (19, 'Lilllie', 'Barnsdall', 'lbarnsdalli@disqus.com', 'Female', 20, 'Bulgarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (20, 'Dynah', 'Tincombe', 'dtincombej@sciencedaily.com', 'Female', 24, 'Khmer');
insert into people (id, first_name, last_name, email, gender, age, language)
values (21, 'Sacha', 'Matthius', 'smatthiusk@ca.gov', 'Female', 22, 'Arabic');
insert into people (id, first_name, last_name, email, gender, age, language)
values (22, 'Raynard', 'Gerrans', 'rgerransl@i2i.jp', 'Male', 21, 'Ndebele');
insert into people (id, first_name, last_name, email, gender, age, language)
values (23, 'Tom', 'Machent', 'tmachentm@mlb.com', 'Male', 29, 'Polish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (24, 'Fabien', 'Forrest', 'fforrestn@house.gov', 'Male', 47, 'Aymara');
insert into people (id, first_name, last_name, email, gender, age, language)
values (25, 'Mickie', 'Coal', 'mcoalo@seesaa.net', 'Male', 25, 'Aymara');
insert into people (id, first_name, last_name, email, gender, age, language)
values (26, 'Tana', 'Weeds', 'tweedsp@shinystat.com', 'Female', 36, 'Montenegrin');
insert into people (id, first_name, last_name, email, gender, age, language)
values (27, 'Ilka', 'McMichan', 'imcmichanq@bigcartel.com', 'Female', 39, 'Swahili');
insert into people (id, first_name, last_name, email, gender, age, language)
values (28, 'Mychal', 'Mapplebeck', 'mmapplebeckr@acquirethisname.com', 'Male', 30, 'Filipino');
insert into people (id, first_name, last_name, email, gender, age, language)
values (29, 'Melody', 'Beck', 'mbecks@pcworld.com', 'Female', 37, 'Kazakh');
insert into people (id, first_name, last_name, email, gender, age, language)
values (30, 'Lezley', 'Summerbell', 'lsummerbellt@cocolog-nifty.com', 'Male', 56, 'Maltese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (31, 'Gaye', 'Withringten', 'gwithringtenu@discovery.com', 'Female', 43, 'Swedish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (32, 'Leonelle', 'Baggallay', 'lbaggallayv@i2i.jp', 'Female', 20, 'Greek');
insert into people (id, first_name, last_name, email, gender, age, language)
values (33, 'Shir', 'Trevarthen', 'strevarthenw@pagesperso-orange.fr', 'Female', 29, 'Swahili');
insert into people (id, first_name, last_name, email, gender, age, language)
values (34, 'Ddene', 'Hamlen', 'dhamlenx@theguardian.com', 'Female', 76, 'Croatian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (35, 'Juditha', 'Yellowlea', 'jyellowleay@cafepress.com', 'Female', 54, 'Persian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (36, 'Danika', 'Stinson', 'dstinsonz@vinaora.com', 'Female', 38, 'Bosnian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (37, 'Garrek', 'Bartalini', 'gbartalini10@bing.com', 'Male', 50, 'Kazakh');
insert into people (id, first_name, last_name, email, gender, age, language)
values (38, 'Seumas', 'Silman', 'ssilman11@usda.gov', 'Male', 47, 'Indonesian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (39, 'Julius', 'Leftley', 'jleftley12@angelfire.com', 'Male', 44, 'Lithuanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (40, 'Jeanine', 'Sprankling', 'jsprankling13@phpbb.com', 'Female', 34, 'Romanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (41, 'Clywd', 'Cowles', 'ccowles14@prweb.com', 'Male', 75, 'Gagauz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (42, 'Rahel', 'Vasilevich', 'rvasilevich15@ustream.tv', 'Female', 54, 'Zulu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (43, 'Alexandr', 'Obell', 'aobell16@marriott.com', 'Male', 14, 'Filipino');
insert into people (id, first_name, last_name, email, gender, age, language)
values (44, 'Becky', 'Learoyde', 'blearoyde17@networkadvertising.org', 'Female', 35, 'Georgian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (45, 'Giustino', 'Putt', 'gputt18@vistaprint.com', 'Male', 43, 'Estonian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (46, 'Uta', 'Tonbridge', 'utonbridge19@123-reg.co.uk', 'Female', 55, 'Chinese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (47, 'Granthem', 'Diver', 'gdiver1a@un.org', 'Male', 76, 'Bengali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (48, 'Livvy', 'Akister', 'lakister1b@nhs.uk', 'Female', 45, 'Burmese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (49, 'Valle', 'Greenwood', 'vgreenwood1c@tmall.com', 'Male', 65, 'Guaraní');
insert into people (id, first_name, last_name, email, gender, age, language)
values (50, 'Nicole', 'Coey', 'ncoey1d@mail.ru', 'Female', 42, 'German');
insert into people (id, first_name, last_name, email, gender, age, language)
values (51, 'Aldo', 'Grigolon', 'agrigolon1e@shop-pro.jp', 'Male', 65, 'Czech');
insert into people (id, first_name, last_name, email, gender, age, language)
values (52, 'Adam', 'Dalzell', 'adalzell1f@rakuten.co.jp', 'Male', 54, 'Gujarati');
insert into people (id, first_name, last_name, email, gender, age, language)
values (53, 'Charmian', 'Chatband', 'cchatband1g@archive.org', 'Female', 34, 'Greek');
insert into people (id, first_name, last_name, email, gender, age, language)
values (54, 'Alic', 'Kinnett', 'akinnett1h@stanford.edu', 'Male', 87, 'Yiddish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (55, 'Willette', 'Ryles', 'wryles1i@unblog.fr', 'Female', 78, 'Lao');
insert into people (id, first_name, last_name, email, gender, age, language)
values (56, 'Birk', 'Fleeman', 'bfleeman1j@google.com.br', 'Male', 56, 'Hungarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (57, 'Artie', 'Ginnelly', 'aginnelly1k@mapquest.com', 'Male', 52, 'Arabic');
insert into people (id, first_name, last_name, email, gender, age, language)
values (58, 'Ricki', 'Barras', 'rbarras1l@tripadvisor.com', 'Male', 25, 'Latvian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (59, 'Zondra', 'Scolli', 'zscolli1m@goodreads.com', 'Female', 54, 'Mongolian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (60, 'Kaitlyn', 'Marle', 'kmarle1n@4shared.com', 'Female', 34, 'New Zealand Sign Language');
insert into people (id, first_name, last_name, email, gender, age, language)
values (61, 'Cam', 'Jurkowski', 'cjurkowski1o@amazon.de', 'Male', 76, 'Nepali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (62, 'Pooh', 'Kilgrove', 'pkilgrove1p@dailymotion.com', 'Male', 32, 'Bulgarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (63, 'Abbe', 'Solway', 'asolway1q@java.com', 'Female', 33, 'Gagauz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (64, 'Morey', 'Santos', 'msantos1r@is.gd', 'Male', 44, 'Quechua');
insert into people (id, first_name, last_name, email, gender, age, language)
values (65, 'Tedman', 'Pedley', 'tpedley1s@thetimes.co.uk', 'Male', 55, 'Māori');
insert into people (id, first_name, last_name, email, gender, age, language)
values (66, 'Hiram', 'Buckham', 'hbuckham1t@mtv.com', 'Male', 66, 'Punjabi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (67, 'Aurora', 'Addison', 'aaddison1u@unicef.org', 'Female', 77, 'Montenegrin');
insert into people (id, first_name, last_name, email, gender, age, language)
values (68, 'Herb', 'Pickin', 'hpickin1v@upenn.edu', 'Male', 88, 'Māori');
insert into people (id, first_name, last_name, email, gender, age, language)
values (69, 'Upton', 'Antosch', 'uantosch1w@amazon.com', 'Male', 43, 'West Frisian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (70, 'Verene', 'Bettesworth', 'vbettesworth1x@g.co', 'Female', 23, 'Kazakh');
insert into people (id, first_name, last_name, email, gender, age, language)
values (71, 'Allianora', 'Iorizzo', 'aiorizzo1y@ameblo.jp', 'Female', 86, 'Hiri Motu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (72, 'Abigale', 'Berge', 'aberge1z@usatoday.com', 'Female', 54, 'Dhivehi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (73, 'Kerrie', 'Husthwaite', 'khusthwaite20@mashable.com', 'Female', 43, 'Maltese');
insert into people (id, first_name, last_name, email, gender, age, language)
values (74, 'Eberto', 'Gemeau', 'egemeau21@gmpg.org', 'Male', 76, 'Nepali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (75, 'Anestassia', 'Quarrie', 'aquarrie22@marriott.com', 'Female', 45, 'Kannada');
insert into people (id, first_name, last_name, email, gender, age, language)
values (76, 'Hillyer', 'Bury', 'hbury23@quantcast.com', 'Male', 28, 'Tamil');
insert into people (id, first_name, last_name, email, gender, age, language)
values (77, 'Brit', 'Joscelin', 'bjoscelin24@1und1.de', 'Female', 78, 'Hiri Motu');
insert into people (id, first_name, last_name, email, gender, age, language)
values (78, 'Zilvia', 'Gipps', 'zgipps25@is.gd', 'Female', 76, 'Finnish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (79, 'Rowland', 'Tuite', 'rtuite26@infoseek.co.jp', 'Male', 19, 'German');
insert into people (id, first_name, last_name, email, gender, age, language)
values (80, 'Uriah', 'Grigolon', 'ugrigolon27@typepad.com', 'Male', 20, 'Tswana');
insert into people (id, first_name, last_name, email, gender, age, language)
values (81, 'Trumann', 'Paddison', 'tpaddison28@mozilla.com', 'Male', 96, 'Norwegian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (82, 'Ev', 'Murtimer', 'emurtimer29@myspace.com', 'Male', 20, 'Bulgarian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (83, 'Hyacintha', 'Beddon', 'hbeddon2a@wired.com', 'Female', 94, 'Lao');
insert into people (id, first_name, last_name, email, gender, age, language)
values (84, 'Milly', 'Dicte', 'mdicte2b@123-reg.co.uk', 'Female', 93, 'English');
insert into people (id, first_name, last_name, email, gender, age, language)
values (85, 'Omar', 'Keeling', 'okeeling2c@bizjournals.com', 'Male', 27, 'Czech');
insert into people (id, first_name, last_name, email, gender, age, language)
values (86, 'Marylin', 'Fidoe', 'mfidoe2d@reuters.com', 'Female', 26, 'Kyrgyz');
insert into people (id, first_name, last_name, email, gender, age, language)
values (87, 'Buckie', 'Chinnery', 'bchinnery2e@rediff.com', 'Male', 29, 'Tamil');
insert into people (id, first_name, last_name, email, gender, age, language)
values (88, 'Calida', 'Tassaker', 'ctassaker2f@altervista.org', 'Female', 26, 'New Zealand Sign Language');
insert into people (id, first_name, last_name, email, gender, age, language)
values (89, 'Ronny', 'Meredyth', 'rmeredyth2g@about.me', 'Female', 25, 'Somali');
insert into people (id, first_name, last_name, email, gender, age, language)
values (90, 'Dee', 'Erik', 'derik2h@unblog.fr', 'Female', 28, 'Armenian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (91, 'Keeley', 'Engledow', 'kengledow2i@weibo.com', 'Female', 24, 'Dutch');
insert into people (id, first_name, last_name, email, gender, age, language)
values (92, 'Michele', 'Tibb', 'mtibb2j@shareasale.com', 'Male', 18, 'Albanian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (93, 'Shauna', 'Lathey', 'slathey2k@goo.ne.jp', 'Female', 19, 'Bosnian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (94, 'Maighdiln', 'Bellinger', 'mbellinger2l@nba.com', 'Female', 18, 'New Zealand Sign Language');
insert into people (id, first_name, last_name, email, gender, age, language)
values (95, 'Clea', 'Hurlston', 'churlston2m@patch.com', 'Female', 76, 'Danish');
insert into people (id, first_name, last_name, email, gender, age, language)
values (96, 'Gardy', 'MacAne', 'gmacane2n@com.com', 'Male', 45, 'English');
insert into people (id, first_name, last_name, email, gender, age, language)
values (97, 'Caroljean', 'Beake', 'cbeake2o@state.gov', 'Female', 54, 'Marathi');
insert into people (id, first_name, last_name, email, gender, age, language)
values (98, 'Reinhard', 'Stood', 'rstood2p@simplemachines.org', 'Male', 57, 'Georgian');
insert into people (id, first_name, last_name, email, gender, age, language)
values (99, 'Zena', 'Vasyuchov', 'zvasyuchov2q@networkadvertising.org', 'Female', 58, 'Dari');
insert into people (id, first_name, last_name, email, gender, age, language)
values (100, 'Filbert', 'Dewing', 'fdewing2r@ftc.gov', 'Male', 48, 'Bislama');

--#1 Вывести все строки из таблицы
select *
from people;
--#2 Обновить электронную почту конкретного человека (например, человека с id=1)
UPDATE people
set email = 'joela@gmail.com'
where id = 1;
--#3 Добавьте новую запись в таблицу
insert into people(id, first_name, last_name, email, gender, age, language)
values (101, 'Adyl', 'Tolomushev', 'adyl@gmail.com', 'Male', 18, 'Kyrgyz');
--#4 Удалить человека из таблицы (например, человека с id=10)
delete
from people
where id = 4;
--#5 Подсчитать общее количество людей
select count(*)
from people;
--#6 Рассчитать средний возраст всех людей
select avg(age)
from people;
--#7 Найти максимальный возраст среди всех людей
SELECT first_name, age
FROM people
WHERE age = (SELECT MAX(age) FROM people);

--#8 Сумма возрастов всех людей
select sum(age)
from people;
--#9 Получить самого молодого человека(людей)
select first_name, age
from people
where age = (select min(age) from people);
--#10 Сгруппировать людей по полу и рассчитать средний возраст для каждого пола
select gender, AVG(age) as average_age
from people
GROUP BY gender;
--#11 Вывести имя в год рождение людей которые говорят на английском языке
select first_name, age
from people
where language = 'English';
--#12 Посчитать сколько человек, говорящих на казахском(Kazakh)
select count(*)
from people
where language = 'Kazakh';
select first_name, count(*)
from people
where language = 'Kazakh'
group by first_name;
--#13 Вывести фамилии, почту и айди всех женщин
select id, first_name, last_name
from people
where gender = 'Female';
--#14 Вывести имя и фамилие вместе переименовав как full_name(concat as), пол и год рождение всех мужчин родившихся после 2000 года
select concat(first_name, ' ', last_name) as fullName, gender, age
from people;
--#15 Посчитать сколько всего имен из таблицы начинаются на букву А
select count(first_name)
from people
where first_name like ('A%');
select count(first_name), first_name
from people
where first_name like ('A%')
group by first_name;
--#16 Отсортируйте все почты в алфавитном порядке
select first_name, email
from people
order by email asc;
--#17 Вывести 20 записей пропустив первые 5 записи
select *
from people
limit 20 offset 5;
select *
from people fetch first 5 rows only;
--#18 Подсчитать количество людей для каждого языка
select language, count(*)
from people
group by language;
--#19 Найти средний возраст для каждого языка, где количество людей больше 2
select people.language, avg(age) as avg_age
from people
group by language
having count(*) > 2;
select language, AVG(age) AS average_age
from people
where language IN (select language
                   from people
                   group by language
                   having COUNT(*) > 2)
group by language;
--#20 Вывести количество записей где почта заканчивается на .com
select count(*)
from people
where email like ('%.com');
--#21 Найти самый распространенный язык среди женщин
select language, count(*)
from people
where gender = 'Female'
group by language
order by people.language desc;
SELECT language, COUNT(*) AS female_count
FROM people
WHERE gender = 'Female'
GROUP BY language
ORDER BY female_count DESC
limit 1;
--#22 Обновить язык для людей, чей возраст между 3 и 10 годами, на 'French'
update people
set language = 'Franch'
where age between 10 and 20;

--#23 Отобразите всех мужчин говорящих на Tamil, Kazakh, Nepali и Russian
select *
from people
where gender = 'Male'
  and language in ('Tamil', 'Kazakh', 'Nepali', 'Russian');
--#24 Сгруппируйте всех по языку на котором они говорят
select count(*), people.language
from people
group by language;
--#25 Отобразите записи фамилии которых содержат только 7 символов и отсортируйте их по айди
select last_name
from people
where length(last_name) = 7
order by id;
--#26 Отобразите все записи кроме говорящих на French языке
select language
from people
where language != 'Franch';
--#27 Отобразите 5 самых молодых людей у которых почта заканчивается .com
select age
from people
where email like ('%.com')
order by age
limit 5;
--#28 Отобразите только те записи из таблицы которым есть 18 и которых почта заканчивается на .com или .uk
update people
set email = 'adyl@gmial.uk'
where email = 'adyl@gmail.com';
select first_name, age, email
from people
where age = 18
  and (email like '%com' or email like '%uk');
--#29 Отобразите все записи, кроме родившихся с 1993 по 2000 года
select first_name , age from people where not (age between 20 and 80);
--#30 Отобразите уникальные языки
select distinct people.language from people;
--#31 Отобразите записи где в имени или в фамилии есть буква ‘a’ и год рождение с 1969 по 2005 год
select first_name , age from people where first_name ilike ('%a%') and age between 20 and 30;
--#32 Отобразите айди, имя, почту и возврст каждого человека и отсортируйте по возврасту в убывающем порядке
select  id , first_name , age , email  from people order by age desc ;
--#33 Удалить людей младще 3 лет
delete from people where age < 15;



