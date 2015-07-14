class PostsController < ApplicationController
  respond_to :json

  def index

    # Retrieve all Post data
    posts = Post.all

    # Respond to Requests with Post Data in JSON Format
    respond_with(posts) do |format|
      format.json { render :json => posts.as_json }
    end

  end

end
