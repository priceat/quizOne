class ProfilesController < ApplicationController
  
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
    redirect_to root_path
  end

  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :description)
  end

end
