# Africas Time USSD App in PHP

1. Create in MYSQL Database called africas_time_db
2. Create Table users:

            create table users
            (
                username	varchar(30),	
                phonenumber	varchar(20),
                city	varchar(30),
                status	enum('ACTIVE','SUSPENDED')
            );

3. Create table session_levels:
            create table session_levels(
                session_id	varchar(50),
                phonenumber	varchar(25),	
                level	tinyint(1)	
            );