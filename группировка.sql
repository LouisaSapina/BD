USE BankCredit;

SELECT Type_of_credit, COUNT(*) AS Sum
FROM credit
WHERE Sum > 6
GROUP BY Type_of_credit
ORDER BY Sum DESC;

SELECT Type_of_credit, COUNT(*) AS Sum
FROM credit
GROUP BY Type_of_credit
HAVING COUNT(*) > 10;

SELECT Type_of_credit, COUNT(*) AS Procent_rate, SUM(Sum) AS Units
FROM credit
WHERE Procent_rate * Sum > 25000
GROUP BY Type_of_credit
HAVING SUM(Sum) > 50000
ORDER BY Units DESC;

SELECT Date_of_vydachi, Sum,
			(SELECT Type_of_credit FROM credit
            WHERE Type_of_credit = Sum) AS Type_of_credit
FROM Credit;

SELECT * FROM Credit
WHERE id_credit IN (SELECT id_credit FROM Credit);

UPDATE Credit
SET Type_of_credit = Type_of_credit + 1
WHERE id_credit IN (SELECT id_credit FROM 
Credit WHERE Type_of_credit='Ipoteka');

DELETE FROM client_
WHERE ID_number = (SELECT ID FROM ID_number
WHERE Name='Ginevra')

