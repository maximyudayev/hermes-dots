#!/bin/sh
source .venv/bin/activate

if [ -f "$FILE" ]; then
    trial_id=$(cat "$FILE")
else
    trial_id=0
fi
trial_id=$((trial_id + 1))
echo "$trial_id" > "$FILE"

hermes-cli -o ./data --config_file ./examples/dotsbleak.yml --experiment project=Test type=DotsBleak trial=$trial_d
