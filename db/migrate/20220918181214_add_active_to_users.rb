class AddActiveToUsers < ActiveRecord::Migration[7.0]
  def change
  	add_column :users, :active, :integer, _default: true
  end
end
