class Client::ProductsController < ApplicationController
  def index
    response = HTTP.get("http://localhost:3000/api/products")
    @product = response.parse
    render 'index.html.erb'
  end
end
