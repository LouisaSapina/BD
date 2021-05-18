USE BankCredit;

INSERT INTO manager (Name_, Surname, Thirdname, Adres, Phone, IIN, ID_number, Operation, Nomer_cheta)
VALUES
('Louisa', 'Sapina', 'Rolanovna', 'Kubrina20', 87473803143, '020128650898', 123456, 'Pogashenie', 51697878),
('Ronald', 'Billius', 'Weasley', 'Kubrina21', 87473807556,  '12345678980', 234567, 'Poluchenie', 51697859),
('Harry', 'James', 'Potter', 'Kubrina22', 87473801225,  '12345673180', 345678, 'Prodlevanie', 51697843),
('Hermione', 'Jean', 'Granger', 'Kubrina23', 87473805996, '12345671979', 456789, 'Ukarachivanie', 51697857);


INSERT INTO client (Name, Surname, Thirdname, Phone, Adres, Nomer_cheta, ID_number, IIN, Number_contract)
VALUES 
('Ginevra', 'Molly', 'Weasley', '8747380313', 'London, Street 5', 51697878, 020128651225, 546328, 1),
('Fred', 'First', 'Weasley 2', '8747380544', 'London, Street 6', 51697859, 020128657889, 546378, 2),
('George', 'Second', 'Weasley', '8747380545', 'London, Street 7', 51697843, 020128657882, 546238, 3),
('Draco', 'Lucius', 'Malfy', '8747380456', 'London, Street 8', 51697857, 020128610889, 546678, 4);

INSERT INTO credit (Type_of_credit, Procent_rate, First_vznos, Srok_v_month, Month_payment, Sum, Date_of_vydachi, Date_pogasheniya, idNomer_cheta)
VALUES
('Ipoteka', 15, 25000, 24, 150, 50000, '2021-01-15 00:00:00', '2021-07-15 00:00:00', 51697878),
('Microloans', 5, 30000, 36, 3000, 55000, '2021-02-15 00:00:00', '2022-08-15 00:00:00', 51697859),
('Credit_card', 10, 1000, 24, 100, 15000, '2021-03-15 00:00:00', '2021-09-15 00:00:00', 51697843),
('Autocredit', 5, 5000, 12, 1500, 175000, '2021-01-15 00:00:00', '2023-07-15 00:00:00', 51697843),
('ConsumerCredit', 15, 25000, 12, 2500, 45000, '2021-01-15 00:00:00', '2021-07-15 00:00:00',  51697857);





