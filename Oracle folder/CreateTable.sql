--------------- Employees Table--------------
CREATE TABLE Employees (
    ssn VARCHAR2(11) NOT NULL,
    name VARCHAR2(100),
    dob DATE,
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    marital_status VARCHAR2(50),
    dependent# NUMBER,
    PRIMARY KEY (ssn)
);

--------------- Phones Table (for multivalued attribute 'phone')------------------
CREATE TABLE Employee_Phones (
    ssn VARCHAR2(11) NOT NULL,
    phone VARCHAR2(15),
    FOREIGN KEY (ssn) REFERENCES Employees(ssn),
    PRIMARY KEY (ssn, phone)
);

---------------- Addresses Table (for multivalued attribute 'address')------------------
CREATE TABLE Employee_Addresses (
    ssn VARCHAR2(11) NOT NULL,
    bldg# VARCHAR2(10),
    street VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    zip VARCHAR2(10),
    FOREIGN KEY (ssn) REFERENCES Employees(ssn),
    PRIMARY KEY (ssn, bldg#, street, city, state, zip) 
);


--------------------------- Login Table-----------------------
CREATE TABLE Login (
    username VARCHAR2(50) NOT NULL,
    password VARCHAR2(50),
    employee_ssn VARCHAR2(11) NOT NULL,
    PRIMARY KEY (username),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn),
    CONSTRAINT fk_employee UNIQUE (employee_ssn)  -- Ensures one-to-one relationship. 
);


--------------------------- Customers Table-----------------------
CREATE TABLE Customers (
    cust_id VARCHAR2(10) NOT NULL,
    cust_name VARCHAR2(100),
    phone_num VARCHAR2(15),
    PRIMARY KEY (cust_id)
);



--------------------------- Calls Table-----------------------
CREATE TABLE Calls (
    c_id VARCHAR2(10) NOT NULL,
    c_time TIMESTAMP,
    c_date DATE,
    c_duration NUMBER,
    employee_ssn VARCHAR2(11) NOT NULL,  
    cust_id VARCHAR2(10) NOT NULL,  
    status VARCHAR2(50),  
    c_status VARCHAR2(50),  
    PRIMARY KEY (c_id),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn),
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);


--------------------------- Awards Table-----------------------
CREATE TABLE Awards (
    award_id VARCHAR2(10) NOT NULL,
    type VARCHAR2(100),
    max_sale NUMBER(10, 2),
    min_sale NUMBER(10, 2),
    PRIMARY KEY (award_id)
);


--------------------------- Award_Centers Table-----------------------
CREATE TABLE Award_Centers (
    center_id VARCHAR2(10) NOT NULL,
    center_location VARCHAR2(255),
    center_name VARCHAR2(100),
    PRIMARY KEY (center_id)
);



--------------------------- Certificate Table-----------------------
CREATE TABLE Certificate (
    certificate_id VARCHAR2(10) NOT NULL,
    cert_date DATE,
    PRIMARY KEY (certificate_id)
);



--------------------------- Transactions Table-----------------------
CREATE TABLE Transactions (
    trans_id VARCHAR2(10) NOT NULL,
    amount NUMBER(10, 2),
    t_date DATE,
    t_description VARCHAR2(255),
    employee_ssn VARCHAR2(11) NOT NULL, 
    PRIMARY KEY (trans_id),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn)
);


--------------------------- Emp_Sales Table-----------------------
CREATE TABLE Emp_Sales (
    account_id VARCHAR2(10) NOT NULL,
    total_sales NUMBER(10, 2),
    year NUMBER(4) NOT NULL,
    jan_sales NUMBER(10, 2),
    feb_sales NUMBER(10, 2),
    mar_sales NUMBER(10, 2),
    apr_sales NUMBER(10, 2),
    may_sales NUMBER(10, 2),
    jun_sales NUMBER(10, 2),
    jul_sales NUMBER(10, 2),
    aug_sales NUMBER(10, 2),
    sep_sales NUMBER(10, 2),
    oct_sales NUMBER(10, 2),
    nov_sales NUMBER(10, 2),
    dec_sales NUMBER(10, 2),
    employee_ssn VARCHAR2(11) NOT NULL,  
    trans_id VARCHAR2(10) NOT NULL,       
    PRIMARY KEY (account_id, year),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn),
    FOREIGN KEY (trans_id) REFERENCES Transactions(trans_id)
);


--------------------------- Emp_Month_Year Table-----------------------
CREATE TABLE Emp_Month_Year (
    achievement_id VARCHAR2(10) NOT NULL,
    sales_amount NUMBER(10, 2),
    date_of_achvmnt DATE,
    type_of_achvmnt VARCHAR2(100),
    certificate_id VARCHAR2(10), 
    account_id VARCHAR2(10),      
    sales_year NUMBER(4),         
    employee_ssn VARCHAR2(11),    
    award_id VARCHAR2(10),        
    PRIMARY KEY (achievement_id),
    FOREIGN KEY (certificate_id) REFERENCES Certificate(certificate_id),
    FOREIGN KEY (account_id, sales_year) REFERENCES Emp_Sales(account_id, year),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn),  
    FOREIGN KEY (award_id) REFERENCES Awards(award_id)     
);


--------------------------- Products Table-----------------------
CREATE TABLE Products (
    prod_id VARCHAR2(10) NOT NULL,
    prod_name VARCHAR2(100),
    p_price NUMBER(10, 2),
    PRIMARY KEY (prod_id)
);


--------------------------- Inventories Table-----------------------
CREATE TABLE Inventories (
    inv_id VARCHAR2(10) NOT NULL,
    inv_location VARCHAR2(255),
    inv_name VARCHAR2(100),
    PRIMARY KEY (inv_id)
);


--------------------------- Quota_Offers Table-----------------------
CREATE TABLE Quota_Offers (
    o_id VARCHAR2(10) NOT NULL,
    o_date DATE,
    o_description VARCHAR2(255),
    PRIMARY KEY (o_id)
);



-- Transfer Table to represent the many-to-many recursive relationship within Employees
CREATE TABLE Employee_Transfer (
    transfer_id VARCHAR2(10) NOT NULL,  
    transferor_ssn VARCHAR2(11) NOT NULL,
    transferee_ssn VARCHAR2(11) NOT NULL,
    transfer_date DATE NOT NULL,
    amount NUMBER(10, 2),
    PRIMARY KEY (transfer_id),
    FOREIGN KEY (transferor_ssn) REFERENCES Employees(ssn),
    FOREIGN KEY (transferee_ssn) REFERENCES Employees(ssn),
    CHECK (transferor_ssn <> transferee_ssn)  
);


--------------------------- Grants Relationship Table-----------------------
CREATE TABLE Granted_Awards (
    award_id VARCHAR2(10) NOT NULL,
    employee_ssn VARCHAR2(11) NOT NULL,
    award_date DATE NOT NULL,
    quantity NUMBER,
    PRIMARY KEY (award_id, employee_ssn, award_date),
    FOREIGN KEY (award_id) REFERENCES Awards(award_id),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn)
);


--------------------------- Receive Awards aggregation relationship Table-----------------------
CREATE TABLE Receive_Awards (
    receive_id VARCHAR2(10) NOT NULL, 
    center_id VARCHAR2(10) NOT NULL,
    award_id VARCHAR2(10) NOT NULL, 
    employee_ssn VARCHAR2(11) NOT NULL, 
    PRIMARY KEY (receive_id),
    FOREIGN KEY (center_id) REFERENCES Award_Centers(center_id),
    FOREIGN KEY (award_id) REFERENCES Awards(award_id),
    FOREIGN KEY (employee_ssn) REFERENCES Employees(ssn)
    
);



--------------------------- Inventory & Products Relation Table-----------------------
CREATE TABLE Inventory_Products (
    inv_id VARCHAR2(10) NOT NULL,
    prod_id VARCHAR2(10) NOT NULL,
    quantity NUMBER(10, 2),
    PRIMARY KEY (inv_id, prod_id),
    FOREIGN KEY (inv_id) REFERENCES Inventories(inv_id),
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);


--------------------------- Transaction & Product Relation Table-----------------------
CREATE TABLE Transaction_Products (
    trans_id VARCHAR2(10) NOT NULL,
    prod_id VARCHAR2(10) NOT NULL,
    quantity NUMBER(10, 2),
    PRIMARY KEY (trans_id, prod_id),
    FOREIGN KEY (trans_id) REFERENCES Transactions(trans_id),
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);


--------------------------- Transaction Increase Aggregation Table-----------------------
CREATE TABLE Transaction_Increase (
    trans_id VARCHAR2(10) NOT NULL,
    inv_id VARCHAR2(10) NOT NULL,
    prod_id VARCHAR2(10) NOT NULL,
    increase_quantity NUMBER(10, 2),
    PRIMARY KEY (trans_id, inv_id, prod_id),
    FOREIGN KEY (trans_id) REFERENCES Transactions(trans_id),
    FOREIGN KEY (inv_id) REFERENCES Inventories(inv_id),
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);


--------------------------- Apply Offer Aggregation Table-----------------------
CREATE TABLE Apply_Offer (
    o_id VARCHAR2(10) NOT NULL,
    inv_id VARCHAR2(10) NOT NULL,
    prod_id VARCHAR2(10) NOT NULL,
    increase_percent NUMBER(10, 2),
    PRIMARY KEY (o_id, inv_id, prod_id),
    FOREIGN KEY (o_id) REFERENCES Quota_Offers(o_id),
    FOREIGN KEY (inv_id) REFERENCES Inventories(inv_id),
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);














