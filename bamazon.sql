CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    ID INT AUTO_INCREMENT,
    Name  VARCHAR(50) NOT NULL,
    Department  VARCHAR(30)NOT NULL,
    Price DECIMAL(5,2) NOT NULL,
    Quantity INT NOT NULL,
    PRIMARY KEY(ID)
);

INSERT INTO products(Name,Department,Price,Quantity)
VALUES 
("XBOX One","Electronics",299.99,50),
("Skull Candy Headphones", "Electronics", 20, 120),
("Human Errors", "Books", 15.50, 75)

