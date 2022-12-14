#!/bin/bash -xv 
#PDX-FileCopyrightText: 2022 Shoku Takahashi
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

###1/0 test ###
out=$(seq 7 | ./plus)
[ "${out}" = 28 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

###strange input ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]        || ng ${LINENO}
[ "${out}" = "" ]   || ng ${LINENO}

out=$(echo | ./plus) ###空文字
[ "$?" = 1 ]        || ng ${LINENO}
[ "${out}" = "" ]   || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res 
