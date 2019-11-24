class HomeController < ApplicationController
  def home
  end
  def contact
  end
  def submitted
    name = params[:name]
    email = params[:email]
    message = params[:message]
    if (name.blank? || email.blank? || message.blank?)
      flash[:danger] = "Form not submitted, all fields need to be filled"
      redirect_to contact_path

    else
      flash[:success] = "Message has been sent"
      redirect_to root_path
    end



  end

end
