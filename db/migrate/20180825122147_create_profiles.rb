class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :number, :limit => 8
      t.boolean :status

      t.timestamps
    end
  end
end
