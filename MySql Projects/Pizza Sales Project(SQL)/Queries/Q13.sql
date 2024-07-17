# Analyze the cumulative revenue generated over time.
# increase in revenue day by day which means day1+day2...


select date,sum(revenue)over(order by date) as Cumilative_revenue from
(select orders.date ,
sum(order_details.quantity * pizzas.price) as revenue 
from order_details 
join pizzas on order_details.pizza_id = pizzas.pizza_id
join orders on orders.order_id = order_details.order_id
group by orders.date) as Sales;

