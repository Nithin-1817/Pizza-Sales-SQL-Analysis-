-- Analyze the cumulative revenue generated over time.

select sales.order_date,
sum(revenue) over(order by order_date) as Cum_rev
from
(select orders.order_date,
sum(order_details.quantity * pizzas.price) as revenue
from pizzas
join order_details
on pizzas.pizza_id=order_details.pizza_id
join orders
on orders.order_id=order_details.order_id
group by order_date) as sales;



