#!/bin/bash

# Loome varunduse kausta, kui seda veel pole
mkdir -p ./varundus

# Pakime Nextcloudi ja Odoo andmemahud kokku
# Kasutame kuupäeva failinimes
echo "Alustan varundamist..."
tar -cvf ./varundus/projekt_backup_$(date +%Y%m%d).tar .

echo "Varundus valmis! Fail asub kaustas ./varundus"
