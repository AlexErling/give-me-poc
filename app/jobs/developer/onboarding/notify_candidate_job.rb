# frozen_string_literal: true

module Developer
  class Onboarding
    # Sends mail to notify about start of onboarding
    class NotifyCandidateJob < ApplicationJob
      queue_as :default

      def perform(user)
        NotifyCandidateMailer.notify(user).deliver_later
      end
    end
  end
end
