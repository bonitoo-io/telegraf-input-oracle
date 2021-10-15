#!/bin/bash
# Connection string to your database
# See https://cx-oracle.readthedocs.io/en/latest/user_guide/connection_handling.html#connection-strings
DSN=localhost:1521/XE
# Oracle user with SELECT_CATALOG_ROLE role granted
USER=system
PASSWORD=oracle
# `instance` tag in the generated metrics
INSTANCE=XE

SCRIPT=`dirname $0`/oracle_metrics.py

## You can possibly export Oracle Client environment variables herein. 
## The recommended approach is to export then before running telegraf.
# export LD_LIBRARY_PATH=/opt/oracle/client

python3 "$SCRIPT" --dsn "$DSN" --user "$USER" --password "$PASSWORD" --instance "$INSTANCE"