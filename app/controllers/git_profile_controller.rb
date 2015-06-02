class GitProfileController < ApplicationController
  def index

  end

  def profile_page
    @image_url = GithubApi.new(params[:name]).get_image
  end
end
