# frozen_string_literal: true

class ChangeSubscriptions < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :subscribable_type, :subscribable_kind
    remove_column :subscriptions, :user_id
    remove_column :subscriptions, :subscribable_id
    add_reference :subscriptions, :user, index: false
    add_reference :subscriptions, :subscribable, index: false
  end
end
