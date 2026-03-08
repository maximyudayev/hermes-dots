#!/bin/sh
. ../.venv/bin/activate
hermes-cli -o ./data --config_file dotsoem.yml --experiment project=Test type=DotsOem trial=0
