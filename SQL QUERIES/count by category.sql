-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    category, SUM(quantity) AS Total_orders
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY category
ORDER BY Total_orders DESC;


SELECT 
    category, COUNT(name) AS Total
FROM
    pizza_types
GROUP BY category;


