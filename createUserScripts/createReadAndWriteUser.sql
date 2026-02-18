/* This user can query the database, insert data, update existing data, delete data, and create new tables

Note: This script must be run from inside the database that you want the user to have access to

Note 2: This script only gives priveleges to tables existing at the time it is run. If you add new tables later,
you will need to run the GRANT SELECT command again for those tables.*/

-- Create the read/write user
CREATE ROLE username WITH 
    LOGIN 
    PASSWORD 'password';

-- Allow connection to the database
GRANT CONNECT ON DATABASE "IMDb_Movies" TO username;

-- Allow usage of the schema
GRANT USAGE ON SCHEMA public TO username;

-- Grant read and write privileges on all current tables
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO username;

-- Allow the user to create new tables in the schema
GRANT CREATE ON SCHEMA public TO username;
