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
("Human Errors", "Books", 15.50, 75),
("Bleachers", "Books", 9.99, 80),
("Computer Desk","Home/Office", 74.99, 25),
("Recliner", "Home/Office", 349.99, 12),
("Ugly Stik Fishing Pole", "Sporting Goods", 49.95, 95),
("Liquid Force Wakeboard", "Sporting Goods",142.80, 6),
("Cottonelle Toilet Paper (4pk)", "Household", 48.00, 2),
("GermX 8 oz", "Household", 25.95, 5)


