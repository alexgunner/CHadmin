class CreateUserAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :user_type
      t.string :password

      t.timestamps
    end
  end
end
