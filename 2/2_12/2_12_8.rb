# load

# requireは1回しかライブラリやrbファイルを読み込まない

# 自分で書いたプログラムを読み込む
require './sample'

# 不具合があったのでsample.rbを修正する

# しかし、もう一度requireしてもすでに読み込み済みなので修正が反映されない
require './sample' #=> false

# 上記の場合はloadを使うと毎回無条件に指定したファイルを読み込む
load './sample.rb' # 拡張子の省略は不可

# loadを使うと無条件に再読み込みできる(ファイル不変更が反映される)
load './sample.rb' #=> true
