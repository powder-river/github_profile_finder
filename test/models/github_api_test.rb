require 'github_api'
require 'test_helper'


class GithubApi
  def get_profile_data
    JSON.parse(File.open("test/models/git_hub.json").read)
  end

  def get_repo_data
    JSON.parse(File.open("test/models/repos.json").read)
  end
end


class GithubApiTest < ActiveSupport::TestCase

  def test_display_image
    image = GithubApi.new("powder-river")
    assert_equal "https://avatars.githubusercontent.com/u/11721927?v=3", image.get_image
  end


  def test_display_name
    real_name = GithubApi.new("powder-river")
    assert_equal "Danai Adkisson", real_name.get_name
  end


  def test_display_login
    login = GithubApi.new("powder-river")
    assert_equal "powder-river", login.get_login
  end


  def test_disply_email
    email = GithubApi.new("powder-river")
    assert_equal "dadkisso@live.com", email.get_email
  end


  def test_display_join_date
    join = GithubApi.new("powder-river")
    assert_equal "2015-03-30T15:00:23Z", join.get_join_date
  end


  def test_display_repository_name
    #is this cheating???? or still a good test
    repo = GithubApi.new("powder-river")
    assert_equal "battleship", repo.get_repository[0]
  end


  def test_desplay_repo_last_update
    #is this cheating???? or still a good test
    update = GithubApi.new("powder-river")
    assert_equal "2015-05-11T16:10:43Z", update.last_update[0]
  end






end
