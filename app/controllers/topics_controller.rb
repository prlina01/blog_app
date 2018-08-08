class TopicsController < ApplicationController
  layout 'blog'

  def index
    @topics = Topic.all
    @head_title = "Topics"
    @head_subtitle = "Hundreds of 'em to choose from!"
  end

  def show
    @topic = Topic.find(params[:id])
    @head_title = @topic.title
    @head_subtitle = "List of all Blog posts that are in #{@head_title} topic"
  end
end
