class GitVersion::VersionsController < ApplicationController
  def show
    render :text => "#{IO.readlines(".git/logs/HEAD")[-1]}"
  end
end
