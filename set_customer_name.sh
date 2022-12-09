#!/bin/bash

set -e


if [ $# -eq 0 ]; then
    echo "command <customer name>"
fi

CUSTOMER_NAME=${1}

sed -i "s/\${customer_name}/${CUSTOMER_NAME}/g" *.tf
