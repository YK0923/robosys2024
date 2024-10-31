#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yamamoto Kurumi mail<s23c1144fj@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ	#$1はngの一番の引数
	res=1	#追加
}

res=0

out=$(seq 5 | ./PULS)
[ "${out}" = 15 ] || ng "LINENO"

[ "${res}" = 0 ] && echo OK 
exit $res
