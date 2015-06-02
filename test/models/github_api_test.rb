require 'github_api'
require 'test_helper'


class GithubApi
  def get_data
    JSON.parse(File.open("test/models/git_hub.json").read)
  end
end


class GithubApiTest < ActiveSupport::TestCase

  def test_display_image
    image = GithubApi.new("powder-river")
    assert_equal "https://avatars.githubusercontent.com/u/11721927?v=3", image.get_image
  end






end
