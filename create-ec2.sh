#!/bin/bash

SG_IDs=$(aws ec2 describe-security-groups --filters Name=group-name,Values=publicSG | jq  '.SecurityGroups[].GroupId' | sed -e 's/"//g')

echo $SG_IDs

