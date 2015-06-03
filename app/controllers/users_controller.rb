class UsersController < ApplicationController
  def index
    @users = User.all
    user_data = @users.map do |result|
      "#{result.first_name}, #{result.last_name}, #{result.age}"
    end
    render text: user_data.join('</p><p>'), status: 200
  end

  def show
    if User.exists?(params[:id])
      result = User.find(params[:id])
      user_data = "#{result.first_name}, #{result.last_name}, #{result.age}"
      render text: user_data, status: 200
    else
      render text: "page not found :-/", status: 404
    end
  end

  # def search
  #   user.
    #pull out key
    #turn key into array
    #if array contains next element
    #puts those users that have that key, value



  # def search
  #   if User.exists?(params[:first_name])
  #     result = User.find(params[:id])
  #     user_data = "#{result.first_name}, #{result.last_name}, #{result.age}"
  #     render text: user_data, status: 200
  #   else
  #     render text: "No Results", status: 200
  # end
end
