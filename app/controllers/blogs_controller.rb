class BlogsController < ApplicationController
  
  layout 'blog'
  before_action :find_specific, except: [:index, :new, :create]
  # after_action :head_title, except: [:destroy]
  access all: [:index,:show], reader: [:index, :show], admin: :all

  def index
    @blogs = Blog.order('created_at DESC')
    @head_title = "Prlina's Blog"
    @head_subtitle = "Petar's very own personal blog!"
  end

  def show
    @head_title = @blog.title
    if @blog.user
      @head_subtitle = "Written by " + @blog.user.first_name + " " + @blog.user.last_name + "<p>Name</p>#{.html_safe}" + @blog.topic.title 
    end
  end

  def new
    @blog = Blog.new
    @head_title = "New post? Fantastic!"
    @head_subtitle = "Feel free to write anything you can imagine"
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render 'new'
    end
  end

  def edit
    @head_title = @blog.title
    @head_subtitle = "Written by " + @blog.user.first_name + " " + @blog.user.last_name
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

    # def head_title
    #   if @blogs
    #     @title = "Prlina's Blog"
    #   elsif @blog
    #     @title = @blog.title || "New post? Fantastic!"
    # end

end
