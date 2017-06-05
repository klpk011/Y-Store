class Category < ApplicationRecord
  validates :name, presence: { message: "请输入分类名称" }
  validates :category_group_id, presence: { message: "请选择分类类型" }

  # 分类的关联条件 #
  has_many :products
  belongs_to :category_group

  # 发布 / 隐藏分类 #
   def publish!
     self.is_hidden = false
     self.save
   end

   def hide!
     self.is_hidden = true
     self.save
   end

   # Scope #
    scope :published, -> { where(is_hidden: false) }
end
