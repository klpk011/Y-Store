class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]
  before_action :authenticate_user!, only: [:upvote]

  def index
    @products = Product.rank(:row_order).all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将课程：#{@product.name} 加入购物车"
    else
      flash[:warning] = '你的购物车内已有此课程'
    end
    redirect_to :back
  end

  def search
    if @query_string.present?
      # 显示符合条件的课程
      search_result = Product.ransack(@search_criteria).result(distinct: true)
      @products = search_result.paginate(page: params[:page], per_page: 8)
    end
  end

  # 点赞 #
  def upvote
    @product = Product.find(params[:id])
  # if current_user && current_user.is_upvote_of?(@product)
       @product.upvote_by current_user
      flash[:notice] = "谢谢您对我们课程的认可！"
  #   else
  #  flash[:warning] = "您已经给该课程点过赞了！"
  # end
    redirect_to :back
  end

  protected

  def validate_search_key
    # 去除特殊字符
    #  @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @query_string = params[:keyword].gsub(/\\|\'|\/|\?/, '') if params[:keyword].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    # 选择多個栏位
    { name_or_description_cont: query_string }
  end
 end
