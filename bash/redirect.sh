#!/bin/bash
#@(#) ILLUSTRATION: redirect output of multiple commands (and their stderr) to a file
#
# instead of redirecting the output of each command as in
#     echo 'start file' >output.log
#     date >> output.log
#     uname >> output.log
# just use parenthesis and then redirect 
#     ( echo 'start file';date;uname) >output.log
#
(
exec 2>&1 # combine stdout and stderr
echo Combine Output of Multiple commands
date
uname a
) | cat -n  # number lines to show all output is combined
#  would normally redirect
# ) >/tmp/$(basename $0).log
# or redirect to a file and still write to stdout
# ) |tee -a/tmp/$(basename $0).log
