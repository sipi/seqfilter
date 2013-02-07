#!/bin/bash
#######################################################################
#
#  Sequence Filter
#  
#
#  Copyright © 2012 Sipieter Clément <csipieter@gmail.com>
#
#  This file is part of seqfilter.
#
#  seqfilter is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  seqfilter is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with seqfilter.  If not, see <http://www.gnu.org/licenses/>.
#


for val in $(seq $*)
do 
    if [[ -z $pattern ]]
    then
        pattern="(^|[^0-9])("
    else
        pattern=$pattern"|"
    fi
    pattern=$pattern$val
done
pattern=$pattern")($|[^0-9])"

sed 's/\([^\]\)\ /\1\n/g' <&0 | sed -nr '/'$pattern'/p' |  tr '\n' ' '
