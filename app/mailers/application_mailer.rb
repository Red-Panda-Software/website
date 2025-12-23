# frozen_string_literal: true

# The base class for all Mailers in our application.
# Shared logic and configuration should be defined here to ensure all Mailers
# follow the same patterns and behavior.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
