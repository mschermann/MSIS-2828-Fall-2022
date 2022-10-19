CREATE TABLE IF NOT EXISTS Product (
  ProductId INTEGER PRIMARY KEY,
  ProductName TEXT NOT NULL,
  ProductCategory TEXT NOT NULL,
  ProductPrice REAL NOT NULL,
  IsVegetarian INTEGER 
)
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Krusty Burger', 'Sandwich', 4.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Krusty Burger2', 'Sandwich', 6.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Double Krusty Burger', 'Sandwich', 8.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Deep Fried Krusty Burger', 'Sandwich', 12.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Mother Nature Burger', 'Sandwich', 7.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Double Double Double Double', 'Sandwich', 12.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Meat-Flavored Sandwich', 'Sandwich', 0.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('The Clogger', 'Sandwich', 3.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Whatchamachicken', 'Sandwich', 4.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Krusty Popcorn', 'Side', 8.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Soda', 'Drink', 2.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Mega Sugar Soda', 'Drink', 2.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Heart Failure Fries', 'Side', 3.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice) VALUES ('Krusty-Partially-Gelatinated-Non-Dairy-Gum-Based-Beverage', 'Drink', 8.99);
INSERT INTO Product(ProductName, ProductCategory, ProductPrice, IsVegetarian) VALUES ('Hot Lettuce Injection', 'Sandwich', 8.99, 1);
