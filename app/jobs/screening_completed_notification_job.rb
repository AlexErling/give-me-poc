# frozen_string_literal: true

# Sends mail to notify about completed of screening
class ScreeningCompletedNotificationJob < ApplicationJob
  queue_as :default

  def perform(user)
    ScreeningCompletedMailer.screening_email(user).deliver_later
  end
end
