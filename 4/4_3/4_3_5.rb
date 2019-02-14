# do...endと{}

numbers = [1, 2, 3, 4]
sum = 0
# ブロックをあえて改行せずに書く
numbers.each do |n| sum += n end
sum #=> 10

# do...endの代わりに{}を使う
numbers.each{ |n| sum+=n }
sum #=> 10

# 改行も可能
numbers.eadh { |n|
  sum += n
}
sum #=> 10