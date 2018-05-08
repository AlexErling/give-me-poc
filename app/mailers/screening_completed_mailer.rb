# frozen_string_literal: true

# Sends mail to notify about completed of screening
class ScreeningCompletedMailer < ApplicationMailer
  default to: -> { User.with_role(:staff).pluck(:email) },
          from: 'givemepoc@gmail.com'

  def screening_completed_email(user)
    @user = user
    mail(subject: "#{t('bootcamp.screening.completed')}, #{user.name}")
  end
end
