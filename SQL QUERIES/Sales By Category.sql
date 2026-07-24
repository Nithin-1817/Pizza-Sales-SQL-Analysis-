-- Join the necessary tables to find the 
-- total quantity of each pizza category ordered.

SELECT 
    category, SUM(quantity) AS quantity
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY category
ORDER BY quantity DESC;

