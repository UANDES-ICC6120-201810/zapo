class CreateAccessPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :access_points do |t|
      t.string :mac
      t.string :ip
      t.string :status
      t.string :token
      t.string :last_message

      t.timestamps
    end
  end
end
