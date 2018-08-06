class BlogsController < ApplicationController
  layout 'blog'
  before_action :find_specific, except: :index

  def index
    @blogs = Blog.order('created_at DESC')
  end

  def show
  end

  def new
    @blog = Blog.new()
  end

  def create
    @blog = Blog.new(blog_params)
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
  end

  private
    
    def blog_params
      params.require(:blog).permit(:body, :title, :topic_id)
    end

    def find_specific
      @blog = Blog.find(params[:id])
    end
end
