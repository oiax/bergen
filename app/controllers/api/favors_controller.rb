class Api::FavorsController < ApplicationController
  def count
    render json: { message: "hello, from ajax!" }
  end
end
