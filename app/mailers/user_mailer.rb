class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def create_business(user)
    @user = user
    
    mail(to: @user.email, subject: 'Your Offer is Online')
  end
end
