# inject/reduce
# injectメソッドはたたみ込み演算を行うメソッド

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
sum #=> 10
# 上記のコードをinjectメソッドで書く
sum = numbers.inject(0) { |result, n| result + n}
sum #=> 10
# ブロックの第一引数には初回のみinjectメソッドの引数が入る

# 文字列に対しinjectメソッドを適用させる
["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"].inject("Sun") { |result, s| result + s} #=> SunMonTueWedThuFriSat
