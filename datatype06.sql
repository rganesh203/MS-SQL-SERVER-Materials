
CREATE TABLE visits (
    visit_id INT PRIMARY KEY IDENTITY,
    customer_name VARCHAR (50) NOT NULL,
    phone VARCHAR (25),
    store_id INT NOT NULL,
    visit_on DATE NOT NULL,
    start_at TIME (0) NOT NULL,
    end_at TIME (0) NOT NULL
);
INSERT INTO visits (
    customer_name,
    phone,
    store_id,
    visit_on,
    start_at,
    end_at
)
VALUES
    (
        'John Doe',
        '(408)-993-3853',
        1,
        '2018-12-23',
        '09:10:00',
        '09:30:00'
    );
select * from visits

select *, dateadd(MONTH,-1,visit_on) from visits;

select *, dateadd(MONTH,-1,visit_on), datediff(day, visit_on, GETDATE()), 
year(visit_on), datepart(day, visit_on), datename(weekday,visit_on) from visits;

select *, CONVERT(varchar, visit_on,100) from visits;

select *, CONVERT(varchar, visit_on,112) from visits;

select *, month(visit_on), day(visit_on),year(visit_on) from visits;

select *, month(visit_on)+'/'+day(visit_on),year(visit_on) from visits;

select*, cast(month(visit_on) as varchar(10))+'/'+cast(day(visit_on) as varchar(10))+'/'+
cast(year(visit_on) as varchar(10)) from visits

select*, ('0'+cast(month(visit_on) as varchar(10)))+
'/'+('0'+cast(day(visit_on) as varchar(10)))+'/'+cast(year(visit_on) as varchar(10)) from visits

select*, right('0'+cast(month(visit_on) as varchar(10)),2)+'/'+right('0'+cast(day(visit_on) 
as varchar(10)),2)+'/'+cast(year(visit_on) as varchar(10)) from visits

