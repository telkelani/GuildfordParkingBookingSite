class HomeController < ApplicationController
  def home
  end
  def contact
  end
  def submitted
    name = params[:name]
    email = params[:email]
    message = params[:message]
    flash[:success] = "Message has been sent"
    redirect_to root_path
  end

end
