class PagesController < ApplicationController
  def index
    @friends = Friend.where(user_id: current_user.id)
    # binding.pry
  end
end
