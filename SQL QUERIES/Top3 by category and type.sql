-- Determine the top 3 most ordered pizza 
-- types based on revenue for each pizza category.

select  category,name, revenue from
(select category,name,revenue,
rank() over(partition by category order by revenue desc) as rn
from
(select category,name, SUM(quantity * price) as revenue
FROM pizzas
join pizza_types
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details
on pizzas.pizza_id=order_details.pizza_id
group by category,name ) as a) as b
where  rn <= 3;
