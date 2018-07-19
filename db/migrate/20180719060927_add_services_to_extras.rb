class AddServicesToExtras < ActiveRecord::Migration[5.1]
  def change
    add_column :extras, :services, :text
  end
end
