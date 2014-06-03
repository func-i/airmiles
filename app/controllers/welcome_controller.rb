class WelcomeController < ApplicationController
  def add
    @answer = params[:left] + params[:right]
    render :index
  end
end
