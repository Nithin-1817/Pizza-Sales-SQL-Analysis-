-- Calculate the total revenue generated from pizza sales.

SELECT 
    round(SUM(pizzas.price * order_details.quantity),2) as total_sales
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id;