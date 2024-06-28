# NewRelic_DB
This repository contains the database schema and stored procedures for the NewRelic demo project. It uses MySQL as the database management system.

**Database Setup**

**Create Database**
1. Connect to your MySQL server.
2. Log in using appropriate credentials.
3. Create a new database named NRDemo with the following command:
```sql
CREATE DATABASE NRDemo;
```
4. Verify that the database was created successfully:
```sql
SHOW DATABASES;
```

### Create Service Account

1. If using MySQL Workbench:
- Navigate to the Administration tab > Management > Users and Privileges.
- Click "Add Account" under User Accounts.
- Fill out the form:
  - **Login Name:** NRService
  - **Authentication Type:** Standard
  - **Limit to Hosts Matching:** %
  - **Password:** NRDemoService!3
2. Update privileges for this account:
- Select Schema Privileges > Selected schema: `nrdemo`.
- Grant `SELECT` and `EXECUTE` rights. Use an admin account for DDL changes.
- Click Apply.

## Setting Up Tables

### CustomerInfo Table

1. Navigate to the `ddl` folder.
2. Run the SQL script for creating the `customerInfo` table.

### CompanyInfo Table

1. Navigate to the `ddl` folder.
2. Run the SQL script for creating the `companyInfo` table.

## Setting Up Stored Procedures

1. Navigate to the `sp` folder.
2. Run the SQL scripts for creating the required stored procedures.

