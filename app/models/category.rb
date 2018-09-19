class Category < ApplicationRecord

	has_many :profile_categories
	has_many :profiles, through: :profile_categories

	validates :name, presence: true
	validates :name, uniqueness: true

end
