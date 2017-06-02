class Order < ApplicationRecord
  belongs_to :user

  # 新增/修改栏位限制与提示 #
  validates :billing_name, presence: true
  validates :billing_address, presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true
  has_many :product_lists

  # 生成乱序号码 #
  before_create :generate_token

  def generate_token
    self.token = SecureRandom.uuid # Ruby 內建乱序生成器
  end

  # 更新付款方式栏位
  def set_payment_with!(method)
    update_columns(payment_method: method)
  end

  # 更新付款状态栏位：已付款
  def pay!
    update_columns(is_paid: true)
  end

  # AASM 订单状态 #
  include AASM

  # 定义状态
  aasm do
    state :order_placed, initial: true #已下订
    state :paid #已付款
    state :shipping #出货中
    state :shipped #到货
    state :order_cancelled #取消订单
    state :good_returned #退货

    # 付款
    event :make_payment, after_commit: :pay! do
      # 状态更改为已付款
      transitions from: :order_placed, to: :paid
    end

    # 出货
    event :ship do
      # 状态更改为出货中
      transitions from: :paid,         to: :shipping
    end

    # 到货
    event :deliver do
      # 状态更改为已到货
      transitions from: :shipping,     to: :shipped
    end

    # 退货
    event :return_good do
      # 状态更改为已退货
      transitions from: :shipped,      to: :good_returned
    end

    # 取消订单
    event :cancel_order do
      # 状态更改为订单已取消
      transitions from: [:order_placed, :paid], to: :order_cancelled
    end
  end
end
