#!/bin/bash

# Install SaltStack
# Verson is provided via SALT_VERSION env variable
DEBIAN_FRONTEND=noninteractive

echo "SALT_VERSION: $SALT_VERSION"
curl -o /tmp/bootstrap-salt.sh -L https://bootstrap.saltstack.com
chmod +x /tmp/bootstrap-salt.sh
/tmp/bootstrap-salt.sh -q -F -P -c /tmp git $SALT_VERSION
rm /tmp/bootstrap-salt.sh
