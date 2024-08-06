#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p /etc/iptables

# Add a rule to drop incoming TCP packets on port 12345
iptables -A INPUT -p tcp --dport 12345 -j DROP

# Add a rule to drop outgoing TCP packets on port 12345
iptables -A OUTPUT -p tcp --dport 12345 -j DROP

# Save the current iptables rules to /etc/iptables/rules.v4
iptables-save | tee /etc/iptables/rules.v4
