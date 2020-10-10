Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:3001', '127.0.0.1:3001', 'https://challenge-20200810-front.herokuapp.com/'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
    end
  end