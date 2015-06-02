class GithubApi
  def initialize(name)
    @name = name
    @git_info = get_data
  end

  def get_image
    @git_info[0]["owner"]["avatar_url"]
  end


  def get_data
    HTTParty.get("https://api.github.com/users/#{@name}/repos?access_token=#{ENV["GITHUB_KEY"]}")
  end


end

#github key?
#1126bbee1c19fbe8d036951b7511ab019ae577a0

#HTTParty.get("https://api.github.com/users/#{@name}/repos?access_token=1126bbee1c19fbe8d036951b7511ab019ae577a0")
