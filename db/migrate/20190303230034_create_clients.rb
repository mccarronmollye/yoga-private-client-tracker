class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :org_name
      t.string :point_of_contact
      t.string :email

      t.timestamps
    end
  end
end
