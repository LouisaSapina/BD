USE BankCredit;

SELECT * FROM Client, Credit; -- при такой выборке каждая строка из таблицы Client будет соединяться с каждой строкой из таблицы Credit

SELECT * FROM Client, Credit
WHERE Credit.Type_of_credit = Type_of_credit; -- объединим данные по двум таблицам

SELECT Client.id_client, Credit.id_credit, Manager.Operation
FROM Client, Credit, Manager
WHERE Client.id_client = id_client AND Credit.id_credit = id_credit; -- соединение три таблицы, применяются два условия

SELECT * FROM Client, Manager
WHERE Manager.id_manager = id_manager; -- соединение данных с двух таблиц

SELECT C.Name, M.Operation, CR.Type_of_credit
From Client AS C, Manager AS M, Credit AS CR
WHERE CR.Type_of_credit = Type_of_credit; -- сокращение за счет использования псевдонимов таблиц




SELECT Client.Name, Client.Nomer_cheta, Credit.Sum
FROM Client
JOIN Credit ON Credit.idNomer_cheta = idNomer_cheta; -- соединение одной таблицы с другой

SELECT client.Name, Manager.Operation, Credit.Sum
FROM Client
JOIN Manager ON Manager.Operation = Operation
JOIN Credit ON Credit.Sum = Sum; --  Неявное соединение сразу двух таблиц

SELECT Client.Name, Manager.Operation, Credit.Sum
FROM Client
JOIN Manager ON Manager.Operation = Operation
JOIN Credit ON Credit.Sum = Sum 
WHERE Credit.Sum < 25000
ORDER BY Client.Name;  --  Сумма меньше 25000 поочереди клиентов

SELECT Client.Name, Manager.Operation, Credit.Sum
FROM Client
JOIN Manager ON Manager.Operation = Operation
JOIN Credit ON Credit.Sum = Sum 
WHERE Credit.Sum < 25000; -- Сумма Кредита меньше чем 25000

SELECT Client.Name, Manager.Operation, Credit.Sum -- Соединение три таблицы
FROM Client
JOIN Manager ON Manager.Operation = Operation
JOIN Credit ON Credit.Sum = Sum 
WHERE Credit.Sum > 5000 or Credit.Sum < 10000;  -- Более сложное уравнение




SELECT Type_of_credit, Month_payment, Sum, idNomer_cheta
FROM Credit LEFT JOIN Client  -- Left join
ON Credit.Sum = Sum;

SELECT Type_of_credit, Month_payment, Sum, idNomer_cheta
FROM Credit RIGHT JOIN Client  -- right join
ON Credit.Sum = Sum;

SELECT Client.Name, Client.Nomer_cheta
FROM Client
LEFT JOIN Credit ON Client.Name = Name; -- Соединение двух значений в одной таблице по левой таблице

SELECT Type_of_credit, Month_payment, Sum, idNomer_cheta
FROM Credit RIGHT JOIN Client
ON Credit.Sum = Sum
WHERE Credit.Month_payment > 1500; -- Виды кредитов где мес.плата больше 1500 по правой таблице

SELECT id_client FROM Client
LEFT JOIN Credit ON Client.id_client = Credit.id_credit
WHERE Credit.id_credit IS NULL; -- выявление тех клиентов у которых нет кредита, их нет так как у всех имеется по одному кредиту




SELECT Surname, Thirdname
FROM Client
UNION SELECT Surname, Thirdname FROM Manager; -- объединение столбцов клиента и менеджера

SELECT Surname AS SName, Thirdname
FROM Client
UNION SELECT Surname AS SName, Thirdname FROM Manager
ORDER BY SName DESC; -- объединение столбцов клиента и менеджера по укороченному индексу и по очереди имени

SELECT Name, Thirdname
FROM Client
UNION ALL SELECT Name, Thirdname
FROM Manager; -- объедениение всех имен с двух столбцов

SELECT Name, Thirdname
FROM Client
UNION ALL SELECT Name, Thirdname
FROM Manager
ORDER BY Name; -- сохранение при объединении, в том числе повторяющиеся строки, то для этого необходимо использовать оператор ALL

SELECT Type_of_credit, idNomer_cheta, Sum * 10 AS TotalSum -- сумма умноженная на проц.ставку и в итоге обозначенная total summ
FROM Credit WHERE Sum > 17000 -- Сумма больше 17000
UNION SELECT Type_of_credit, idNomer_cheta, Sum * 5 AS TotalSum -- сумма умноженная на проц.ставку и в итоге обозначенная total summ
FROM Credit WHERE Sum < 5; -- Сумма больше 5
