/* This user can query the database, but cannot make any changes

Note: This script must be run from inside the database that you want the user to have access to

Note 2: This script only gives priveleges to tables existing at the time it is run. If you add new tables later,
you will need to run the GRANT SELECT command again for those tables.*/

-- Create the read-only user
CREATE ROLE username WITH
    LOGIN
    PASSWORD 'password';

-- Grant connection privilege to the database
GRANT CONNECT ON DATABASE "IMDb_Movies" TO username; -- Replace "IMDb_Movies" with the name of your database

-- Allow usage on the public schema (or replace 'public' with whatever schema you're using)
GRANT USAGE ON SCHEMA public TO username;

-- Grant SELECT privilege on all current tables in the schema - this allows the user to query the tables
GRANT SELECT ON ALL TABLES IN SCHEMA public to username;