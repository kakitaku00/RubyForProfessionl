# 多重代入で残りの全要素を配列として受け取る

# 多重代入では左辺の変数よりも右辺の個数が多い場合ははみ出した値が切り捨てられる
e,f = 100, 200, 300
e #=> 100
f #=> 200

# しかし、左辺の変数に*をつけると残りの全要素を配列として受け取ることが出来る
e,*f = 100, 200, 300
e #=> 100
f #=> [200, 300]