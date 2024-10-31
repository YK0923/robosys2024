#!/bin/bash

ng () {
	echo ${1}行目が違うよ	#$1はngの一番の引数
	res=1	#追加
}

res=0
a=山田
[ "$a" = 上田 ] || ng "$LINENO"	#LINENOとは行番号
[ "$a" = 山田 ] || ng "$LINENO"	#ngに第一引数として$LINENOを付与

exit "$res" #このシェルスクリプトの終了ステータスを返して終了

