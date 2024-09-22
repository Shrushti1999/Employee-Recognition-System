INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('John Doe', '123-45-6789', TO_DATE('1980-01-01', 'YYYY-MM-DD'), 'Single', 'M', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Jane Smith', '987-65-4321', TO_DATE('1985-02-02', 'YYYY-MM-DD'), 'Married', 'F', 2);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Emily Johnson', '111-22-3333', TO_DATE('1990-03-03', 'YYYY-MM-DD'), 'Married', 'F', 1);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Michael Brown', '444-55-6666', TO_DATE('1975-04-04', 'YYYY-MM-DD'), 'Single', 'M', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Jessica Garcia', '777-88-9999', TO_DATE('1982-05-05', 'YYYY-MM-DD'), 'Divorced', 'F', 3);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('William Martinez', '202-30-4040', TO_DATE('1978-06-06', 'YYYY-MM-DD'), 'Married', 'M', 2);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Olivia Rodriguez', '505-60-7070', TO_DATE('1992-07-07', 'YYYY-MM-DD'), 'Single', 'F', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Daniel Lee', '808-90-1010', TO_DATE('1988-08-08', 'YYYY-MM-DD'), 'Married', 'M', 1);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Sophia Perez', '212-31-4141', TO_DATE('1972-09-09', 'YYYY-MM-DD'), 'Widowed', 'F', 2);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('David Gonzalez', '515-61-7171', TO_DATE('1986-10-10', 'YYYY-MM-DD'), 'Single', 'M', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Isabella Sanchez', '818-91-1111', TO_DATE('1994-11-11', 'YYYY-MM-DD'), 'Married', 'F', 1);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('James Wilson', '222-32-4242', TO_DATE('1981-12-12', 'YYYY-MM-DD'), 'Divorced', 'M', 2);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Charlotte Anderson', '525-62-7272', TO_DATE('1979-01-13', 'YYYY-MM-DD'), 'Single', 'F', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Benjamin Thomas', '828-92-1212', TO_DATE('1987-02-14', 'YYYY-MM-DD'), 'Married', 'M', 3);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Amelia Taylor', '232-33-4343', TO_DATE('1993-03-15', 'YYYY-MM-DD'), 'Married', 'F', 1);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Lucas Moore', '535-63-7373', TO_DATE('1984-04-16', 'YYYY-MM-DD'), 'Single', 'M', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Mia Jackson', '838-93-1313', TO_DATE('1989-05-17', 'YYYY-MM-DD'), 'Single', 'F', 0);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Alexander Martin', '242-34-4444', TO_DATE('1976-06-18', 'YYYY-MM-DD'), 'Widowed', 'M', 2);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Harper Lee', '545-64-7474', TO_DATE('1991-07-19', 'YYYY-MM-DD'), 'Married', 'F', 1);
INSERT INTO Employees (name, ssn, dob, marital_status, sex, dependent#) VALUES ('Ethan Harris', '848-94-1414', TO_DATE('1974-08-20', 'YYYY-MM-DD'), 'Single', 'M', 0);




----------------------------------------------ADDRESSES and PHONE NUMBERS----------------------------------------
-- Employee 1
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1001, 'Pineapple St', 'Oceanview', 'CA', 90210, '123-45-6789');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2001, 'Grove St', 'Oceanview', 'CA', 90211, '123-45-6789');
INSERT INTO Phones (phone_num, ssn) VALUES (5551000001, '123-45-6789');
INSERT INTO Phones (phone_num, ssn) VALUES (5551000002, '123-45-6789');

-- Employee 2
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1002, 'Maple Lane', 'Laketown', 'OR', 97035, '987-65-4321');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2002, 'Fir Ave', 'Laketown', 'OR', 97036, '987-65-4321');
INSERT INTO Phones (phone_num, ssn) VALUES (5552000001, '987-65-4321');
INSERT INTO Phones (phone_num, ssn) VALUES (5552000002, '987-65-4321');

-- Employee 3
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1003, 'Cedar Blvd', 'Riverville', 'WA', 98007, '111-22-3333');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2003, 'Spruce Rd', 'Riverville', 'WA', 98008, '111-22-3333');
INSERT INTO Phones (phone_num, ssn) VALUES (5553000001, '111-22-3333');
INSERT INTO Phones (phone_num, ssn) VALUES (5553000002, '111-22-3333');

-- Employee 4
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1004, 'Elm Street', 'Hilltop', 'NV', 89501, '444-55-6666');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2004, 'Oak Street', 'Hilltop', 'NV', 89502, '444-55-6666');
INSERT INTO Phones (phone_num, ssn) VALUES (5554000001, '444-55-6666');
INSERT INTO Phones (phone_num, ssn) VALUES (5554000002, '444-55-6666');

-- Employee 5
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1005, 'Willow Way', 'Meadowfield', 'UT', 84043, '777-88-9999');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2005, 'Pine Street', 'Meadowfield', 'UT', 84044, '777-88-9999');
INSERT INTO Phones (phone_num, ssn) VALUES (5555000001, '777-88-9999');
INSERT INTO Phones (phone_num, ssn) VALUES (5555000002, '777-88-9999');

-- Employee 6
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (1006, 'Birch Road', 'Greenwood', 'MT', 59001, '202-30-4040');
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (2006, 'Sycamore St', 'Greenwood', 'MT', 59002, '202-30-4040');
INSERT INTO Phones (phone_num, ssn) VALUES (5556000001, '202-30-4040');
INSERT INTO Phones (phone_num, ssn) VALUES (5556000002, '202-30-4040');

-- Employee 7
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (107, 'Seventh St', 'Midtown', 'TX', 75001, '505-60-7070');
INSERT INTO Phones (phone_num, ssn) VALUES (5557070707, '505-60-7070');

-- Employee 8
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (108, 'Eighth Ave', 'Uptown', 'TX', 75002, '808-90-1010');
INSERT INTO Phones (phone_num, ssn) VALUES (5558081010, '808-90-1010');

-- Employee 9
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (109, 'Ninth Rd', 'Downtown', 'TX', 75003, '212-31-4141');
INSERT INTO Phones (phone_num, ssn) VALUES (5559091414, '212-31-4141');

-- Employee 10
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (110, 'Tenth St', 'Eastside', 'TX', 75004, '515-61-7171');
INSERT INTO Phones (phone_num, ssn) VALUES (5551010717, '515-61-7171');

-- Employee 11
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (111, 'Eleventh Ave', 'Westside', 'TX', 75005, '818-91-1111');
INSERT INTO Phones (phone_num, ssn) VALUES (5551111911, '818-91-1111');

-- Employee 12
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (112, 'Twelfth Rd', 'Northtown', 'TX', 75006, '222-32-4242');
INSERT INTO Phones (phone_num, ssn) VALUES (5551212424, '222-32-4242');

-- Employee 13
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (113, 'Thirteenth St', 'Southville', 'TX', 75007, '525-62-7272');
INSERT INTO Phones (phone_num, ssn) VALUES (5551312727, '525-62-7272');

-- Employee 14
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (114, 'Fourteenth Ave', 'Oldtown', 'TX', 75008, '828-92-1212');
INSERT INTO Phones (phone_num, ssn) VALUES (5551412121, '828-92-1212');

-- Employee 15
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (115, 'Fifteenth Rd', 'Newtown', 'TX', 75009, '232-33-4343');
INSERT INTO Phones (phone_num, ssn) VALUES (5551513434, '232-33-4343');

-- Employee 16
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (116, 'Sixteenth St', 'Lakeview', 'TX', 75010, '535-63-7373');
INSERT INTO Phones (phone_num, ssn) VALUES (5551613737, '535-63-7373');

-- Employee 17
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (117, 'Seventeenth Ave', 'Riverview', 'TX', 75011, '838-93-1313');
INSERT INTO Phones (phone_num, ssn) VALUES (5551713131, '838-93-1313');

-- Employee 18
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (118, 'Eighteenth Rd', 'Beachside', 'TX', 75012, '242-34-4444');
INSERT INTO Phones (phone_num, ssn) VALUES (5551813444, '242-34-4444');

-- Employee 19
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (119, 'Nineteenth St', 'Cliffside', 'TX', 75013, '545-64-7474');
INSERT INTO Phones (phone_num, ssn) VALUES (5551914747, '545-64-7474');

-- Employee 20
INSERT INTO Addresses (bldg#, street, city, state, zip, ssn) VALUES (120, 'Twentieth Ave', 'Hillside', 'TX', 75014, '848-94-1414');
INSERT INTO Phones (phone_num, ssn) VALUES (5552014141, '848-94-1414');




---------------------------LOGIN----------------------------------
-- Employee 1
INSERT INTO Login (username, passwd, ssn) VALUES ('johndoe', 'JDpassword123', '123-45-6789');

-- Employee 2
INSERT INTO Login (username, passwd, ssn) VALUES ('janesmith', 'JSpwd321', '987-65-4321');

-- Employee 3
INSERT INTO Login (username, passwd, ssn) VALUES ('emilyjohnson', 'EJpwd123', '111-22-3333');

-- Employee 4
INSERT INTO Login (username, passwd, ssn) VALUES ('michaelbrown', 'MBpassword789', '444-55-6666');

-- Employee 5
INSERT INTO Login (username, passwd, ssn) VALUES ('jessicagarcia', 'JGpwd456', '777-88-9999');

-- Employee 6
INSERT INTO Login (username, passwd, ssn) VALUES ('williammartinez', 'WMpwd654', '202-30-4040');

-- Employee 7
INSERT INTO Login (username, passwd, ssn) VALUES ('oliviarodriguez', 'ORpassword987', '505-60-7070');

-- Employee 8
INSERT INTO Login (username, passwd, ssn) VALUES ('daniellee', 'DLpwd852', '808-90-1010');

-- Employee 9
INSERT INTO Login (username, passwd, ssn) VALUES ('sophiaperez', 'SPpassword369', '212-31-4141');

-- Employee 10
INSERT INTO Login (username, passwd, ssn) VALUES ('davidgonzalez', 'DGpwd741', '515-61-7171');

-- Employee 11
INSERT INTO Login (username, passwd, ssn) VALUES ('isabellasanchez', 'ISpassword159', '818-91-1111');

-- Employee 12
INSERT INTO Login (username, passwd, ssn) VALUES ('jameswilson', 'JWpwd753', '222-32-4242');

-- Employee 13
INSERT INTO Login (username, passwd, ssn) VALUES ('charlotteanderson', 'CApassword357', '525-62-7272');

-- Employee 14
INSERT INTO Login (username, passwd, ssn) VALUES ('benjaminthomas', 'BTpwd258', '828-92-1212');

-- Employee 15
INSERT INTO Login (username, passwd, ssn) VALUES ('ameliataylor', 'ATpassword456', '232-33-4343');

-- Employee 16
INSERT INTO Login (username, passwd, ssn) VALUES ('lucasmoore', 'LMpwd951', '535-63-7373');

-- Employee 17
INSERT INTO Login (username, passwd, ssn) VALUES ('miajackson', 'MJpassword753', '838-93-1313');

-- Employee 18
INSERT INTO Login (username, passwd, ssn) VALUES ('alexandermartin', 'AMpwd159', '242-34-4444');

-- Employee 19
INSERT INTO Login (username, passwd, ssn) VALUES ('harperlee', 'HLpassword951', '545-64-7474');

-- Employee 20
INSERT INTO Login (username, passwd, ssn) VALUES ('ethanharris', 'EHpwd357', '848-94-1414');




------------------------------------Emp_Sales--------------------------------
-- Employee 1
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (101, 2023, 120000, 10000, 9500, 11000, 12000, 9000, 10000, 10500, 11000, 11500, 9500, 9000, 9200, '123-45-6789');

-- Employee 2
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (102, 2023, 115000, 9500, 12000, 9000, 9300, 10000, 11000, 10800, 10400, 10700, 11100, 9400, 9900, '987-65-4321');

-- Employee 3
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (103, 2023, 90000, 7500, 8000, 7000, 6800, 7200, 7600, 7400, 7800, 7200, 7000, 7100, 6900, '111-22-3333');

-- Employee 4
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (104, 2023, 105000, 8700, 8600, 9000, 9500, 8900, 9300, 8800, 8600, 8700, 9200, 9100, 9400, '444-55-6666');

-- Employee 5
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (105, 2023, 130000, 10800, 11200, 11500, 12000, 11000, 11500, 11700, 11300, 11200, 11000, 11800, 12000, '777-88-9999');

-- Employee 6
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (106, 2023, 110000, 9200, 9300, 9100, 9400, 9700, 9900, 9500, 9300, 9200, 9100, 9000, 9400, '202-30-4040');

-- Employee 7
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (107, 2023, 95000, 7900, 8100, 8300, 8000, 7700, 7600, 7800, 7500, 7400, 7300, 7200, 7100, '505-60-7070');

-- Employee 8
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (108, 2023, 99000, 8200, 8400, 8500, 8600, 8700, 8800, 8900, 8700, 8600, 8500, 8400, 8300, '808-90-1010');

-- Employee 9
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (109, 2023, 88000, 7300, 7100, 7200, 7400, 7500, 7700, 7300, 7100, 7000, 7200, 7300, 7500, '212-31-4141');

-- Employee 10
INSERT INTO Emp_Sales (account_id, Year, total_sales, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec, ssn) 
VALUES (110, 2023, 102000, 8500, 8600, 8700, 8800, 8900, 9000, 9100, 9000, 8900, 8800, 8700, 8600, '515-61-7171');



---------------------------------------Products--------------------------------------
-- Inserting 10 sample products
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (101, 'Laptop', 1200.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (102, 'Smartphone', 800.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (103, 'Tablet', 600.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (104, 'Printer', 200.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (105, 'Headphones', 150.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (106, 'Camera', 500.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (107, 'Smartwatch', 250.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (108, 'External Hard Drive', 100.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (109, 'Keyboard', 50.00);
INSERT INTO Products (prod_id, prod_name, p_price) VALUES (110, 'Mouse', 40.00);




------------------------------- Transactions (10) with varied products------------------------------------------
-- Transaction 10001 - Five different products including Laptop, Smartphone, Tablet, Printer, Headphones
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10001, TO_DATE('2023-01-12', 'YYYY-MM-DD'), (1200 + 800 + 600 + 200 + 150), 'Various electronics', '123-45-6789', 101, 2023);

-- Transaction 10002 - Five different products including Smartphone, Tablet, Headphones, Camera, Smartwatch
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10002, TO_DATE('2023-02-15', 'YYYY-MM-DD'), (800 + 600 + 150 + 500 + 250), 'Mixed electronic devices', '987-65-4321', 102, 2023);

-- Transaction 10003 - Five different products including Laptop, Camera, Smartwatch, External Hard Drive, Keyboard (common Laptop and Camera)
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10003, TO_DATE('2023-03-03', 'YYYY-MM-DD'), (1200 + 500 + 250 + 100 + 50), 'Assorted tech items', '111-22-3333', 103, 2023);

-- Transaction 10004 - Five different products including Printer, Headphones, External Hard Drive, Keyboard, Mouse (common Printer and Headphones)
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10004, TO_DATE('2023-03-22', 'YYYY-MM-DD'), (200 + 150 + 100 + 50 + 40), 'Office accessories', '444-55-6666', 104, 2023);

-- Transaction 10005
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10005, TO_DATE('2023-04-18', 'YYYY-MM-DD'), (1200 + 600 + 200 + 150 + 250), 'Tech upgrade package', '777-88-9999', 105, 2023);

-- Transaction 10006 - Repeats Laptop and External Hard Drive from earlier transactions
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10006, TO_DATE('2023-05-25', 'YYYY-MM-DD'), (1200 + 100 + 50 + 40 + 800), 'Mixed electronics batch', '202-30-4040', 106, 2023);

-- Transaction 10007
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10007, TO_DATE('2023-06-17', 'YYYY-MM-DD'), (800 + 150 + 500 + 50 + 40), 'Electronics for team', '505-60-7070', 107, 2023);

-- Transaction 10008
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10008, TO_DATE('2023-07-29', 'YYYY-MM-DD'), (800 + 600 + 150 + 500 + 250), 'New gadgets for project', '808-90-1010', 108, 2023);

-- Transaction 10009
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10009, TO_DATE('2023-08-30', 'YYYY-MM-DD'), (200 + 150 + 100 + 50 + 40), 'Small office supplies', '212-31-4141', 109, 2023);

-- Transaction 10010
INSERT INTO Transactions (trans_id, t_date, amount, t_description, ssn, account_id, Year) 
VALUES (10010, TO_DATE('2023-09-15', 'YYYY-MM-DD'), (1200 + 800 + 600 + 500 + 250), 'Bulk purchase for new office', '515-61-7171', 110, 2023);



-----------------------------------Txns_Prods----------------------------------------------
-- Txns_Prods for Transaction 10001 - Various electronics
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10001, 101, 1); -- Laptop
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10001, 102, 1); -- Smartphone
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10001, 103, 1); -- Tablet
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10001, 104, 1); -- Printer
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10001, 105, 1); -- Headphones

-- Txns_Prods for Transaction 10002 - Mixed electronic devices
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10002, 102, 1); -- Smartphone
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10002, 103, 1); -- Tablet
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10002, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10002, 106, 1); -- Camera
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10002, 107, 1); -- Smartwatch

-- Txns_Prods for Transaction 10003 - Assorted tech items
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10003, 101, 1); -- Laptop
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10003, 106, 1); -- Camera
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10003, 107, 1); -- Smartwatch
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10003, 108, 1); -- External Hard Drive
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10003, 109, 1); -- Keyboard

-- Txns_Prods for Transaction 10004 - Office accessories
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10004, 104, 1); -- Printer
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10004, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10004, 108, 1); -- External Hard Drive
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10004, 109, 1); -- Keyboard
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10004, 110, 1); -- Mouse

-- Txns_Prods for Transaction 10005 - Tech upgrade package
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10005, 101, 1); -- Laptop
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10005, 103, 1); -- Tablet
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10005, 104, 1); -- Printer
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10005, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10005, 107, 1); -- Smartwatch

-- Txns_Prods for Transaction 10006 - Mixed electronics batch
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10006, 101, 1); -- Laptop
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10006, 108, 1); -- External Hard Drive
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10006, 109, 1); -- Keyboard
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10006, 110, 1); -- Mouse
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10006, 102, 1); -- Smartphone

-- Txns_Prods for Transaction 10007 - Electronics for team
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10007, 102, 1); -- Smartphone
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10007, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10007, 106, 1); -- Camera
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10007, 109, 1); -- Keyboard
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10007, 110, 1); -- Mouse

-- Correcting Txns_Prods for Transaction 10008 - New gadgets for project
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10008, 102, 1); -- Smartphone
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10008, 103, 1); -- Tablet
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10008, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10008, 106, 1); -- Camera
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10008, 107, 1); -- Smartwatch

-- Txns_Prods for Transaction 10009 - Small office supplies
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10009, 104, 1); -- Printer
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10009, 105, 1); -- Headphones
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10009, 109, 1); -- Keyboard
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10009, 110, 1); -- Mouse
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10009, 108, 1); -- External Hard Drive

-- Txns_Prods for Transaction 10010 - Bulk purchase for new office
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10010, 101, 1); -- Laptop
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10010, 102, 1); -- Smartphone
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10010, 103, 1); -- Tablet
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10010, 106, 1); -- Camera
INSERT INTO Txns_Prods (trans_id, prod_id, quantity) VALUES (10010, 107, 1); -- Smartwatch



-------------------------------------------Transfer----------------------------------------
INSERT INTO Transfer (from_ssn, to_ssn, transfer_date, amount) 
VALUES ('123-45-6789', '987-65-4321', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 1500);

INSERT INTO Transfer (from_ssn, to_ssn, transfer_date, amount) 
VALUES ('111-22-3333', '444-55-6666', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2000);

INSERT INTO Transfer (from_ssn, to_ssn, transfer_date, amount) 
VALUES ('777-88-9999', '202-30-4040', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 2500);

INSERT INTO Transfer (from_ssn, to_ssn, transfer_date, amount) 
VALUES ('987-65-4321', '505-60-7070', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 1250);

INSERT INTO Transfer (from_ssn, to_ssn, transfer_date, amount) 
VALUES ('444-55-6666', '808-90-1010', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 1750);


--------------------------Inventories-------------------------------------------
INSERT INTO Inventories (inv_id, inv_location, inv_name) 
VALUES (1, 'Warehouse A', 'Electronic Devices Inventory');

INSERT INTO Inventories (inv_id, inv_location, inv_name) 
VALUES (2, 'Warehouse B', 'Peripheral Devices Inventory');

INSERT INTO Inventories (inv_id, inv_location, inv_name) 
VALUES (3, 'Warehouse C', 'Mobile and Communication Devices Inventory');

INSERT INTO Inventories (inv_id, inv_location, inv_name) 
VALUES (4, 'Warehouse D', 'Computing Equipment Inventory');

INSERT INTO Inventories (inv_id, inv_location, inv_name) 
VALUES (5, 'Warehouse E', 'Audio and Visual Equipment Inventory');



-------------------------------- Quota Offers ----------------------------------
INSERT INTO Quota_Offers (o_id, o_date, o_description) 
VALUES (1, TO_DATE('2023-03-01', 'YYYY-MM-DD'), '10% Bonus on Warehouse A Electronics');

INSERT INTO Quota_Offers (o_id, o_date, o_description) 
VALUES (2, TO_DATE('2023-04-01', 'YYYY-MM-DD'), '15% Bonus on Computing Equipment Sales');

INSERT INTO Quota_Offers (o_id, o_date, o_description) 
VALUES (3, TO_DATE('2023-05-01', 'YYYY-MM-DD'), '20% Bonus on Peripheral Devices Inventory');

INSERT INTO Quota_Offers (o_id, o_date, o_description) 
VALUES (4, TO_DATE('2023-08-01', 'YYYY-MM-DD'), '12% Bonus for Mobile Device Clearance');

INSERT INTO Quota_Offers (o_id, o_date, o_description) 
VALUES (5, TO_DATE('2023-11-01', 'YYYY-MM-DD'), '18% Bonus on Audio and Visual Equipment Sales');



--------------------------------------Contain -----------------------------------
INSERT INTO Contain (prod_id, inv_id, quantity, increase_percent, o_id) 
VALUES (101, 1, 30, 10.00, 1); -- Laptops in Electronic Devices Inventory with a 10% bonus

INSERT INTO Contain (prod_id, inv_id, quantity, increase_percent, o_id) 
VALUES (102, 3, 50, 12.00, 4); -- Smartphones in Mobile and Communication Devices Inventory with a 12% bonus

INSERT INTO Contain (prod_id, inv_id, quantity, increase_percent, o_id) 
VALUES (103, 4, 20, 15.00, 2); -- Tablets in Computing Equipment Inventory with a 15% bonus

INSERT INTO Contain (prod_id, inv_id, quantity, increase_percent, o_id) 
VALUES (104, 2, 40, 20.00, 3); -- Printers in Peripheral Devices Inventory with a 20% bonus

INSERT INTO Contain (prod_id, inv_id, quantity, increase_percent, o_id) 
VALUES (105, 5, 60, 18.00, 5); -- Headphones in Audio and Visual Equipment Inventory with an 18% bonus



----------------------------- Employee of the Month and Year ---------------------------------
INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (1, 12000, TO_DATE('2023-04-30', 'YYYY-MM-DD'), 'Employee of the Month', 101, 2023);

INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (2, 12000, TO_DATE('2023-02-28', 'YYYY-MM-DD'), 'Employee of the Month', 102, 2023);

INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (3, 11500, TO_DATE('2023-05-31', 'YYYY-MM-DD'), 'Employee of the Month', 105, 2023);

INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (4, 9900, TO_DATE('2023-05-31', 'YYYY-MM-DD'), 'Employee of the Month', 106, 2023);

INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (5, 8900, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'Employee of the Month', 108, 2023);

-- Adding 'Employee of the Year' achievements
INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (6, 130000, TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Employee of the Year', 105, 2023);

INSERT INTO Emp_Month_Year (achievement_id, sales_amount, date_of_achvmnt, type_of_achvmnt, account_id, Year) 
VALUES (7, 120000, TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Employee of the Year', 101, 2023);




----------------------------------------------- Award Centers ---------------------------------------------
INSERT INTO Award_Centers (center_id, center_name, center_location) 
VALUES (1, 'Faiz Ahmed Faiz Literary Hall', 'Lahore');

INSERT INTO Award_Centers (center_id, center_name, center_location) 
VALUES (2, 'Abdul Sattar Edhi Philanthropy Centre', 'Karachi');

INSERT INTO Award_Centers (center_id, center_name, center_location) 
VALUES (3, 'Nusrat Fateh Ali Khan Music Pavilion', 'Faisalabad');

INSERT INTO Award_Centers (center_id, center_name, center_location) 
VALUES (4, 'Benazir Bhutto Leadership Forum', 'Rawalpindi');

INSERT INTO Award_Centers (center_id, center_name, center_location) 
VALUES (5, 'Malala Yousafzai Education Center', 'Swat Valley');




------------------------------------------------- Awards -----------------------------------------------
INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (1, 10000, 5000, 'Sales Starter Achievement');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (2, 50000, 30000, 'Bronze Sales Target');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (3, 75000, 50000, 'Silver Sales Target');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (4, 100000, 75000, 'Gold Sales Target');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (5, 150000, 100000, 'Diamond Sales Target');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (6, 200000, 150000, 'Platinum Sales Target');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (7, 300000, 200000, 'Elite Sales Performer');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (8, 40000, 20000, 'Quarterly Sales Star');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (9, 500000, 300000, 'Ultimate Sales Leader');

INSERT INTO Awards (award_id, max_sale, min_sale, type) 
VALUES (10, 600000, 500000, 'Legend of Sales');




----------------------------------------------- Granted -----------------------------------------------
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('123-45-6789', 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 1, 1);

INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('987-65-4321', 2, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 1, 2, 2);

-- Reusing achievement_id 1 for a different employee
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('111-22-3333', 3, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 1, 3, 1);

-- Reusing achievement_id 2 for a different employee
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('444-55-6666', 4, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 1, 4, 2);

INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('777-88-9999', 5, TO_DATE('2023-05-15', 'YYYY-MM-DD'), 1, 5, 3);

-- Reusing achievement_id 3 for a different employee
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('202-30-4040', 6, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 1, 1, 3);

-- Reusing achievement_id 4
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('505-60-7070', 7, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 1, 2, 4);

-- Reusing achievement_id 5
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('808-90-1010', 8, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 1, 3, 5);

-- Reusing achievement_id 6
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('212-31-4141', 9, TO_DATE('2023-09-15', 'YYYY-MM-DD'), 1, 4, 6);

-- Reusing achievement_id 7
INSERT INTO GRANTED (ssn, award_id, award_date, quantity, center_id, achievement_id) 
VALUES ('515-61-7171', 10, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 1, 5, 7);



--------------------------------------------------------------EXTRA TABLES!---------------------------------------------------------------------------

-------------------------------------------------Customers-----------------------------------------------
INSERT INTO Customers (cust_id, cust_name, phone_num) VALUES (1001, 'Ali Enterprises', 0217894561);
INSERT INTO Customers (cust_id, cust_name, phone_num) VALUES (1002, 'Butt Sweets', 0427891234);
INSERT INTO Customers (cust_id, cust_name, phone_num) VALUES (1003, 'Malik Electronics', 0511234567);
INSERT INTO Customers (cust_id, cust_name, phone_num) VALUES (1004, 'Ahmed Fabrics', 0214567891);
INSERT INTO Customers (cust_id, cust_name, phone_num) VALUES (1005, 'Khan Autos', 0429876543);



-------------------------------------------------Calls-----------------------------------------------
INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3001, TO_DATE('2023-01-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-08', 'YYYY-MM-DD'), 15, 'Completed', 1001, '123-45-6789');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3002, TO_DATE('2023-02-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-02-10', 'YYYY-MM-DD'), 20, 'Completed', 1002, '987-65-4321');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3003, TO_DATE('2023-02-28 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-02-28', 'YYYY-MM-DD'), 10, 'Completed', 1003, '111-22-3333');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3004, TO_DATE('2023-03-18 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-03-18', 'YYYY-MM-DD'), 25, 'Completed', 1004, '444-55-6666');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3005, TO_DATE('2023-04-15 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), 30, 'Completed', 1005, '777-88-9999');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3006, TO_DATE('2023-05-20 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-05-20', 'YYYY-MM-DD'), 12, 'Completed', 1001, '202-30-4040');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3007, TO_DATE('2023-06-13 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-06-13', 'YYYY-MM-DD'), 18, 'Completed', 1002, '505-60-7070');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3008, TO_DATE('2023-07-25 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-07-25', 'YYYY-MM-DD'), 22, 'Completed', 1003, '808-90-1010');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3009, TO_DATE('2023-08-25 11:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-08-25', 'YYYY-MM-DD'), 15, 'Completed', 1004, '212-31-4141');

INSERT INTO Calls (c_id, c_time, c_date, c_duration, c_status, cust_id, ssn) 
VALUES (3010, TO_DATE('2023-09-10 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-09-10', 'YYYY-MM-DD'), 20, 'Completed', 1005, '515-61-7171');




------------------------------------------------- Certificate -----------------------------------------------
INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4001, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1);

INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4002, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 2);

INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4003, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 3);

INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4004, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 4);

INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4005, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 5);

-- Inserting sample certificate data corresponding to 'Employee of the Year' achievements
INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4006, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 6);

INSERT INTO Certificate (certificate_id, cert_date, achievement_id) 
VALUES (4007, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 7);



------------------------------------------------- Txns_Prod_Inv -----------------------------------------------
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (101, 4, 10001); -- Laptop from Computing Equipment Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (102, 3, 10002); -- Smartphone from Mobile and Communication Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (103, 4, 10002); -- Tablet from Computing Equipment Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (104, 2, 10004); -- Printer from Peripheral Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (105, 5, 10005); -- Headphones from Audio and Visual Equipment Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (106, 1, 10003); -- Camera from Electronic Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (107, 3, 10002); -- Smartwatch from Mobile and Communication Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (108, 2, 10004); -- External Hard Drive from Peripheral Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (109, 2, 10004); -- Keyboard from Peripheral Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (110, 2, 10004); -- Mouse from Peripheral Devices Inventory
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (101, 4, 10006); -- Laptop also appears in transaction 10006
INSERT INTO Txns_Prod_Inv (prod_id, inv_id, trans_id) VALUES (108, 2, 10006); -- External Hard Drive also appears in transaction 10006



COMMIT
