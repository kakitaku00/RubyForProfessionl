# to_hexメソッドを作成する

# def to_hex(r, g, b)
#   '#' +
#     r.to_s(16).rjust(2, '0') +
#     r.to_s(16).rjust(2, '0') +
#     r.to_s(16).rjust(2, '0')
# end

# コードをリファクタリングする
def to_hex(r, g, b)
  hex = '#'
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  hex
end

# injectメソッドを使ってもっと短く書く
def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end