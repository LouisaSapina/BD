USE BankCredit;
SELECT * FROM bankcredit.client;

SELECT * FROM bankcredit.client WHERE IIN = 546328;
SELECT * FROM bankcredit.credit WHERE Procent_rate = 5;
SELECT * FROM bankcredit.credit WHERE Month_payment > 1000 AND Month_payment < 500;


SELECT * FROM client_
	INNER JOIN Manager ON client.Nomer_cheta = Nomer_cheta;
    
SELECT * FROM manager
	INNER JOIN credit ON manager.id_cheta = idNomer_cheta;
    
    