class GitVersion::VersionsController < ApplicationController
  def show
    render :text => "#{commit_version}"
  end

  private

  def commit_version
    begin
      IO.readlines(".git/logs/HEAD")[-1].split(' ')[1]
    rescue
      "NO_GIT_FILE"
    end
  end

end
