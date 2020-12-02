class Message < ApplicationRecord
  # userテーブルに対してのアソシエーション
  belongs_to :user
  # roomテーブルに対してのアソシエーション
  belongs_to :room

  validates :content, presence: true
    # 空の状態で保存できなくする
# この原因は、バリデーションエラー発生時、問題のあったinput要素を囲うように、エラーメッセージ表示用のdiv要素がRailsによって生成され、CSSの指定に齟齬が発生するため。このdiv要素は、class属性にfield_with_errorsという値を持っている。
end
