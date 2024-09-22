---------------------------------- Query 1 ----------------------------------
SELECT o_id, prod_id, inv_id
FROM Contain
WHERE increase_percent > 10;


---------------------------------- Query 2 ----------------------------------
SELECT t.trans_id, t.t_date, t.amount
FROM Transactions t
JOIN Employees e ON t.ssn = e.ssn
WHERE e.name = 'John Doe'; 


---------------------------------- Query 3 ----------------------------------
SELECT t.trans_id, COUNT(tp.prod_id) AS number_of_products
FROM Transactions t
JOIN Txns_Prods tp ON t.trans_id = tp.trans_id
GROUP BY t.trans_id;


---------------------------------- Query 4 ----------------------------------
SELECT trans_id, ssn
FROM Transactions
WHERE amount = (SELECT MAX(amount) FROM Transactions);



---------------------------------- Query 5 ----------------------------------
SELECT t.trans_id, t.t_date, t.amount
FROM Transactions t
JOIN Emp_Sales es ON t.account_id = es.account_id AND t.Year = es.Year
JOIN Emp_Month_Year emy ON es.account_id = emy.account_id AND es.Year = emy.Year
WHERE emy.achievement_id = 1; 


---------------------------------- Query 6 ----------------------------------
SELECT COUNT(*) AS total_achievements
FROM Emp_Month_Year;


------------------------------------ Query 7 ----------------------------------
SELECT c.ssn, e.name, COUNT(*) AS completed_calls
FROM Calls c
JOIN Employees e ON c.ssn = e.ssn
WHERE c.c_status = 'Completed'
GROUP BY c.ssn, e.name
ORDER BY completed_calls DESC
FETCH FIRST 1 ROW ONLY;


---------------------------------- Query 8 ----------------------------------
SELECT g.award_id, a.type AS award_description, e.name AS employee_name, g.center_id, g.achievement_id
FROM Granted g
JOIN Employees e ON g.ssn = e.ssn
JOIN Awards a ON g.award_id = a.award_id
JOIN Award_Centers ac ON g.center_id = ac.center_id
WHERE e.name = 'John Doe'; 


---------------------------------- Query 9 ----------------------------------
SELECT p.ssn
FROM Phones p
GROUP BY p.ssn
HAVING COUNT(p.phone_num) > 1;


---------------------------------- Query 10 ----------------------------------
SELECT e.name, es.total_sales
FROM Employees e
JOIN Addresses a ON e.ssn = a.ssn
JOIN Emp_Sales es ON e.ssn = es.ssn
WHERE a.city = 'Midtown';


---------------------------------- Query 11 ----------------------------------
SELECT e.name, COUNT(t.trans_id) AS transaction_count
FROM Employees e
JOIN Transactions t ON e.ssn = t.ssn
GROUP BY e.name
ORDER BY transaction_count DESC
FETCH FIRST 1 ROW ONLY;


---------------------------------- Query 12 ----------------------------------
SELECT 
    G.ssn,
    COUNT(G.achievement_id) AS NumberOfAchievements
FROM 
    Granted G
GROUP BY 
    G.ssn
ORDER BY 
    NumberOfAchievements DESC
FETCH FIRST 1 ROW ONLY;


---------------------------------- Query 13 ----------------------------------
SELECT ssn, COUNT(award_id) as NumberOfAwards
FROM Granted
WHERE ssn = '987-65-4321' 
GROUP BY ssn;


---------------------------------- Query 14 ----------------------------------
SELECT center_id, COUNT(DISTINCT ssn) AS NumberOfEmployees
FROM Granted
WHERE center_id = 1  
GROUP BY center_id;


---------------------------------- Query 15 ----------------------------------
SELECT COUNT(*) AS TotalNumberOfAwards
FROM Awards;


---------------------------------- Query 16 ----------------------------------
SELECT E.name
FROM Employees E
JOIN Addresses A ON E.ssn = A.ssn
WHERE A.city = 'Downtown' AND E.dependent# = 2;


---------------------------------- Query 17 ----------------------------------
SELECT P.prod_id, P.prod_name
FROM Products P
LEFT JOIN Txns_Prods TP ON P.prod_id = TP.prod_id
WHERE TP.prod_id IS NULL;


---------------------------------- Query 18 ----------------------------------
SELECT P.prod_id, P.prod_name, SUM(TP.quantity) AS total_quantity
FROM Products P
JOIN Txns_Prods TP ON P.prod_id = TP.prod_id
GROUP BY P.prod_id, P.prod_name
ORDER BY total_quantity DESC
FETCH FIRST 1 ROW ONLY;











