#!/bin/sh

if [ ! -d locale ];then
    mkdir locale
fi

for i in `ls po | grep po$`;do
    if [ ! -d locale/${i%%.po}/LC_MESSAGES ];then
        mkdir -p locale/${i%%.po}/LC_MESSAGES
    fi
    msgfmt -o locale/${i%%.po}/LC_MESSAGES/tzdata.mo po/${i}
done
