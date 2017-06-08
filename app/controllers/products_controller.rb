class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]
  before_action :authenticate_user!, only: [:upvote, :favorite]

  def index
    @products = case params[:order]
                when 'by_product_price'
                  Product.order('price DESC').paginate(page: params[:page], per_page: 12)
                when 'by_product_quantity'
                  Product.order('quantity DESC').paginate(page: params[:page], per_page: 12)
                when 'by_product_vodate'
                  Product.order('created_at DESC').paginate(page: params[:page], per_page: 12)
                else
                  Product.rank(:row_order).paginate(page: params[:page], per_page: 12) # 根据后台课程排序
          end
end

  def show
    @product = Product.find(params[:id])
  end

  # def add_to_cart
  #   @product = Product.find(params[:id])
  #   if !current_cart.products.include?(@product)
  #     current_cart.add_product_to_cart(@product)
  #     flash[:notice] = "你已成功将课程：#{@product.name} 加入购物车"
  #   else
  #     flash[:warning] = '你的购物车内已有此课程'
  #   end
  #   redirect_to :back
  # end

  # 让 PRODUCTS_CONTROLLER 接收 QUANTITY 参数 #
  def add_to_cart
    @product = Product.find(params[:id])
    @quantity = params[:quantity].to_i

    if @quantity > @product.quantity
      @quantity = @product.quantity
      flash[:warning] = "您选择的课程数量超过库存，实际加入购物车的课程为#{@quantity}件。"
    else
      if !current_cart.products.include?(@product)
        current_cart.add(@product, @quantity)
        flash[:notice] = "你已成功将课程：#{@product.name} 加入购物车"
      else
        flash[:warning] = '你的购物车内已有此课程'
      end
    end
    redirect_to product_path(@product)
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
    @product.upvote_by current_user
    flash[:notice] = '谢谢您对我们课程的认可！'
    redirect_to :back
  end

  # 添加收藏 #
  def add_to_favorite
    @product = Product.find(params[:id])
    if !current_user.has_favorites?(@product)
      current_user.add_to_favorites!(@product)
      flash[:notice] = '收藏本课程成功！'
    else
      flash[:warning] = '已收藏本课程'
   end
    redirect_to product_path(@product)
  end

  # 取消收藏 #
  def quit_to_favorite
    @product = Product.find(params[:id])
    if current_user.has_favorites?(@product)
      current_user.quit_to_favorite!(@product)
      flash[:alert] = '取消收藏本课程'
    end
    redirect_to product_path(@product)
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
