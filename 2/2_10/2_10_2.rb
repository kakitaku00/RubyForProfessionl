# 優先順位が低いand, or, not
t1 = true
f1 = false
t1 and f1 #=> false
t1 or f1 #=> true
not t1 #=> false

# ただしこれらは優先順位が低い

!f1 || t1 #=> true
not f1 || t1 #=> false
# 上記と同様のコードに変換
# !は||よりも優先順位が高い
!(f1) || t1
# notは||よりも優先順位が低い
not(f1 || t1)

# andとorには優先順位に違いがない為左から右に真偽値が評価されてしまう
t1 = true
t2 = true
f1 = false

t1 || t2 && f1 #=> true
t1 or t2 and f1 #=> false
# 上記と同様のコードに変換
t1 || (t2 && f1)
(t1 or t2) and f1

# このような違いがある為、andやorを&&や||の代わりに使用すると思いがけない不具合が発生する

# andやorは条件分岐ではなく、制御フローを扱うのに向いている
user.valid? && send_mail_to user
# 上記のコードはこのように解釈される為エラーとなる
(user.valid? && send_mail_to) user

# しかし、andを使うとエラーとならない
user.valid? and send_mail_to user
# 上記のコードはこのように解釈される
(user.valid?) and (send_mail_to user)

# ただし&&でもsenc_mail_to(user)と記述すればエラーとならない
user.valid? && send_mail_to(user)

# orも「Aが真か？真でなければBせよ」という制御フローを実装する際に便利
def greeting(country)
  # countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting(nil) #=> 'countryを入力してください'
greeting('japan') #=> 'こんにちは'