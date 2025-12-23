# frozen_string_literal: true

# User Migration File
#
# Creates the users table in the database and adds the required fields based on the initial implementation.
# Users consist of just their email, password, name and a nickname.
# For security purposes, we track when an account is activated, which requires a valid email since we will send
# out a validation email once the account has been created.
class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :email, null: false
      t.string :password_digest

      # Account activation tracking
      t.boolean :activated, null: false, default: false
      t.datetime :activated_at, null: true, default: nil

      t.timestamps
    end
  end
end
