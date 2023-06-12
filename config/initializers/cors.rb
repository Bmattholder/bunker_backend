Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000'

    resources = ['/scorecards', '/players', '/courses', '/holes', '/tees']

    resources.each do |resource|
      resource resource,
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
				expose: ['Access-Control-Allow-Origin']
    end
  end
end
