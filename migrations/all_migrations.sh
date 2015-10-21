#!/bin/bash

for f in *.sql;
do
    psql slipDB -f "$f"
done
