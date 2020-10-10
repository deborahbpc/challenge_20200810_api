Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins ['localhost:3001', '127.0.0.1:3001', 'https://challenge-20200810-front.herokuapp.com/']

    resource '*',
    :headers => :any,
    :methods => [:get, :post, :delete, :put, :patch],
    :max_age => 600
  end
end