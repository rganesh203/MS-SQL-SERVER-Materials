/*In this video, we will learn adding a Default Constraint. A column default can be specified using Default constraint. The default constraint is used to insert a default value into a column.
The default value will be added to all new records, if no other value is specified, including NULL.*/


--Altering an existing column to add a default constraint:
ALTER TABLE { TABLE_NAME }
ADD CONSTRAINT { CONSTRAINT_NAME }
DEFAULT { DEFAULT_VALUE } FOR { EXISTING_COLUMN_NAME }


--Adding a new column, with default value, to an existing table:
ALTER TABLE { TABLE_NAME } 
ADD { COLUMN_NAME } { DATA_TYPE } { NULL | NOT NULL } 
CONSTRAINT { CONSTRAINT_NAME } DEFAULT { DEFAULT_VALUE }


--The following command will add a default constraint, DF_tblPerson_GenderId.
ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 1 FOR GenderId


--The insert statement below does not provide a value for GenderId column, so the default of 1 will be inserted for this record.
Insert into tblPerson(ID,Name,Email) values(5,'Sam','s@s.com')


--On the other hand, the following insert statement will insert NULL, instead of using the default.
Insert into tblPerson(ID,Name,Email,GenderId) values (6,'Dan','d@d.com',NULL)


--To drop a constraint
ALTER TABLE { TABLE_NAME } 
DROP CONSTRAINT { CONSTRAINT_NAME }


---In the next session, we will learn about cascading referential integrity