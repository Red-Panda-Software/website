# README

Main Website of Red Panda Software.

## Requirements

* Ruby 3.4 or higher
* Rails 8
* Docker with PostgreSQL set up for local development

## Local Development

The project expects a local PostgreSQL database, preferable with docker to run.
This can be achieved by running the following commands, which will set up a postgreSQL
database with the correct account setup, and make the application work out of the box:

```bash
# Pull the required image, we use PostgreSQL 18
docker pull postgres:18 

# Set up the container, and configure the password for the postgres user.
# We will use the postgres user to create all DBs etc, on production we will
# have a dedicated user and database.
docker run --name postgres-18 -e POSTGRES_PASSWORD="some-secret-password" -d -p 5432:5432 postgres:18
```

Then set your `DATABASE_PASSWORD` in our `.env.*.local` files to match the ones used in the container.
The application will work out of the box with it.
