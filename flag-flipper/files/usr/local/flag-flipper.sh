#!/bin/sh
while :
do
    let SLEEP_DELAY_RANGE_SIZE=$SLEEP_DELAY_CEILING-$SLEEP_DELAY_FLOOR+1 # Adding 1 to ensure we do not mod 0 on the next line.
    let SLEEP_DELAY_DURATION=$RANDOM%$SLEEP_DELAY_RANGE_SIZE
    let SLEEP_DELAY_ACTUAL=$SLEEP_DELAY_DURATION+$SLEEP_DELAY_FLOOR
    echo "Sleeping for $SLEEP_DELAY_ACTUAL seconds (range $SLEEP_DELAY_FLOOR - $SLEEP_DELAY_CEILING seconds) until activating flag..."
    sleep $SLEEP_DELAY_ACTUAL
    printf '{"comment": "Flag turned on via automation using REST API call.", "patch": [{"op":"replace", "path":"/environments/' > data
    printf "%s" $ENVIRONMENT_NAME >> data
    printf '/on", "value": true}] }' >> data
    curl -i -X PATCH -H "Authorization: $API_KEY" -H "Content-Type: application/json" https://app.launchdarkly.com/api/v2/flags/$PROJECT_NAME/$FLAG_ID -d @data
done