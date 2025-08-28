#!/bin/bash

# First run the CLI configuration (before starting WildFly)
echo "⏳ Configuring WildFly..."
/opt/jboss/wildfly/bin/jboss-cli.sh --file=/opt/jboss/wildfly/configure-datasource.cli

# Then start WildFly
echo "⏳ Starting WildFly..."
/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
fg
