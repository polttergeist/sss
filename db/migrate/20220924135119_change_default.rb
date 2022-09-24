# frozen_string_literal: true

class ChangeDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :active, :integer, default: true
  end
end
