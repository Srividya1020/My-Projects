# Determine the distribution of orders by hour of the day.
# orders by hours means time (orders table)

select * from orders;
select * from order_details;

select hour(time) as order_time  , count(order_id) from orders
group by order_time 