select *, trim(street) as adrresscon from [ADDRESS];

select concat(street, ' ', city) as adrresscon from [ADDRESS];

select *, replace(replace(city, 't',''), char(1),'') from [ADDRESS]