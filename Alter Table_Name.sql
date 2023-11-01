Create database DatabaseName


Alter database DatabaseName Modify Name = NewDatabaseName


--Alternatively, you can also use system stored procedure

Execute sp_renameDB 'NewDatabaseName','oldDatabaseName'

