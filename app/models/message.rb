class Message < ApplicationRecord
  # userテーブルに対してのアソシエーション
  belongs_to :user
  # roomテーブルに対してのアソシエーション
  belongs_to :room
end
