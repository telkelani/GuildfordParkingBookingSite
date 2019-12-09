class ApplicationMailer < ActionMailer::Base
  default from: 'source@gparking.com', to: 'destination@gparking.com'
  layout "mailer"

end
