-- Create employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    department VARCHAR(255),
    salary DECIMAL(10, 2)
);

-- Insert dummy data into employees table
INSERT INTO employees (name, position, department, salary)
VALUES
    ('Catherine Lee', 'Manager', 'Sales', 60000.00),
    ('David Tan', 'Clerk', 'HR', 40000.00),
    ('Bob Ling', 'Developer', 'IT', 55000.00),
    ('Alice Diong', 'Designer', 'Marketing', 50000.00);

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255),
    city VARCHAR(255)
);

-- Insert dummy data into customers table
INSERT INTO customers (customer_name, city)
VALUES
    ('Jason Lim', 'New York'),
    ('William Kong', 'Los Angeles'),
    ('Terry Poh', 'Chicago');

-- Create inventories table
CREATE TABLE inventories (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert dummy data into inventories table
INSERT INTO inventories (product_name, quantity, price)
VALUES
    ('Product 1', 100, 10.99),
    ('Product 2', 50, 20.99),
    ('Product 3', 75, 15.99);

-- Create orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    total_amount DECIMAL(10, 2)
);

-- Insert dummy data into orders table
INSERT INTO orders (order_date, customer_id, total_amount)
VALUES
    ('2023-05-20', 1, 250.00),
    ('2023-05-21', 2, 150.00),
    ('2023-07-22', 1, 120.00),
    ('2023-08-21', 3, 200.00);

-- Create sales table
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);

-- Insert dummy data into sales table
INSERT INTO sales (order_date, customer_id, product_id, quantity, sale_date)
VALUES
    ('2023-05-20', 1, 101, 5, '2023-05-20'),
    ('2023-05-21', 2, 102, 3, '2023-05-21'),
    ('2023-07-22', 1, 103, 2, '2023-07-22'),
    ('2023-08-21', 3, 101, 4, '2023-08-21');
