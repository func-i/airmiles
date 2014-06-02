class WelcomeController < ApplicationController
  def add
    @answer = params[:left].to_i + params[:right].to_i
    render :index
  end
end
