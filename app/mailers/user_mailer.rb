class UserMailer < ApplicationMailer
  default from: 'some@example.com'

  def miss_caught_last_seven_days_pokemon
    @user = params[:user_data]
    mail(to: @user.email, subject: 'You have not caught any pokemon')
  end
end
