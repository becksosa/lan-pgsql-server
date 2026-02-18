-- Create a superuser - this is essentially the same as your admin powers
CREATE ROLE username WITH
    LOGIN
    PASSWORD 'password'
	SUPERUSER;