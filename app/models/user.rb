# frozen_string_literal: true

# The User
#
# Represents a user on the website and represents them as a reference object through the entire
# code base. Users require manual activation when they sign up by providing a valid email where
# a link will be sent once registration is completed.
class User < ApplicationRecord
  # We rely on Rails' has_secure_password to automatically create the password fields
  # and perform validations for us when dealing with the user's account.
  # We will allow recovery tokens with a 15 minute validity period when creating/recovering accounts.
  has_secure_password reset_token: { expires_in: 15.minutes }

  # Validations
  validates :email, uniqueness: true, presence: true
  validates :activated, inclusion: { in: [true, false] }
end
