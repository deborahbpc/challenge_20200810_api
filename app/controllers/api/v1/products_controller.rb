class Api::V1::ProductsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index
        @products = product_scope(Restaurant)
    end
end
