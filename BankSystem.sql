USE BankCredit;
CREATE TABLE Client_ (
id_client INTEGER AUTO_INCREMENT
PRIMARY KEY, 
Name_ VARCHAR(45),
Surname VARCHAR(45),
Thirdname VARCHAR(45),
Adres VARCHAR(45),
Phone INT,
Nomer_cheta INT,
IIN VARCHAR(45),
ID_number INT,
Number_contract INT
);

CREATE TABLE Manager (
id_manager INTEGER AUTO_INCREMENT
PRIMARY KEY, 
Name_ VARCHAR(45),
Surname VARCHAR(45),
Thirdname VARCHAR(45),
Adres VARCHAR(45),
Phone VARCHAR(45),
IIN VARCHAR(45),
ID_number INT,
Operation VARCHAR(45),
Nomer_cheta INT
);

CREATE TABLE Operations (
id_operations INTEGER AUTO_INCREMENT
PRIMARY KEY,
Pogashenie VARCHAR(45),
Poluchenie VARCHAR(45),
Prodlevanie VARCHAR(45),
Ukarachivanie VARCHAR(45)
);

CREATE TABLE Credit (
id_credit INTEGER AUTO_INCREMENT
PRIMARY KEY, 
Type_of_credit VARCHAR(45),
Procent_rate INT,
First_vznos INT,
Srok_v_month INT,
Month_payment INT,
Sum INT,
Date_of_vydachi DATETIME,
Date_pogasheniya DATETIME,
Nomer_cheta INT
);



