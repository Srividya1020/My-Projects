Q2. Which Countries have the most Invoices?

select * from invoice
select count(*) as c, billing_country
from invoice
group by billing_country
order by c desc;
