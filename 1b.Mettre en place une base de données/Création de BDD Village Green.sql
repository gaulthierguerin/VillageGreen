DROP DATABASE IF EXISTS Village_green;

CREATE DATABASE Village_green;

USE Village_green;

CREATE TABLE
    employee (
        employee_id INT AUTO_INCREMENT,
        employee_username VARCHAR(16) NOT NULL,
        employee_lastname VARCHAR(50) NOT NULL,
        employee_firstname VARCHAR(50) NOT NULL,
        employee_phone VARCHAR(15) NOT NULL,
        employee_address VARCHAR(100) NOT NULL,
        employee_status ENUM (
            'stock manager',
            'salesperson',
            'business salesperson'
        ) NOT NULL,
        PRIMARY KEY (employee_id),
        UNIQUE (employee_username)
    );

CREATE TABLE
    category (
        category_id INT AUTO_INCREMENT,
        category_name VARCHAR(50) NOT NULL,
        category_desc VARCHAR(500) NOT NULL,
        PRIMARY KEY (category_id)
    );

CREATE TABLE
    subcategory (
        subcategory_id INT AUTO_INCREMENT,
        subcategory_name VARCHAR(50) NOT NULL,
        subcategory_desc VARCHAR(500),
        category_id INT NOT NULL,
        PRIMARY KEY (subcategory_id),
        FOREIGN KEY (category_id) REFERENCES category (category_id)
    );

CREATE TABLE
    invoice (
        invoice_id INT AUTO_INCREMENT,
        payment_type VARCHAR(50) NOT NULL,
        payment_done BOOLEAN NOT NULL,
        invoice_date DATE,
        invoice_totalPrice DECIMAL(10, 2) NOT NULL,
        PRIMARY KEY (invoice_id)
    );

CREATE TABLE
    customer (
        customer_id INT AUTO_INCREMENT,
        customer_email VARCHAR(50) NOT NULL,
        customer_username VARCHAR(16) NOT NULL,
        customer_registerdate DATE,
        customer_lastname VARCHAR(50) NOT NULL,
        customer_firstname VARCHAR(50) NOT NULL,
        customer_country VARCHAR(25) NOT NULL,
        customer_address VARCHAR(100) NOT NULL,
        customer_zipcode VARCHAR(10) NOT NULL,
        customer_city VARCHAR(100) NOT NULL,
        customer_phone VARCHAR(15) NOT NULL,
        client_isCompany BOOLEAN NOT NULL,
        employee_id INT,
        PRIMARY KEY (customer_id),
        UNIQUE (customer_email),
        UNIQUE (customer_username),
        FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
    );

CREATE TABLE
    address (
        address_id INT AUTO_INCREMENT,
        address_lastname VARCHAR(50) NOT NULL,
        address_firstname VARCHAR(50) NOT NULL,
        address_phone VARCHAR(15) NOT NULL,
        adress_address VARCHAR(100) NOT NULL,
        address_zipcode VARCHAR(10) NOT NULL,
        address_city VARCHAR(100) NOT NULL,
        customer_id INT NOT NULL,
        PRIMARY KEY (address_id),
        FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
    );

CREATE TABLE
    customerOrder (
        customerOrder_id INT AUTO_INCREMENT,
        customerOrder_date DATETIME NOT NULL,
        customerOrder_status ENUM ('Payé', 'Non payé') NOT NULL,
        customerOrder_totalHT DECIMAL(10, 2) NOT NULL,
        customer_id INT NOT NULL,
        address_id INT NOT NULL,
        invoice_id INT NOT NULL,
        PRIMARY KEY (customerOrder_id),
        FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
        FOREIGN KEY (address_id) REFERENCES address (address_id),
        FOREIGN KEY (invoice_id) REFERENCES invoice (invoice_id)
    );

CREATE TABLE
    product (
        product_id INT AUTO_INCREMENT,
        product_name VARCHAR(50) NOT NULL,
        product_desc TEXT NOT NULL,
        product_isAvailable BOOLEAN NOT NULL,
        product_photo VARCHAR(50),
        product_qty INT NOT NULL,
        product_price DECIMAL(15, 2) NOT NULL,
        product_brand VARCHAR(50) NOT NULL,
        subcategory_id INT NOT NULL,
        PRIMARY KEY (product_id),
        FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
    );

CREATE TABLE
    creditcard (
        creditcard_id INT AUTO_INCREMENT,
        creditcard_issuer VARCHAR(50) NOT NULL,
        creditcard_number CHAR(16) NOT NULL,
        creditcard_expirationmonth TINYINT (2) NOT NULL,
        creditcard_expirationyear TINYINT (2) NOT NULL,
        customer_id INT NOT NULL,
        PRIMARY KEY (creditcard_id),
        FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
    );

CREATE TABLE
    shipping (
        shipping_id INT AUTO_INCREMENT,
        shipping_date DATE,
        delivery_company VARCHAR(50),
        customerOrder_id INT NOT NULL,
        PRIMARY KEY (shipping_id),
        FOREIGN KEY (customerOrder_id) REFERENCES customerOrder (customerOrder_id)
    );

CREATE TABLE
    orderdetails (
        orderdetails_id INT AUTO_INCREMENT,
        orderdetails_qty INT NOT NULL,
        orderdetails_unitprice DECIMAL(10, 2) NOT NULL,
        product_id INT NOT NULL,
        customerOrder_id INT NOT NULL,
        PRIMARY KEY (orderdetails_id),
        FOREIGN KEY (product_id) REFERENCES product (product_id),
        FOREIGN KEY (customerOrder_id) REFERENCES customerOrder (customerOrder_id)
    );

CREATE TABLE
    isShipped (
        product_id INT AUTO_INCREMENT,
        shipping_id INT,
        qty_delivered INT NOT NULL,
        PRIMARY KEY (product_id, shipping_id),
        FOREIGN KEY (product_id) REFERENCES product (product_id),
        FOREIGN KEY (shipping_id) REFERENCES shipping (shipping_id)
    );