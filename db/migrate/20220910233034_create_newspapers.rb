# frozen_string_literal: true

class CreateNewspapers < ActiveRecord::Migration[7.0]
  def change
    create_table :newspapers do |t|
      t.string :name
      t.string :typee
    end
  end
end
