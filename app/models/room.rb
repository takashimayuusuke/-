class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy


  # messageテーブルに対してのアソシエーション
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  # 空の状態で保存できなくする
  
end
