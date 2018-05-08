# frozen_string_literal: true

# Sends mail to notify about start of onboarding
class NotifyCandidateMailer < ApplicationMailer
  default from: 'givemepoc@gmail.com'

  def notify(user)
    @user = user
    mail(to: @user.email, subject: "#{t('bootcamp.onboarding.started')}, #{user.name}")
  end
end
