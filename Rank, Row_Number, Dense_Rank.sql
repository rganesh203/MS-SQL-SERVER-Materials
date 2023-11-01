SELECT * FROM CONTACTS

SELECT *, rank() over (partition by first_name, last_name ORDER BY contact_id)
FROM CONTACTS

SELECT *, ROW_NUMBER() over (partition by first_name, last_name ORDER BY contact_id DESC)
FROM CONTACTS

SELECT *, DENSE_rank() over (partition by first_name, last_name ORDER BY contact_id DESC)
FROM CONTACTS