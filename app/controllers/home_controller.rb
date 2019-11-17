class HomeController < ApplicationController
  def home
  end
  def contact
  end
  def successmessage
  end
  def submitted
    name = params[:name]
    email = params[:email]
    message = params[:message]
    flash[:notice]=I18n.t('home.contact.submitted')
    redirect_to root_path
  end

end
