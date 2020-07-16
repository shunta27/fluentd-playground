#!/usr/bin/env bash
set -Eeo pipefail

# td-agent
service td-agent start
tail -f /var/log/td-agent/td-agent.log
