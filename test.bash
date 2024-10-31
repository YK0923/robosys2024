#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Yamamoto Kurumi mail<s23c1144fj@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ	#$1はngの一番の引数
	res=1	#追加
}

res=0
### NOMAL INPUT ###
out=$(seq 5 |./PLUS)
[ "${out}" = 15 ] || ng "$LINENO"

### STRANGE INPUT ##
out=$(echo あ |./PLUS)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./PLUS)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK 
exit $res
