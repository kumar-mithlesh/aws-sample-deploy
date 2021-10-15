class AddAddressToHomes < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :address, :string
  end
end
