class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    one_user = User.find(params[:id])
    render json: one_user, include: :items
  end
end
