class GithubApi

  def initialize(name)
    @name = name
    @git_info = get_profile_data
    @repo_info = get_repo_data
  end


  def get_image
    @git_info["avatar_url"]
  end


  def get_name
    @git_info["name"]
  end


  def get_login
    @git_info["login"]
  end


  def get_email
    @git_info["email"]
  end


  def get_join_date
    @git_info["created_at"]
  end


  def get_repository
    repository = @repo_info.map do|r|
      r["name"]
    end
  end


  def last_update
    repo_u = @repo_info.map do |r|
      r["updated_at"]
    end
  end



  def get_profile_data
    HTTParty.get("https://api.github.com/users/#{@name}?access_token=#{ENV["GITHUB_KEY"]}")
  end

  def get_repo_data
    HTTParty.get("https://api.github.com/users/#{@name}/repos?access_token=#{ENV["GITHUB_KEY"]}")
  end


end

#github key?
#1126bbee1c19fbe8d036951b7511ab019ae577a0

#HTTParty.get("https://api.github.com/users/#{@name}/repos?access_token=1126bbee1c19fbe8d036951b7511ab019ae577a0")
