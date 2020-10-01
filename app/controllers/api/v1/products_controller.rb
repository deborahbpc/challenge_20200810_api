class Api::V1::ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_product, only: [ :show, :update ]

  def index
    @products = policy_scope(Product)
  end

  def show
  end

  def update
    if @product.update(product_params)
      redirect_to :show
    else
      render json: { message: 'Houve um problema com a sua requisição' }
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
  
  def product_params
    params.require(:product).permit(:title, :type_of_product, :description, :price, :rating, :photo)
  end
end
