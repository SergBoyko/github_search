class GitSearchController < ApplicationController
  include GitSearchHelper
  def index
  end

  def  result
    if params[:result]['search'].empty?
      @notice = 'Search cant be blank'
      render :index
    else
      @git_response = search_request(params[:result]['search'])
    end
  end

end
