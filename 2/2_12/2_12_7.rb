# require

# Dateクラスは組み込みライブラリではなないので、そのままでは使用できない
# Date.today #=> NameError

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
Date.today #=> #<Date: 2019-02-05 ((2458520j,0s,0n),+0s,2299161j)>

# 自分で作成したライブラリを参照する
require './sample.rb'
# .rbは省略可能
require './sample'