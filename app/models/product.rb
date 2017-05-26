class Product < ApplicationRecord
 mount_uploader :image, ImageUploader
 has_many :reviews
 # 新增/修改栏位限制与提示 #
  validates :name, presence: { message: "请输入课程名称" }
  validates :price, presence: { message: "请输入课程价格" }
  validates :price, numericality: { greater_than: 0, message: "请输入课程价格，必須大于0" }
  validates :quantity, presence: { message: "請入课程席位数" }, numericality: { greater_than_or_equal: 0 }

#排序功能 #
   include RankedModel
   ranks :row_order
end
