class GitProfileController < ApplicationController
  def index

  end

  def profile_page
    @profile = GithubApi.new(params[:name])
  end
end
