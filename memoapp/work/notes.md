# note

いちいちbranch切ってコード書く前に、planとかtodoに、すること書くかな。11-11

朝は、git branch git status git switch main から.11-12

todo.mdの末尾に今日の日付を挿入する朝スクリプトを書くくらいが今はちょうどいいかも。11-12

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

source なら、トップレベルでreturnが使える
## git

```
git diff
git diff --cached
git diff HEAD
```

```
git checkout main          # main に切り替え
git diff other-branch      # 他のブランチとの差分を表示

```

### branch

```
git switch main
git pull origin main
```


## plan

yen_insert のコマンドライン引数の数を変数に入れる。各引数も変数に入れる。

planは他に移したかも

## memo

```
awk '
# 各行に対して実行されるアクション
{
    # 行全体を配列 lines に格納（キーは行番号 NR）
    lines[NR] = $0
}

# 日付にマッチする行番号を記録
/[0-9]{4}-[0-9]{2}-[0-9]{2}/ {
    last_date = NR
}

# ファイル全行処理後に実行される END ブロック
END {
    # 最終日付行以降を順に出力
    for (i = last_date; i <= NR; i++)
        print lines[i]
}
' file.md
```

```
#!/bin/bash

file="file.md"
found=0

# 今日から遡る日数
for i in {0..2}; do
    # 日付フォーマット YYYY-MM-DD
    check_date=$(date -d "-$i day" +%Y-%m-%d)

    # その日付がファイルにあるか確認
    line_num=$(grep -n "$check_date" "$file" | tail -n1 | cut -d: -f1)
    if [ -n "$line_num" ]; then
        # 見つかったら行番号以降を出力
        sed -n "${line_num},\$p" "$file"
        found=1
        break
    fi
done

if [ $found -eq 0 ]; then
    echo "直近3日以内に書き込みはありません"
fi

```
