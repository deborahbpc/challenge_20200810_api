class Api::V1::ProductsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :challenge ]
  before_action :set_product, only: [ :show, :update, :destroy ]
  # after_action :auth_origin, except: [:challenge]

  def challenge
    skip_authorization
    render(json: { message: "Ruby on Rails Challenge 20200810" }, status: 200)
  end

  def index
    @products = policy_scope(Product)
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    photo = File.open(Rails.root.join("app", "assets", "images", "#{@product.filename}"))
    @product.photo.attach(io: photo, filename: @product.filename, content_type: ['image/jpg', 'image/png'] )
    authorize @product
    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @product.update(product_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    if @product.destroy
      head :no_content
    else
      render_error
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
  
  def product_params
    params.require(:product).permit(:title, :type, :description, :price, :rating, :filename, :width, :height)
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
      status: :unprocessable_entity
  end

  def auth_origin
    # response.set_header('Access-Control-Allow-Origin', 'https://challenge-20200810-front.herokuapp.com/')
    response.set_header('Access-Control-Allow-Origin', '*')
    response.set_header('X-Permitted-Cross-Domain-Policies', 'all')
  end
end
