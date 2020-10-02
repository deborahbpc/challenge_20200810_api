class ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    def index
        @products = policy_scope(Product)
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
      @product.destroy
      redirect_to products_path
    end



    private

    def product_params
      params.require(:product).permit(:title, :type, :description, :price, :rating, :photo)
    end

    def set_product
      @product = Product.find(params[:id])
      if @product.nil?
        redirect_to root_path, notice: "Product not found"
      else
        authorize @product
      end
    end
end
