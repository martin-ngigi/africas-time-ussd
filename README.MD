# Africas Time USSD App in PHP

1. Create in MYSQL Database called africas_time_db
- to add a column to the db:

            ALTER TABLE users ADD other_phone varchar(20);
2. Create Table users:

            create table users
            (
                username	varchar(30),	
                phonenumber	varchar(20),
                city	varchar(30),
                status	enum('ACTIVE','SUSPENDED'),
                other_phone varchar(20)
            );

3. Create table session_levels:
            create table session_levels(
                session_id	varchar(50),
                phonenumber	varchar(25),	
                level	tinyint(1)	
            );

3. Install Africas talking using composer:

        composer require africastalking/africastalking

## Images
- ![1](images/1.PNG)
- ![2](images/2.PNG)
- ![3](images/3.PNG)
- ![4](images/4.PNG)
- ![5](images/5.PNG)
- ![6](images/6.PNG)
- ![7](images/7.PNG)
- ![8](images/8.PNG)
- ![9](images/9.PNG)