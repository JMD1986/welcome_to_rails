class UsersController < ApplicationController
  def index
    @users = User.all
    user_data = @users.map do |result|
      "#{result.first_name}, #{result.last_name}, #{result.age}"
    end
    render text: user_data.join('</p><p>')
  end

  def show
    @users = User.find?(PARAMS[:id])
    user_data = @users.map do |result|
      "#{result.first_name}, #{result.last_name}, #{result.age}"
    end
    render text: user_data.join('</p><p>')
   end
 end
