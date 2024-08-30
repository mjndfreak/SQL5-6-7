--SQL EXERCISE 5
SELECT *
FROM film
WHERE title ILIKE '%n'
ORDER BY length DESC
LIMIT 5;

SELECT *
FROM film
WHERE title ILIKE '%n'
ORDER BY length
OFFSET 5 LIMIT 5;

SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

--SQL EXERCISE 6
SELECT avg(rental_rate)
FROM film;

SELECT count(title)
FROM film
WHERE title LIKE 'C%';

SELECT max(length)
FROM film
WHERE rental_rate = 0.99;

SELECT count(DISTINCT replacement_cost)
FROM film
WHERE length > 150;


--SQL EXERCISE 7
SELECT rating, count(*)
FROM film
GROUP BY rating;

SELECT replacement_cost, count(*)
FROM film
GROUP BY replacement_cost
HAVING count(*) > 50;

SELECT store_id, count(*)
FROM customer
GROUP BY store_id;

SELECT country_id, count(*)
FROM city
GROUP BY country_id
ORDER BY count(*) DESC
LIMIT 1;


--SQL EXERCISE 8

CREATE TABLE employee (
    id INT PRIMARY KEY NOT NULL ,
    name VARCHAR(50)NOT NULL ,
    birthday DATE NOT NULL ,
    email VARCHAR(50)
);
insert into employee (id, name, birthday, email)
values (1, 'Anastassia Skarr', '1987-10-26 12:56:51', 'askarr0@storify.com'),
       (2, 'Henrieta Faccini', '1967-09-01 20:57:08', 'hfaccini1@tiny.cc'),
       (3, 'Derby Rapkins', '1980-03-04 14:08:06', 'drapkins2@weather.com'),
       (4, 'Melony Reichardt', '1961-02-21 17:12:09', 'mreichardt3@pinterest.com'),
       (5, 'Hillary Cornely', '1978-10-28 08:57:42', 'hcornely4@psu.edu'),
       (6, 'Kathe Fudger', '1987-03-21 13:43:53', 'kfudger5@lulu.com'),
       (7, 'Thekla Tatchell', '1995-06-27 09:50:16', 'ttatchell6@desdev.cn'),
       (8, 'Nicky Feldhorn', '1987-09-02 03:12:43', 'nfeldhorn7@chronoengine.com'),
       (9, 'Karalynn Casiroli', '1964-10-23 17:00:42', 'kcasiroli8@yelp.com'),
       (10, 'Cybill Brewerton', '1973-02-24 13:55:26', 'cbrewerton9@163.com'),
       (11, 'Cull Peaseman', '1984-09-17 05:22:20', 'cpeasemana@blogs.com'),
       (12, 'Rudyard Stratley', '1962-06-23 01:06:31', 'rstratleyb@noaa.gov'),
       (13, 'Kailey Isworth', '1965-05-08 19:08:26', 'kisworthc@amazon.co.uk'),
       (14, 'Nance Skewis', '1995-06-05 21:16:02', 'nskewisd@exblog.jp'),
       (15, 'Lauren Elmar', '1971-02-14 17:20:30', 'lelmare@geocities.com'),
       (16, 'Earlie Kahler', '1963-04-09 00:42:32', 'ekahlerf@hexun.com'),
       (17, 'Ofilia Kobpa', '1973-03-28 12:05:48', 'okobpag@qq.com'),
       (18, 'Stevana O'' Liddy', '1978-02-18 02:01:24', 'soh@dyndns.org'),
       (19, 'Kristel Peinke', '1988-07-04 21:52:25', 'kpeinkei@npr.org'),
       (20, 'Marice Houson', '1978-03-13 17:09:57', 'mhousonj@uiuc.edu'),
       (21, 'Sharon Oakland', '1981-02-18 04:17:44', 'soaklandk@devhub.com'),
       (22, 'Thornie Inderwick', '1983-06-18 03:27:21', 'tinderwickl@economist.com'),
       (23, 'Cesar Dukesbury', '1992-02-14 11:22:49', 'cdukesburym@nytimes.com'),
       (24, 'Lucio Pockey', '1985-06-20 06:23:06', 'lpockeyn@sphinn.com'),
       (25, 'Harli Scanderet', '1986-07-26 15:59:45', 'hscandereto@arstechnica.com'),
       (26, 'Ronnica Edmand', '1977-06-27 11:45:09', 'redmandp@opera.com'),
       (27, 'Jerry Beidebeke', '1983-07-31 16:10:45', 'jbeidebekeq@shutterfly.com'),
       (28, 'Urbain Robb', '1970-09-30 04:26:19', 'urobbr@mtv.com'),
       (29, 'Ginger Summerley', '1978-12-10 10:20:18', 'gsummerleys@php.net'),
       (30, 'Fabio Diss', '1992-09-24 09:00:52', 'fdisst@freewebs.com'),
       (31, 'Gwenore Ballaam', '1976-07-18 11:57:37', 'gballaamu@opensource.org'),
       (32, 'Coop Giacomuzzi', '1971-09-03 18:34:28', 'cgiacomuzziv@sitemeter.com'),
       (33, 'Onfre Alyutin', '1970-12-28 02:00:19', 'oalyutinw@amazon.co.jp'),
       (34, 'Roddy Tommis', '1997-01-24 04:38:17', 'rtommisx@drupal.org'),
       (35, 'Amory Pemble', '1996-08-21 00:12:29', 'apembley@spiegel.de'),
       (36, 'Zabrina Cardon', '1994-08-27 21:12:19', 'zcardonz@telegraph.co.uk'),
       (37, 'Terrel Dillinton', '1998-08-25 02:57:49', 'tdillinton10@omniture.com'),
       (38, 'Mariann Seaborne', '1980-07-01 09:22:34', 'mseaborne11@businessweek.com'),
       (39, 'Immanuel Welham', '1963-12-28 23:16:14', 'iwelham12@shutterfly.com'),
       (40, 'Manon Bradwell', '1977-07-27 00:14:46', 'mbradwell13@prnewswire.com'),
       (41, 'Maurene Duester', '1975-04-29 14:11:10', 'mduester14@barnesandnoble.com'),
       (42, 'Janifer Liggins', '1988-11-28 04:25:02', 'jliggins15@soundcloud.com'),
       (43, 'Stan Geydon', '1979-08-04 11:10:34', 'sgeydon16@oakley.com'),
       (44, 'Burgess Houseago', '1966-01-07 23:03:33', 'bhouseago17@intel.com'),
       (45, 'Alessandra Hansill', '1970-02-10 21:54:25', 'ahansill18@yelp.com'),
       (46, 'Genevra Maddox', '1978-09-14 21:29:18', 'gmaddox19@google.ca'),
       (47, 'Sally Deane', '1987-01-17 23:08:00', 'sdeane1a@wikipedia.org'),
       (48, 'Budd Evensden', '1990-11-15 21:14:45', 'bevensden1b@usgs.gov'),
       (49, 'Gardner Liddington', '1974-01-18 05:23:46', 'gliddington1c@yellowbook.com'),
       (50, 'Moe Borgesio', '1991-04-07 01:56:18', 'mborgesio1d@stumbleupon.com'),
       (51, 'Allina Portt', '1998-12-11 07:42:53', 'aportt1e@amazonaws.com'),
       (52, 'Granville Landall', '1967-11-21 17:30:42', 'glandall1f@economist.com'),
       (53, 'Rees Losty', '1965-05-21 05:01:36', 'rlosty1g@amazonaws.com'),
       (54, 'Tabor Fawdery', '1983-03-17 18:53:29', 'tfawdery1h@scribd.com'),
       (55, 'Nickie Heineke', '1978-10-14 06:59:54', 'nheineke1i@mayoclinic.com'),
       (56, 'Findley Wych', '1966-06-25 14:05:03', 'fwych1j@wsj.com'),
       (57, 'Filip MacAndie', '1985-10-10 03:39:54', 'fmacandie1k@boston.com'),
       (58, 'Rudie Stading', '1996-04-01 15:48:12', 'rstading1l@ycombinator.com'),
       (59, 'Frank Glasard', '1961-10-19 15:03:27', 'fglasard1m@buzzfeed.com'),
       (60, 'Jeramie MacLardie', '1972-08-29 16:55:58', 'jmaclardie1n@europa.eu'),
       (61, 'Jervis Dudderidge', '1988-01-27 04:14:15', 'jdudderidge1o@earthlink.net'),
       (62, 'Francene Pressman', '1978-01-26 06:36:45', 'fpressman1p@apache.org'),
       (63, 'Orsola Riccardelli', '1974-02-22 02:31:14', 'oriccardelli1q@upenn.edu'),
       (64, 'Adolphe Gateland', '1970-05-25 13:55:31', 'agateland1r@reddit.com'),
       (65, 'Randee Skeermor', '1970-07-09 21:31:58', 'rskeermor1s@berkeley.edu'),
       (66, 'Cesaro Feare', '1976-11-29 06:22:59', 'cfeare1t@intel.com'),
       (67, 'Leon Clipson', '1979-05-20 13:54:22', 'lclipson1u@nature.com'),
       (68, 'Fletcher Loomes', '1964-03-24 21:26:27', 'floomes1v@webmd.com'),
       (69, 'Janean Waters', '1969-12-22 02:33:13', 'jwaters1w@123-reg.co.uk'),
       (70, 'Smitty Okill', '1973-08-01 03:37:01', 'sokill1x@creativecommons.org'),
       (71, 'Ezechiel Tomaszynski', '1978-01-29 16:05:56', 'etomaszynski1y@hc360.com'),
       (72, 'Jarid Argente', '1969-08-15 03:50:00', 'jargente1z@youtu.be'),
       (73, 'Virgina Benezet', '1999-09-20 22:07:18', 'vbenezet20@google.it'),
       (74, 'Florian Toffolo', '1977-06-25 23:01:45', 'ftoffolo21@skyrock.com'),
       (75, 'Lyda Heinssen', '1991-01-10 00:13:32', 'lheinssen22@histats.com'),
       (76, 'Giorgia Shemming', '1965-12-31 17:06:39', 'gshemming23@whitehouse.gov'),
       (77, 'Salomi Bristowe', '1971-05-24 06:49:29', 'sbristowe24@hubpages.com'),
       (78, 'Perceval Pideon', '1981-03-23 23:08:49', 'ppideon25@elegantthemes.com'),
       (79, 'Kelci Edgworth', '1968-10-18 02:34:56', 'kedgworth26@yahoo.com'),
       (80, 'Marabel Brinkman', '1971-11-07 07:19:07', 'mbrinkman27@xrea.com'),
       (81, 'Joya Higgan', '1963-06-06 18:13:27', 'jhiggan28@usatoday.com'),
       (82, 'Tiffany Ambroziak', '1985-05-28 22:15:05', 'tambroziak29@mediafire.com'),
       (83, 'Alberta Tack', '1977-08-17 15:22:21', 'atack2a@cpanel.net'),
       (84, 'Enriqueta MacNalley', '1978-02-26 20:52:27', 'emacnalley2b@wsj.com'),
       (85, 'Nathanil Rhymes', '1977-06-27 19:59:47', 'nrhymes2c@google.co.jp'),
       (86, 'Christabel Essberger', '1971-09-07 10:46:29', 'cessberger2d@vinaora.com'),
       (87, 'Mathilda Woolager', '1967-08-30 19:57:25', 'mwoolager2e@usgs.gov'),
       (88, 'Angil Vardon', '1993-07-26 19:22:13', 'avardon2f@feedburner.com'),
       (89, 'Bartel Teale', '1976-01-12 14:16:54', 'bteale2g@shareasale.com'),
       (90, 'Daisi Sellens', '1973-02-16 02:46:06', 'dsellens2h@miitbeian.gov.cn'),
       (91, 'Zerk Iannazzi', '1980-01-07 22:57:41', 'ziannazzi2i@flickr.com'),
       (92, 'Callean Antoni', '1977-07-22 10:54:14', 'cantoni2j@hugedomains.com'),
       (93, 'Fergus Sproston', '1987-08-28 18:33:12', 'fsproston2k@csmonitor.com'),
       (94, 'Clifford Vidgeon', '1986-10-12 04:50:19', 'cvidgeon2l@linkedin.com'),
       (95, 'Cornall Jedraszek', '1975-09-24 03:33:56', 'cjedraszek2m@opensource.org'),
       (96, 'Curr Lear', '1966-11-27 06:32:17', 'clear2n@eepurl.com'),
       (97, 'Nikos Brasher', '1984-03-01 03:48:01', 'nbrasher2o@surveymonkey.com');

SELECT * FROM employee;

UPDATE employee
SET name = 'Derrick Rose',
    birthday = '1984-03-01 03:48:01',
    email = ''
WHERE id = 83;

SELECT * FROM employee WHERE id = 83;

DELETE FROM employee WHERE name = 'Derrick';
DELETE FROM employee WHERE id = 27;
DELETE FROM employee WHERE birthday = '1991-01-10 00:13:32';
DELETE FROM employee WHERE email = 'clear2n@eepurl.com';


SELECT * FROM employee;

--SQL EXERCISE 9

SELECT city.city, country.country
FROM city
INNER JOIN country
ON city.country_id = country.country_id;

SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN public.customer ON customer.customer_id = rental.customer_id

--SQL EXERCISE 10

SELECT city.city, country.country
FROM city
LEFT JOIN public.country
ON country.country_id = city.country_id;


SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment
RIGHT JOIN public.customer  ON customer.customer_id = payment.customer_id;

SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
FULL JOIN public.customer on customer.customer_id = rental.customer_id;


--SQL EXERCISE 11

SELECT actor.first_name, actor.first_name
FROM actor, customer;

(SELECT actor.first_name FROM actor)
INTERSECT
(SELECT first_name FROM customer);

(SELECT first_name FROM actor)
EXCEPT
(SELECT first_name FROM customer);


(SELECT first_name FROM actor)
EXCEPT ALL
(SELECT first_name FROM customer);

(SELECT actor.first_name FROM actor)
INTERSECT ALL
(SELECT first_name FROM customer);

