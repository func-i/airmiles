class WelcomeController < ApplicationController
  before_action :load_people

  def add
    @answer = params[:left] + params[:right]
    render :index
  end

  protected

  def load_people
    @people = [
      OpenStruct.new({name: "Jon", weight: 160, height: 69}),
      OpenStruct.new({name: "Josh", weight: 180, height: 71})
    ]
  end
end
