class StoryCreationController < ApplicationController
  before_action :set_story_or_404

  def update
    if @story.update!(update_params)
      redirect_to next_step
    else
      render current_step
    end
  end

  def recover
    @email = params[:email]
  end

  def set_username
  end

  def political_views

  end

  def next_step
    case current_step
    when :set_username
      political_views_path(token: story_token)
    end
  end

  def current_step
    params[:step].to_sym
  end

  private

  def set_story_or_404
    @story = Story.where(token: story_token).first
    if @story.nil?
      redirect_to '/'
    end
  end

  def story_token
    params[:token]
  end

  def update_params
    params.require(:story).permit(:username)
  end
end
