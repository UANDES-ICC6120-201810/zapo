class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
      t.string :Name
      t.string :Description

      t.timestamps
    end
  end
end
