#!/bin/sh
while :
do
    curl -i -X PATCH -H "Authorization: $API_KEY" -H "Content-Type: application/json" https://app.launchdarkly.com/api/v2/flags/$PROJECT_ID/$FLAG_ID -d '{"comment": "Flag turned on via automation using REST API call.", "patch": [{"op":"replace", "path":"/environments/production/on", "value": true}] }'
    sleep 3600
done