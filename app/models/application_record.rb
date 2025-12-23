# frozen_string_literal: true

# The base class for all ActiveRecord models in our application.
# Shared configuration and global settings should be defined on this model to ensure that
# all our models have the same behavior.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
