class HomeController < ApplicationController
  def index
    @result = FizzBuzz.instance.call(params[:iterations].to_i)
  end

  def about
  end
end
