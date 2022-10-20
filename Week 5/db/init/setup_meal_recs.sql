CREATE TABLE IF NOT EXISTS Meals (
    MealId SERIAL PRIMARY KEY
    ,MealName TEXT NOT NULL
    ,MealPrice REAL NOT NULL
);

INSERT INTO Meals(MealName, MealPrice) VALUES ('Krusty Burger', 4.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Krusty Burger2', 6.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Double Krusty Burger', 8.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Deep Fried Krusty Burger', 12.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Mother Nature Burger', 7.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Double Double Double Double', 12.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Meat-Flavored Sandwich', 0.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('The Clogger', 3.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Whatchamachicken', 4.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Krusty Popcorn', 8.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Soda', 2.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Mega Sugar Soda', 2.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Heart Failure Fries', 3.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Krusty-Partially-Gelatinated-Non-Dairy-Gum-Based-Beverage', 8.99);
INSERT INTO Meals(MealName, MealPrice) VALUES ('Hot Lettuce Injection', 8.99);