class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to @story, notice: "Story was successfully created."
    else
      render "new"
    end
  end

  def update
    if @story.update(story_params)
      redirect_to @story, notice: "Story was successfully updated."
    else
      render "edit"
    end
  end

  def edit
  end

  def destroy
    @story.destroy
    redirect_to stories_url, notice: "Story was successfully deleted."
  end

  def show
  end

  def index
    @stories = Story.all
  end

  private
  ############################################################################

  def set_story
   @story = Story.find(params[:id])
 end

  def story_params
    params.require(:story).permit(:title, :description)
  end

end
