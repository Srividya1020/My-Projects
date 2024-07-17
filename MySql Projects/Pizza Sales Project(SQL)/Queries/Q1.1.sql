# --Retrieve the total number of orders placed.

select * from orders;
select count(order_id) as total_number_of_orders from orders;