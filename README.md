#For this demo we will be using a DB called NRDemo. 
#This demo was build using MySQL. 

Instructions to create DB:
  Connect and login into MySQL server.
  Create DB using the following command:
    CREATE DATABASE NRDemo;
  Verify DB was created using the following command:
    SHOW DATABASES;

Instructions to create service account:
  If using MySQL WorkBench navigate to Administration tab on the left pane. Under the Management section select "Users and Privilages".
  On the right pane under User Accounts click on Add Account. 
  Fill out form as follows:
    Login Name: NRService
    Authentication Type: Standard
    Limit to Hosts Matching: %
    Password: NRDemoService!3

  Update the privilages for this account by updating the service account's privilages:
    On the right pane of the screen select the Schema Privilages tab
      Click on Selected schema and select nrdemo from the dropdown
      For the purposes of this service account we are only granding select and execute rights. An admin account can be created to deal with DDL changes. 
 
  Click Apply (bottom right of that pane)

Adding required tables:
  Navigate to ddl folder and run the SQL queries found on there for bothe the customerInfo table and the companyInfo. 

Adding required Stored Procedures:
  Navigate to sp folder and run the SQL queries found on there.

