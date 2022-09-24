# frozen_string_literal: true

class CreateUserIdIndexOnSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_index :subscriptions, :user_id
  end
end
