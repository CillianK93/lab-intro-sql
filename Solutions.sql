-- Query 1
select client_id from client
where district_id = 1
order by client_id asc
limit 5;

-- Query 2
select client_id from client
where district_id = 72
order by client_id desc
limit 1;

-- Query 3
select amount from loan
order by amount asc
limit 3;

-- Query 4
select distinct status from loan
order by status asc;

-- Query 5
select loan_id  from loan
order by payments asc
limit 1;

-- query 6
select account_id, amount from loan
order by account_id asc
limit 5;

-- Query 7
select account_id from loan
where duration = 60
order by amount asc;

-- Query 8
select distinct k_symbol from `order`;

-- Query 9
select order_id from `order`
where account_id = 34;

-- Query 10
select distinct account_id from `order`
where order_id >= 29540 and order_id <=29560;

-- Query 11 
select amount from `order`
where account_to = 30067122;

-- Query 12
select trans_id, date, type ,amount from trans
where account_id =793
order by date desc;

-- Query 13
select district_id, count(client_id) from client
where district_id <10
group by district_id
order by district_id asc;

-- Query 14
select distinct type, count(type) from card
group by type
order by type asc;

-- Query 15
select account_id, sum(amount) as 'total_amount' from loan
group by account_id
order by total_amount desc
limit 10;

-- Query 16-
select date, count(loan_id) from loan
where date < 930907
group by date
order by date desc;

-- Query 17
select date, duration, count(loan_id) from loan
where date between 971200 and 971231
group by date, duration
order by date, duration asc;

-- Query 18
select account_id, type, sum(amount) as 'Total' from trans
where account_id = 396
group by type
order by total asc;

-- Query 19
select account_id,
case
	when type = 'PRIJEM' then 'INCOMING'
    else 'OUTGOING'
    end as transaction_type,
round(sum(amount),0) as total_amount from trans
where account_id = 396
group by type
order by type asc;

-- Query 20
select account_id,
	round(sum(case
		when type ='PRIJEM' then amount
        end)) as Incoming,
	round(sum(case
		when type = 'VYDAJ' then amount
        end)) as Outgoing,
	round(sum(case
		when type ='PRIJEM' then amount
        when type ='VYDAJ' then -amount
        end)) as Difference
from trans
where account_id = 396;

-- Query 21
select account_id,
	round(sum(case
    when type = 'PRIJEM' then amount
    when type = 'VYDAJ' then -amount
    end)) as Difference
from trans
group by account_id
order by Difference desc
limit 10;
        
        
		












