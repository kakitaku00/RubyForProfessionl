# 文字列の比較
# 文字列が同じかどうか調べる場合は==を、異なる場合は!=を使用
'ruby' == 'ruby' #=> true
'ruby' == 'Ruby' #=> false
'ruby' != 'peal' #=> true
'ruby' != 'ruby' #=> false

# <, <=, >, >=を使って大小を比較することも可能(文字コードが比較対象)
'a' < 'b' #=> true
'a' < 'A' #=> false
'a' > 'A' #=> true
'abc' < 'def' #=> true
'abc' < 'ab' #=> false
'abc' < 'abcd' #=> true
'あいうえお' < 'かきくけこ' #=> true