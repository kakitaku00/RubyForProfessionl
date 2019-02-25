# n以上m以下、n以上m未満の判定をする

# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end