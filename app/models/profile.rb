class Profile < ApplicationRecord
 	
 	has_many :profile_categories
 	has_many :categories, through: :profile_categories

	has_attached_file :photo_1,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	has_attached_file :photo_2,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	has_attached_file :photo_3,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	 has_attached_file :photo_4,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	 has_attached_file :photo_5,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	 has_attached_file :photo_6,
		:path => ":attachment/:id/:style.:extension",
		:storage => :s3,
		:styles => {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
	  }

	has_attached_file :video_1
	has_attached_file :video_2

	enum sex: {
      :male => 10,
      :female => 20,
  	}

  	enum representation: {
  		:yes => 10,
  		:no => 20,
  	}

	validates :first_name, :last_name, :mobile, :age, presence: false
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :age, numericality: { greater_than: 0 }
	validates_length_of :mobile, minimum: 10, maximum: 10
	validates_attachment_content_type :photo_1, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :photo_2, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :photo_3, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :photo_4, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :photo_5, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :photo_6, :content_type => /\Aimage\/.*\Z/

	validates_uniqueness_of :email, :mobile

	scope :sorted_by, lambda { |sort_option|
	
	  direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
	  case sort_option.to_s
	  when /^first_name/
	    order("LOWER(profiles.first_name) #{ direction }")
	  when /^email/
	    order("LOWER(profiles.email) #{ direction }")
	  else
	    raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
	  end
	}

	filterrific(
	   default_filter_params: { sorted_by: 'email' },
	   available_filters: [
	     :sorted_by,
	     :search_query,
	   ]
	)

# define ActiveRecord scopes for
# :search_query, :sorted_by, :with_country_id, and :with_created_at_gte

	def full_name
		first_name + " " + last_name
	end


end
