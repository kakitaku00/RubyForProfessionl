# to_hexメソッドを作成する

def to_hex(r, g, b)
  '#' +
    r.to_s(16).rjust(2, '0') +
    r.to_s(16).rjust(2, '0') +
    r.to_s(16).rjust(2, '0')
end