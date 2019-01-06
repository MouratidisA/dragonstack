#!/bin/bash

export PGPASSWORD = 'node_password'

dropdb -U node_user dragonstackdb
createdb -U node_user dragonstackdb

echo "Configuring dragonstackdb..."

psql -u node_user dragonstackdb < ./bin/sql/generation.sql
psql -u node_user dragonstackdb < ./bin/sql/dragon.sql

echo "Dragonstackdb configured..."