#!/bin/bash

echo "Running postdeploy config hook"
source /tmp/sidekiq_restart.sh
