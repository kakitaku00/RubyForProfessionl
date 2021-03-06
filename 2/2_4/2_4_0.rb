# 数値

# 数値には_を含めることができるので、大きな数字の区切り文字として使うと便利
p 1_000_000_000 #=> 1000000000

# 変数の手前に-をつけると、数値の正と負を逆転できる
n = 1
p -n #=> -1

# 整数同士の割り算は整数になる
p 1 / 2 #=> 0

# 小数点以下が必要な場合はどちらかに小数点をつける
p 1.0 / 2 #=> 0.5

# 変数に整数が入っている場合は、to_fメソッドで少数に変更できる
n = 1
p n.to_f #=> 1.0
n.to_f / 2 #=> 0.5
