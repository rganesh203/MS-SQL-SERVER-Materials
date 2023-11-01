use interview

create table DemoTable(
   Id int,
   Value int)

insert into DemoTable values(10,100);
insert into DemoTable values(10,-110);
insert into DemoTable values(10,200);
insert into DemoTable values(10,-678);

select Id,
   sum(case when Value>0 then Value else 0 end) as Positive_Value,
   sum(case when Value<0 then Value else 0 end) as Negative_Value
   from DemoTable
   group by Id;

select Sum((Sign(value)+1)/2*value) as PositiveSum,
  Sum(-(Sign(value)-1)/2*value) as NegativeSum
  from DemoTable;