class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    if Story.where(email: create_params[:email]).any?
      redirect_to recover_story_path(email: create_params[:email])
    else
      @story = Story.create!(create_params)
      @story.set_token!
      session[:story_token] = @story.token
      redirect_to set_username_path(token: @story.token)
    end
  end

  def recover
    @email = params[:email]
  end

  private

  def create_params
    params.require(:story).permit(:email)
  end
end
