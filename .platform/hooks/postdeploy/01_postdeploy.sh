#!/bin/bash

echo "Running postdeploy hook"
source /tmp/sidekiq_restart.sh
