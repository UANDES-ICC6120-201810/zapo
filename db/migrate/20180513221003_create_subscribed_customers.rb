class CreateSubscribedCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribed_customers do |t|
      t.references :accessGroup, foreign_key: true
      t.string :Name

      t.timestamps
    end
  end
end
