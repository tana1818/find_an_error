class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups
  has_many :stocks
  has_many :likes
  has_many :issues

  #S3保存用に設定
  has_one_attached :image

  #サインアップ時の制限
  validates :name, presence: true
  validates :password, length:{maximum: 20}
end
