#!/bin/sh
while :
do
    sleep SLEEP_DURATION_IN_SECONDS
    printf '{"comment": "Flag turned on via automation using REST API call.", "patch": [{"op":"replace", "path":"/environments/' > data
    printf "%s" $ENVIRONMENT_NAME >> data
    printf '/on", "value": true}] }' >> data
    curl -i -X PATCH -H "Authorization: $API_KEY" -H "Content-Type: application/json" https://app.launchdarkly.com/api/v2/flags/$PROJECT_NAME/$FLAG_ID -d @data
done