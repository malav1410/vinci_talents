class ProfilesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
  	@profile = Profile.new
  end

  def create
  	@profile = Profile.new(person_params)
    if @profile.save
      redirect_to profiles_thank_you_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def submit

  end

  def submitted
  	
  end

  private
    
    def person_params
      params.require(:profile).permit(:first_name, :last_name, :email, :mobile, :age, :photo_1, :photo_2, :photo_3, :photo_4, :photo_5, :photo_6, :video_1, :video_2)
    end
end
