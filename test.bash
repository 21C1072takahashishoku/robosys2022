#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Shoku Takahashi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1 
	res=1
}

res=0

### I/O TEST ###
out=$(seq  7| ./plus_stdin)
[ "${out}" = "28 5040 4.0" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

### STRANGE INPUT ###
out=$(echo あ | ./plus_stdin)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus_stdin) #空文字
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
