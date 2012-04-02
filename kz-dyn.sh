#!/bin/zsh

for i in $(python -c 'import notmuch; print notmuch.Database().get_all_tags();'); do
    echo "virtual-mailboxes \"> $i\" \"notmuch://\$HOME/Maildir?query=tag:$i\""
done
