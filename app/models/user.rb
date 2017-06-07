class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def admin?
    is_admin
  end

  #订单
  has_many :orders

  #评论#
  has_many :reviews

  #收藏#
  has_many :favorites
  has_many :favorite_products, through: :favorites, source: :product

  # 将该课程加入收藏清单
  def add_to_favorites!(product)
    favorite_products << product
  end

  # 从收藏清单上刪除该课程
  def quit_to_favorite!(product)
    favorite_products.delete(product)
  end

  # 课程是否在使用者的收藏清单中
  def has_favorites?(product)
    favorite_products.include?(product)
  end
end
