#!/bin/bash

echo "virtual-mailboxes \"recent\" \"notmuch://\$HOME/Maildir?query=$(date +%s -d yesterday)..$(date +%s)\""

for i in $(python -c 'import notmuch; print notmuch.Database().get_all_tags();'); do
    echo "virtual-mailboxes \"> $i\" \"notmuch://\$HOME/Maildir?limit=200&query=tag:$i\""
done
