#!/bin/sh
ant clean test
exit_status=$?

if [ $exit_status -ne 0 ]; then # failed
    exit 1  # return 0 for git bisect bad
else
    exit 0  # return 1 for git bisect good
fi