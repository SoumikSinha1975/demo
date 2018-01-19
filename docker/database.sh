#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
 create user demo_user WITH encrypted password 'demo_pass';
create database demo_db;
grant all privileges ON DATABASE demo_db TO demo_user;

EOSQL
