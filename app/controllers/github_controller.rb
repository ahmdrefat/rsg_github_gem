class GithubController < ApplicationController
  before_action :authenticate_user!

  def index
    client = Octokit::Client.new(:access_token => current_user.github_profile.access_token)
    @repositories = client.repos
  end
end
