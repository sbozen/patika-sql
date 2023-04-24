--1. Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), 
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
create table employees(  id SERIAL PRIMARY KEY,
                        name VARCHAR(50),
                        birthday DATE,
                        email VARCHAR(100)
                        );

 
--2. Oluşturduğumuz employee tablosuna 
--'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.   

INSERT INTO employees (name, birthday, email) VALUES 
('Wyn MacDuff', '1986-07-16', 'wmacduff0@tamu.edu'),
('Olivero Rudland', '2009-04-02', 'orudland1@free.fr'),
('Caron Ivakhno', '1979-08-15', 'civakhno2@cornell.edu'),
('Hinze Fieldsend', '1989-03-21', 'hfieldsend3@springer.com'),
('Batsheva Rout', '1990-12-08', 'brout4@google.fr'),
('Kendricks Di Ruggero', '1995-09-30', 'kdi5@ox.ac.uk'),
('Jose Mapp', '1973-09-02', 'jmapp6@cyberchimps.com'),
('Maximo Batstone', '1961-08-17', 'mbatstone7@mayoclinic.com'),
('Emmanuel Gainforth', '1976-01-05', 'egainforth8@homestead.com'),
('Michelle Lednor', '1958-12-12', 'mlednor9@google.fr'),
('Micaela Eddie', '1996-03-25', 'meddiea@bluehost.com'),
('Elyse Munn', '1998-09-25', 'emunnb@cbsnews.com'),
('Kahlil Bastiman', '1959-10-08', 'kbastimanc@w3.org'),
('Jolyn Vayro', '2006-01-09', 'jvayrod@discovery.com'),
('Lane Ludron', '1983-10-25', 'lludrone@homestead.com'),
('Mariana Skyrm', '2021-09-09', 'mskyrmf@elpais.com'),
('Rica Togwell', '1997-02-12', 'rtogwellg@cnet.com'),
('Henriette Cuskery', '1969-08-30', 'hcuskeryh@istockphoto.com'),
('Markus Cowlas', '2004-07-24', 'mcowlasi@networkadvertising.org'),
('Damien Tasseler', '1965-01-09', 'dtasselerj@oakley.com'),
('Thatcher Romagosa', '1955-04-10', 'tromagosak@odnoklassniki.ru'),
('Blondy Kollaschek', '1990-04-05', 'bkollaschekl@feedburner.com'),
('Goddart Pinshon', '2016-03-15', 'gpinshonm@technorati.com'),
('Terra Colombier', '2015-04-27', 'tcolombiern@jugem.jp'),
('Hendrick Oughton', '2022-11-05', 'houghtono@youtube.com'),
('Judon Huccaby', '1980-08-12', 'jhuccabyp@comcast.net'),
('Felicia Beltzner', '1977-02-26', 'fbeltznerq@merriam-webster.com'),
('Elsworth Shortcliffe', '1997-07-26', 'eshortcliffer@bandcamp.com'),
('Kelly Kauble', '1978-01-17', 'kkaubles@miibeian.gov.cn'),  
('Keir Schruur', '1979-03-18', 'kschruurt@arizona.edu'),
('Waylan Khadir', '1982-03-28', 'wkhadiru@mozilla.org'),
('Mimi Stallworthy', '2004-06-06', 'mstallworthyv@squidoo.com'),
('Bearnard Gibbins', '2006-08-27', 'bgibbinsw@mozilla.org'),
('Marcela O Kelleher', '1976-09-10', 'mox@blogtalkradio.com'),
('Ermentrude Fetherby', '1980-05-13', 'efetherbyy@google.es'),
('Billye McGooch', '2003-05-06', 'bmcgoochz@webmd.com'),
('Ivy Vanes', '1977-04-17', 'ivanes10@1und1.de'),
('Wendy Postles', '1977-09-11', 'wpostles11@twitpic.com'),
('Lucine Denford', '1977-02-11', 'ldenford12@bloomberg.com'),
('Ferris Sayer', '1971-04-17', 'fsayer13@upenn.edu'),
('Billi Spilisy', '1977-08-18', 'bspilisy14@blogspot.com'),
('Gabe Altoft', '1956-04-06', 'galtoft15@clickbank.net'),
('Gayle Netherwood', '1977-07-09', 'gnetherwood16@photobucket.com'),
('Di Hathorn', '1977-07-20', 'dhathorn17@newsvine.com'),
('Papageno Antonnikov', '1961-02-19', 'pantonnikov18@pagesperso-orange.fr'),
('Kiele Iorizzo', '1977-01-16', 'kiorizzo19@istockphoto.com'),
('Guntar Eaglestone', '2010-03-05', 'geaglestone1a@indiegogo.com'),
('Shel Mizen', '1999-02-03', 'smizen1b@china.com.cn'),
('Gray Boreland', '1978-07-19', 'gboreland1c@wikipedia.org'),
('Annemarie Parsisson', '2010-12-08', 'aparsisson1d@domainmarket.com');





--3. Sütunların her birine göre diğer sütunları güncelleyecek 
--5 adet UPDATE işlemi yapalım.   
UPDATE employees SET birthday = DATE_FORMAT(birthday, '%m/%d/1975') WHERE YEAR(birthday) < 1975 RETURNING *;
UPDATE employees 
SET birthday = strftime('%m/%d/1975', birthday) 
WHERE strftime('%Y', birthday) < '1975' RETURNING *;

--4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employees WHERE name = "Annemarie Parsisson" ; 
DELETE FROM employees WHERE birthday = "1971-04-17" ;
DELETE FROM employees WHERE name = "Shel Mizen" ;
DELETE FROM employees WHERE email = "kiorizzo19@istockphoto.com" ;
DELETE FROM employees WHERE name = "Papageno Antonnikov" ;

