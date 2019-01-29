# &&や||の戻り値と評価を終了するタイミング

# &&や||を使った場合戻り値が必ずtrue/falseになるとは限らない
1 && 2 && 3 #=> 3
1 && nil && 3 #=> nil
1 && false && 3 #=> false

nil || false #=> false
false || nil #=> nil
nil || false || 2 || 3 #=> 2
# 式全体の真または偽が確定すると式の評価を終了し、最後に評価した値を返す

# 以下は||を使った式の戻り値や、真偽値が確定した時点で評価が終了されることを活用した架空のコード例
# Alice, Bob, Carolと順に検索し、最初に見つかったユーザ(nilまたはfalse以外の値)を変数に格納する
user = find_user('Alice') || find_user('Bob') || find_user('Carol')
# 正常なユーザーであればメールを送信する(左辺が偽であればメール送信は実行されない)
user.vaild? && send_email_to(user)