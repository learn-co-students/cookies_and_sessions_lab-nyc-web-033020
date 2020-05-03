class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
    @cart = cart
  end

  def create
    if product = Product.find_or_create_by(product_params)
      cart << product.id
    else
      product = Product.new(product_params)
      if product.save
        cart << product.id
      else
        flash[:err] = product.errors.full_messages
      end
    end
    redirect_to products_path
  end
  def add
    @product = Product.find(params[:id])
    cart << @product.id
    redirect_to products_path
  end
  def reset
    reset_cart
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end
end
