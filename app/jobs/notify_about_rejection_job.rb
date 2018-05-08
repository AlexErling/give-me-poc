# frozen_string_literal: true

# Sends mail to notify about rejection
class NotifyAboutRejectionJob < ApplicationJob
  queue_as :default

  def perform(user, feedback)
    NotifyAboutRejectionMailer.notify(user, feedback).deliver_later
  end
end
