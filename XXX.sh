#!/bin/bash
sed -ri ':1
         s/(^|[^-0-9])[0-9]{3}-[0-9]{2}-[0-9]{4}([^-0-9]|$)/\1XXX-XX-XXXX\2/g
         s/(^|[^-0-9])[0-9]{9}([^-0-9]|$)/\1XXXXXXXXX\2/g
         t1' testfile
