class Api::V1::ProductsController < ApplicationController
  acts_as_token_authentication_handler_for User, except: [ :index ]
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_product, only: [ :show, :update, :destroy ]

  def index
    @products = policy_scope(Product)
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @product.update(product_params)
      redirect_to :show
    else
      render_error
    end
  end

  def destroy
    @product.destroy
    # head :no_content
    render json: { message: "Produto apagado com sucesso." }, status: :destroyed
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
  
  def product_params
    params.require(:product).permit(:title, :type_of_product, :description, :price, :rating, :photo)
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
      status: :unprocessable_entity
  end
end
