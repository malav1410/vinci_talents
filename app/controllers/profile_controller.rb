class ProfileController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
  end

  def submitted
  	Profile.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], number: params[:number])
  end
end
