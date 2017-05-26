class Admin::ProductsController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!
  before_action :admin_required
  def index
    @products = Product.rank(:row_order).all
  end

  def new
    @product = Product.new
    end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = 'Product Deleted'
    redirect_to admin_products_path
   end

  def reorder
    @product = Product.find(params[:id])
    @product.row_order_position = params[:position]
    @product.save!

    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :quantity, :price, :image, :Applicants, :teaching_objectives, :Course_Contents, :course_features, :curriculum, :Teacher_introduction, :class_schedule, :class_location, :service)
  end
end
