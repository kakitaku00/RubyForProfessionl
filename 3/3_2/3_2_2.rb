# Minitest用の検証メソッド

# aがbと等しければパスする
assert_equal b, a

# aが真であればパスする
assert a

# aが偽であればパスする
refute a


# この他にも
# 週力内容を検証する
assert_output

# 例外が発生した時にテストをパスさせる
assert_raises