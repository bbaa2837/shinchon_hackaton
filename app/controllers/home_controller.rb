class HomeController < ApplicationController
  def index
    @field=""
    
    @contests=Contest.all
    if params[:search]
      @contests = Contest.search(params[:search])
    else
      @contests = Contest.all
    end
    
  end
  
  def new
    @contest=Contest.find(params[:contest_id])
    
  end
  
  def create
      @post = Post.new
      @post.contest_id= params[:contest_id]
      @post.title = params[:input_title]
      @post.content =params[:input_content]
      @post.contact =params[:contact]
      @post.group_num=params[:quantity]
      @post.kakao=params[:kakao]
      @post.writer= current_user.id
      
      @post.save
      
      redirect_to "/home/list/#{@post.contest_id}"
      
  end
  
  def info_g
    @contest=Contest.find(params[:contest_id])
  end
  
  def info_t
    @post=Post.find(params[:post_id])
  end
  
  def list
    @contest=Contest.find(params[:contest_id])
    @posts = Post.all
  end
  
  def check
    
    @post=Post.find(params[:post_id])
    
    if @post.current_num<@post.group_num
      @post.current_num=@post.current_num+1
      @post.save
    end
    
  end
  
end
