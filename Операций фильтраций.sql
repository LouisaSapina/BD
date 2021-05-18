USE BankCredit;

SELECT DISTINCT Type_of_credit, Sum FROM Credit;

SELECT * FROM Credit
WHERE Type_of_credit IN ('Ipoteka', 'Microloans' 'Credit_card');

SELECT * FROM Credit
WHERE Type_of_credit NOT IN ('Ipoteka', 'Microloans' 'Credit_card');

SELECT * FROM Credit
WHERE Sum BETWEEN 15000 AND 50000;

SELECT * FROM client
WHERE Thirdname LIKE 'Weasley%';

SELECT * FROM Credit
WHERE Type_of_credit REGEXP 'Autocredit|ConsumerCredit';

SELECT * FROM Credit
ORDER BY Sum;

SELECT Type_of_credit, First_vznos * Month_payment AS Sum
FROM Credit
ORDER BY Sum;

SELECT * FROM CLIENT
LIMIT 2;

SELECT AVG(Sum) AS Average_Sum FROM Credit;

SELECT AVG (Sum * Procent_rate) FROM Credit;

SELECT COUNT(*) FROM Credit;

SELECT MIN(Sum) AND MAX(Sum) FROM Credit;

SELECT SUM(Sum * Procent_rate) FROM Credit;






