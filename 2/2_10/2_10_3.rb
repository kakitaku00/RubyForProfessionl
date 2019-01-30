# unless文
# if文の反対 = 条件が真の時だけ処理を実行する
status = 'error'
if status != 'ok'
  '何か異常があります'
end
#=> '何か異常があります'

status = 'error'
unless statsu == 'ok'
  '何か異常があります'
end
#=> '何か異常があります'

# elseを使って偽でなかった場合の処理を書くこともできる
status = 'ok'
unless status == 'ok'
  '何か異常があります'
else
  '正常です'
end
#=> "正常です"

# ただしelsifに相当するものは存在しない

# unlessも結果を変数に代入できる
message =
  unless status == 'ok'
    '何か異常があります'
  else
    '正常です'
  end

message #=> '何か異常があります'

# unlessを修飾子としてつかう
'何か異常があります' unless status == 'ok'
#=> "何か異常があります"