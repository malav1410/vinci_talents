class CreateProfileCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_categories do |t|
    	t.references :profile, index: true
    	t.references :category, index: true

      t.timestamps
    end
  end
end
