class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.bigint  :user_id
      t.bigint  :subscribable_id
      t.string  :subscribable_type
      t.integer :status
    end

    add_index :subscriptions, [:subscribable_type, :subscribable_id]
  end
end