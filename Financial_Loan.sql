create database Bank_Loan_DB;
use Bank_Loan_DB;
select *
from financial_loan;

alter table financial_loan
add column New_Issue_date date;

update financial_loan
set New_Issue_date = str_to_date(left(issue_date,10),"%d-%m-%Y");

set Sql_safe_updates=0;

alter table financial_loan
add column New_Last_credit_pull_date date;

update financial_loan
set New_Last_credit_pull_date = str_to_date(left(last_credit_pull_date,10),"%d-%m-%Y");

alter table financial_loan
add column New_Last_payment_date date;

update financial_loan
set New_Last_payment_date = str_to_date(left(last_payment_date,10),"%d-%m-%Y");

alter table financial_loan
add column New_Next_payment_date date;

update financial_loan
set New_Next_payment_date = str_to_date(left(next_payment_date,10),"%d-%m-%Y");

select count(id) as Total_Loan_Applications from financial_loan;

alter table financial_loan
add column New_Issue_date date;
update financial_loan
set New_Issue_date = str_to_date(left(issue_date,10),"%d-%m-%Y");

select count(id) as MTD_Total_Loan_Applications from financial_loan
where month(New_Issue_date) = 12 and year(New_Issue_date) = 2021;

select count(id) as PMTD_Total_Loan_Applications from financial_loan
where month(New_Issue_date) = 11 and year(New_Issue_date) = 2021;

select *
from financial_loan;

select sum(loan_amount) as MTD_Total_Funded_Amount from financial_loan
where month(New_Issue_date) = 12 and year(New_Issue_date) = 2021;

select sum(loan_amount) as PMTD_Total_Funded_Amount from financial_loan
where month(New_Issue_date) = 11 and year(New_Issue_date) = 2021;

select sum(total_payment) as Total_Amount_Received from financial_loan;

select sum(total_payment) as PMTD_Total_Amount_Received from financial_loan
where month(New_Issue_date) = 11 and year(New_Issue_date) = 2021;

select round(Avg(int_rate), 5) * 100 as PMTD_Avg_Interest_Rate from financial_loan
where month(New_Issue_date) = 11 and year(New_Issue_date) = 2021;

select round(Avg(dti), 5) *100 as PMTD_Avg_DTI from financial_loan
where month(New_Issue_date) = 11 and year(New_Issue_date) = 2021;

select 
	(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end) * 100)
    /
    count(id) as Good_Loan_Percentage
    from financial_loan;
    
select count(id) as Good_Loan_Application 
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

select sum(loan_amount) as Good_Loan_Funded_Amount
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

select sum(total_payment) as Good_Loan_Amount_Received
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

select 
	(count(case when loan_status = 'Charged Off' then id end) * 100)
    /
    count(id) as Bad_Loan_Percentage
    from financial_loan;

select count(id) as Bad_Loan_Application 
from financial_loan
where loan_status = 'Charged Off';

select sum(loan_amount) as Bad_Loan_Funded_Amount 
from financial_loan
where loan_status = 'Charged Off';

select sum(total_payment) as Bad_Loan_Amount_Received
from financial_loan
where loan_status = 'Charged Off';

Select
	loan_status,
	count(id) as Total_Loan_Applications,
    sum(total_payment) as Total_Amount_Received,
    sum(loan_amount) as Total_Funded_Amount,
    Avg(int_rate * 100) as Interest_Rate,
    Avg(dti *100) as DTI
    from financial_loan
    group by loan_status;

Select
	loan_status,
    sum(total_payment) as MTD_Total_Amount_Received,
    sum(loan_amount) as MTD_Total_Funded_Amount
    from financial_loan
    where month(New_Issue_date) = 12 and year(New_Issue_date) = 2021
    group by loan_status;

Select
	Month(New_Issue_date) as Month_Number,
    Monthname(New_Issue_date) as Month_Name,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by Month(New_Issue_date), Monthname(New_Issue_date)
    order by Month(New_Issue_date);
    
Select
	address_state as State,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by address_state
    order by address_state;
    
Select
	term as Term,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by term
    order by term;    

Select
	emp_length as Emp_length,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by emp_length
    order by emp_length;    

Select
	purpose as Purpose,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by purpose
    order by purpose; 

Select
	home_ownership as Home_Ownership,
    Count(id) as Total_Loan_Application,
    Sum(loan_amount) as Total_Funded_Amount,
    Sum(total_payment) as Total_Received_Amount
    from financial_loan
    group by home_ownership
    order by home_ownership; 


