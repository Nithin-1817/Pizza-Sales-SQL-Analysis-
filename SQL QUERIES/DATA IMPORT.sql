create database pizza_project;

use pizza_project;

CREATE TABLE orders (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    Order_time TIME NOT NULL,
    PRIMARY KEY (order_id)
);

CREATE TABLE order_details (
    order_details_id INT NOT NULL,
    order_id INT NOT NULL,
    pizza_id TEXT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_details_id)
);

select * from order_details;

select * from orders;

select * from pizza_types;

select * from pizzas;


