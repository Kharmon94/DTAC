class AddColumnsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :city, :string
    add_column :contacts, :zip, :string
    add_column :contacts, :bed, :integer
    add_column :contacts, :bath, :integer
    add_column :contacts, :square_feet, :integer
    add_column :contacts, :special_services, :string
    add_column :contacts, :service_type, :string
  end
end
