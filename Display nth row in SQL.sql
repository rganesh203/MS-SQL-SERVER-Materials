CREATE TABLE Employee_4(
ID INT PRIMARY KEY identity(1,1),
NAME VARCHAR(30) NOT NULL,
PHONE INT NOT NULL UNIQUE,
EMAIL VARCHAR(30) NOT NULL UNIQUE,
DATE_OF_JOINING DATE);

INSERT INTO Employee_4 (NAME, PHONE, EMAIL, DATE_OF_JOINING)
VALUES
('Yogesh Vaishnav', 0000000001, 'yogesh@mail.com', '2019-10-03'),
('Vishal Vishwakarma', 0000000002, 'chicha@mail.com', '2019-11-07'),
('Ajit Yadav', 0000000003, 'ppa@mail.com', '2019-12-12'),
('Ashish Yadav', 0000000004, 'baba@mail.com', '2019-12-25'),
('Tanvi Thakur', 0000000005, 'tanvi@mail.com', '2020-01-20'),
('Sam', 0000000006, 'sam@mail.com', '2020-03-03'),
('Ron', 0000000007, 'ron@mail.com', '2020-05-16'),
('Sara', 0000000008, 'sara@mail.com', '2020-07-01'),
('Zara', 0000000009, 'zara@mail.com', '2020-08-20'),
('Yoji', 0000000010, 'yoji@mail.com', '2020-03-10');

SELECT Top 3 * FROM Employee_4 
ORDER BY id;     --column name is the name according to which the rows are to be ordered.Here it's ID.

SELECT * FROM Employee_4;

SELECT *
FROM (
  SELECT ROW_NUMBER() OVER (ORDER BY id) AS row_num
             , id
             , NAME
			 , PHONE
			 , EMAIL
			 , DATE_OF_JOINING
  FROM Employee_4
) AS sub
WHERE id = 5