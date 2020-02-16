#!/bin/bash
find ~/.ssh/*/id_rsa | while read SSH_KEY; do chmod 600 $SSH_KEY && ssh-add $SSH_KEY 2>&-; done
