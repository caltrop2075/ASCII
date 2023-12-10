#!/usr/bin/bash
#------------------------------------------------------------------------------#
#                            Programmed By Liz                                 #
#------------------------------------------------------------------------------#
# hex dump ascii table
#
# also
# hd/hexdump, od, awk
#
source ~/data/global.dat
o=$(printf "%d" "' '")              # offset

title-80.sh "Hex Dump ASCII Table"

for ((i=32;i<128;i++))
do
   h=$(printf "%x" "$i")            # i -> x
   printf "\x$h"                    # x -> a
done | xxd -u -g 1 -c 8 -o $o
echo $div_s
