#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$DIR"

echo $1 > input_parameters.txt
echo $2 >> input_parameters.txt
echo $3 >> input_parameters.txt

time NatronRenderer white_cool_subtitle.ntp

