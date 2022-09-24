# frozen_string_literal: true

class BanNil < ActiveRecord::Migration[7.0]
  def change
    change_column :podcasts, :name, :string, null: false
    change_column :podcasts, :typee, :integer, null: false
    change_column :newspapers, :name, :string, null: false
    change_column :newspapers, :typee, :integer, null: false
  end
end
