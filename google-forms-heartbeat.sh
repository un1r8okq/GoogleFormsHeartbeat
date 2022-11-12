#!/bin/bash
# google-forms-heartbeat.sh
# Author: Will Verland <will@ver.land>
# POST an identifier to Google Forms at a regular interval to record system
# availability in a spreadsheet For Free™
# Results are stored at https://docs.google.com/spreadsheets/d/1mk0tVQocEtHqyoyVvlsSkQoWAEusFQF-11o9IooDjbc/edit?usp=sharing

IDENTIFIER="REPLACE_ME"

curl \
    --request POST \
    --header "Content-Type: application/x-www-form-urlencoded" \
    --data "entry.343495196=$IDENTIFIER" \
    https://docs.google.com/forms/u/0/d/e/1FAIpQLSdbnZk8Khy9jZYu4QJY2xOZQK-rQxUUDPtfrVpsZmIWv9Xmog/formResponse
