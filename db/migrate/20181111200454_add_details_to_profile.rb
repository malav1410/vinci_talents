class AddDetailsToProfile < ActiveRecord::Migration[5.0]
  def change
  	add_column :profiles, :instagram_url, :string
  	add_column :profiles, :city, :string
  	add_column :profiles, :country, :string
  	add_column :profiles, :state, :string
  	add_column :profiles, :sex, :integer

  	add_column :profiles, :height, :decimal
  	add_column :profiles, :weight, :decimal
  	add_column :profiles, :bust, :decimal
  	add_column :profiles, :waist, :decimal
  	add_column :profiles, :hips, :decimal
  	add_column :profiles, :eye_color, :string
  	add_column :profiles, :shoe_size, :decimal
  	add_column :profiles, :hair, :string

  	add_column :profiles, :about, :text
  	add_column :profiles, :empowers, :text
  	add_column :profiles, :representation, :integer
  end
end
