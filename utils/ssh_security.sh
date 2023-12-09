#!/bin/bash

# Disable password authentication in SSH configuration
# Comment out (or replace) the content of the '#PasswordAuthentication' option with 'PasswordAuthentication no'
sudo sed -i "s/^#PasswordAuthentication.*/PasswordAuthentication no/g" \
        /etc/ssh/sshd_config

# Ensure password authentication is disabled in SSH configuration
# Replace the content of the 'PasswordAuthentication' option with 'PasswordAuthentication no'
sudo sed -i "s/^PasswordAuthentication.*/PasswordAuthentication no/g" \
        /etc/ssh/sshd_config

# Disable root user's password login in SSH configuration
# Comment out (or replace) the content of the '#PermitRootLogin' option with 'PermitRootLogin without-password'
sudo sed -i "s/^#PermitRootLogin.*/PermitRootLogin without-password/g" \
        /etc/ssh/sshd_config

# Ensure root user's password login is disabled in SSH configuration
# Replace the content of the 'PermitRootLogin' option with 'PermitRootLogin without-password'
sudo sed -i "s/^PermitRootLogin.*/PermitRootLogin without-password/g" \
        /etc/ssh/sshd_config
