# note

## 関数化 or 機能の分割

## 足したいこと

2025-11-8
ミス率の計算。入力時に入力データと共に表示する。
引数がない場合は直近数行のデータを表示する。

## yen_insert

2025-11-9
mainファイルとして扱う。中の処理を別ファイルに移す。関連する機能をまとめるディレクトリで管理する。

## memo


`tail -n 1 <file> | ./read_pipe.sh `

`done < <\(tail -n 3 "$file"\)`

## git

```
git diff
git diff --cached
git diff HEAD
```

### branch

```
git switch main
git pull origin main
```


## plan

yen_insert のコマンドライン引数の数を変数に入れる。各引数も変数に入れる。