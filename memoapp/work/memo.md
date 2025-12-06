# memo

todo.mdの末尾に今日の日付を挿入する朝スクリプトを書くくらいが今はちょうどいいかも。

11-21

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
`ls -d */`

```
#!/bin/bash

s=3
m=4

echo $(( s + m))
```
