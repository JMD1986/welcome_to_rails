class User < ActiveRecord::Base
  def show
    @users = User.all
      @users.map do |result|
        return "#{result.first_name}, #{result.last_name}, #{result.age}"
      end
  end
end
