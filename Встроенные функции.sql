USE BankCredit;

-- 1. Функции для работы со строками (минимум 2 примера на каждую функцию)

SELECT CONCAT ('Harry', ' ', 'Potter');
SELECT CONCAT ('Ron', ' ', 'Weasley');

SELECT CONCAT_WS(' ', 'Harry', 'Potter', 'Age:', 17);
SELECT CONCAT_WS(' ', 'Ron', 'Weasley', 'Age:', 16);

SELECT LENGTH('Harry Potter');
SELECT LENGTH('Ron Weasley');

SELECT LTRIM('  Harry');
SELECT LTRIM('  Ron');

SELECT RTRIM('Harry  ');
SELECT RTRIM('Ron  ');

SELECT TRIM('  Harry  ');
SELECT TRIM('  Ron  ');

SELECT LOCATE('ry', 'Harry
Potter'); -- 4
SELECT LOCATE('n', 'Ron
Weasley'); -- 3

SELECT LEFT('Client', 3); -- Cli
SELECT LEFT('Client', 4); -- Clie

SELECT RIGHT('Manager', 4); -- ager
SELECT RIGHT('Manager', 5); -- nager

SELECT SUBSTRING('Ginevra Molly
Weasley', 8); -- Molly Weasley
SELECT SUBSTRING('Lucius Draco
Malfoy', 7); -- Draco Malfoy

SELECT SUBSTRING_INDEX('Harry
James Potter', ' ', 1); -- Harry James
(SELECT SUBSTRING_INDEX('Ron
Billius Weasley', ' ', 1) ); -- Ron Billius

SELECT REPLACE('Harry James Potter',
'Potter', 'student'); -- Harry James student
SELECT REPLACE('Ron Billius Weasley',
'Weasley', 'student'); -- Ron Billuis student

SELECT INSERT('Ipoteka 8', 8, 7,
'Credit 5'); -- Galaxy Note 9
SELECT INSERT('Loans 9', 8, 3,
'Credit 9'); -- Loans 9

SELECT REVERSE('Harry'); -- yrraH
SELECT REVERSE('Potter'); -- rettoP

SELECT LOWER('RONALD'); -- ronald
SELECT LOWER('WEASLEY'); -- weasley

SELECT UPPER('ronald'); -- RONALD
SELECT UPPER('weasley'); -- WEASLEY

SELECT REPEAT('la', 5); -- lalalalalala
SELECT REPEAT('lol', 2); -- lollol

SELECT LPAD('Harry Potter', 15, '*'); -- ***Harry Potter
SELECT LPAD('Ronald Weasley', 17, '*'); -- ***Ronald Weasley

SELECT RPAD('Harry Potter', 16, '*'); -- Harry Potter****
SELECT RPAD('Ronald Weasley', 16, '*'); -- Ronald Weasley**

-- 2. Функции для работы с числами (минимум 2 примера на каждую функцию)

SELECT RAND(); -- 0.0648446353756307
SELECT RAND(); -- 0.08248488426439919

SELECT SIGN(0); -- 0
(SELECT SIGN(-1)); -- -1

SELECT ABS(-12345); -- 12345
SELECT ABS(-1235); -- 1235

SELECT CEILING(-145.45), -- -145
(SELECT CEILING(145.45)); -- 146

SELECT FLOOR(-145.45), -- -146
(SELECT FLOOR(145.45)); -- 145

SELECT POWER(5, 2), -- 25
(SELECT POWER(5, 3)); -- 125

SELECT SQRT(225); -- 15
SELECT SQRT(64); -- 8

SELECT ROUND(1342.345, 2), -- 1342.35
(SELECT ROUND(1342.345, -2)); -- 1300;

SELECT TRUNCATE(1342.345, 2); -- 1342.34
SELECT TRUNCATE(1345.348, 4); -- 1345.348

-- 3.Функции для работы с датами и временем (минимум 1 примера на каждую функцию)

SELECT NOW(); -- '2021-04-14 00:49:32'
SELECT SYSDATE(); -- '2021-04-14 00:49:40'
SELECT CURRENT_TIMESTAMP(); -- '2021-04-14 00:49:49'

SELECT CURRENT_DATE(); -- '2021-04-14'
SELECT CURDATE(); -- '2021-04-14'

SELECT CURRENT_TIME(); -- '00:50:38'
SELECT CURTIME(); -- '00:50:46'

SELECT UTC_DATE(); -- '2021-04-13'

SELECT UTC_TIME(); -- '18:51:17'

-- 4. Функции (минимум 3 примера на каждую функцию)

SELECT Name, Number_contract,
CASE
 WHEN Number_contract = 1
 THEN 'Первый по очереди'
 WHEN Number_contract = 2
 THEN 'Второй по очереди'
 WHEN Number_contract = 3
 THEN 'Третий по очереди'
 ELSE 'Последний'
END AS Order_
FROM Client;

SELECT Type_of_credit, Procent_rate,
CASE
 WHEN Procent_rate = 5
 THEN 'Малая ставка'
 WHEN Procent_rate = 10
 THEN 'Средняя ставка'
 WHEN Procent_rate = 15
 THEN 'Большая ставка'
 ELSE 'Выше всех'
END AS Procent
FROM Credit;

SELECT Type_of_credit, Sum,
CASE
 WHEN Sum = 2500
 THEN 'Малый взнос'
 WHEN Sum = 15000
 THEN 'Средний взнос'
 WHEN Sum = 50000
 THEN 'Большой взнос'
 ELSE 'Выше всех'
END AS Vzons
FROM Credit;

SELECT Type_of_credit, Procent_rate,
 IF(Sum > 17000, 'Большая сумма', 'Малая сумма')
FROM Credit;

SELECT Type_of_credit, Procent_rate,
 IF(First_vznos > 45000, 'Большая сумма', 'Малая сумма')
FROM Credit;

SELECT Type_of_credit, Month_payment,
 IF(Month_payment > 5000, 'Большая сумма', 'Малая сумма')
FROM Credit;

SELECT Name, Thirdname,
 IFNULL(Phone, 'не определено') AS Phone,
 IFNULL(Adres, 'неизвестно') AS Adres
FROM Client;

SELECT Name_, Thirdname,
 IFNULL(Phone, 'не определено') AS Phone,
 IFNULL(Adres, 'неизвестно') AS Adres
FROM Manager;

SELECT Type_of_credit, Procent_rate,
 IFNULL(First_vznos, 'не определено') AS First_vznos,
 IFNULL(Sum, 'неизвестно') AS Sum
FROM Credit;

SELECT Name, ThirdName,
 COALESCE(Phone, Adres, 'не определено') AS Contacts
FROM Client;

SELECT Name_, ThirdName,
 COALESCE(Phone, Adres, 'не определено') AS Contacts
FROM Manager;

SELECT Nomer_cheta, ID_number,
 COALESCE(IIN, Number_contract, 'не определено') AS Dates
FROM Client;
