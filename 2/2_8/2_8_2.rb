# %記法で文字列を作る

# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!

# %Q! !はダブルクオートで囲んだことと同じになる
something = "Hello"
puts %Q!He said "#{something}"!

# %! !もダブルクオートで囲んだことと同じになる
something = "Bye"
puts %!He said, #{something}!

# ?を区切り文字として使う
puts %q?He said, "Dont' speak."?

# {}を区切り文字として使う
puts %q{He said, "Don't speak."}