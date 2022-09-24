# frozen_string_literal: true

class AddStatusToSubs < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :status, :integer
  end
end
