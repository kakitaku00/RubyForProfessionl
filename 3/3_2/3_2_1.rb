# テストコードのひな形

# Minitestを使ったテストコードの基本形は次のようになる。
require 'minitest/autorun' # ライブラリを読み込む

class SampleTest < Minitest::Test # テストコードの本体。慣習的になまえはTestとつける
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end

# assert_equalメソッドは以下の用に使う(引数の順番に注意)
# assert_equal 期待する結果, テスト対象となる値や式