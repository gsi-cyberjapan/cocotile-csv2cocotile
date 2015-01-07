cocotile-csv2cocotile
=====================

ココタイルデータ作成用CSVファイルを使ってココタイルデータを展開する

実行方法
========
ココタイル作成用CSVファイル（ gsi-cyberjapan/cocotile-mokuroku2csv 参照）
を標準入力とし、本プロジェクトにある cocotile.rb を実行することにより、
/var/www/htdocs/xyz/cocotile_new にココタイルデータが展開される。

```sh
gzcat part-00000.gz | ruby cocotile.rb
```

なお、抽出率10%の割合で、ココタイルデータに対応するタイルデータが
/var/www/htdocs/xyz/ 以下に存在するか確認し、標準出力に
o 又は x で表示するようにしている。

※平成２７年１月６日に使用したものを共有しています。
