use [sql]

Create table dbo.Images

(id int null, Img varbinary(max) null);

Insert into dbo.Images values

(1, (Select * from Openrowset (BULK 'C:\Users\rgane\OneDrive\Desktop\1680951652134.jpg' , Single_Blob) as T))

select * from images