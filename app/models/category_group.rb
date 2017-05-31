class CategoryGroup < ApplicationRecord
  has_many :categories
  validates :name, presence: true
  # 类型图片上传 #
  mount_uploader :image, GroupUploader

  # 发布 / 隐藏类型 #
   def publish!
     self.is_hidden = false
     self.save
   end

   def hide!
     self.is_hidden = true
     self.save
   end
end
