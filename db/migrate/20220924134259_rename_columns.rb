# frozen_string_literal: true

class RenameColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :podcasts, :typee, :kind
    rename_column :newspapers, :typee, :kind
  end
end
