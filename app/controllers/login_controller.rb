class LoginController < ApplicationController
  def index
  	@users = User.all
  end

  def show

  end

  def new
  end

  def create
  	user = User.find_by(username: params[:username].downcase)
  	if user
  		if user.password == params[:password] && user.username == params[:username]
  			flash[:success] = 'You are logged in.'
  			render "index"
  		else
  			invalid_login
  		end
  	else
  		invalid_login
  	end

  end

  private 
  	def invalid_login
  		flash[:danger] = 'Invald login details'
  		render "new"
  	end
end
