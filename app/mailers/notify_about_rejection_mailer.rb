# frozen_string_literal: true

# Sends mail to notify about rejection
class NotifyAboutRejectionMailer < ApplicationMailer
  default from: 'givemepoc@gmail.com'

  def notify(user, feedback)
    @user = user
    @feedback = feedback
    mail(to: @user.email, subject: "#{t('bootcamp.screening.rejection')}, #{user.name}")
  end
end
