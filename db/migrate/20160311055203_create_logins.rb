class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :admin
      t.string :password
      t.timestamps null: false
    end
    
  end
end
