class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]
  before_action :authenticate_admin!, except: [:index, :show]


  # Index na vygenerovanie vsetkych prispevkov
  def index

    if
        params[:category].blank?
        @posts = Post.all.limit(11)

else
          @category_id = Category.find_by(name: params[:category]).id
          @posts = Post.where(category_id: @category_id)
end
  end

  # new na vytvorenie noveho prispevku
  def new
    @post = Post.new
  end

  # create ulozi vytvoreny prispevok do databazy
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  # edit vyrenderuje stranku na upravu
  def edit
  end

  # Update updatuje prispevok s novymi udajmi
  def update
    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  # show ukaze zvoleny prispevok na zaklade id
  def show
  end

  # destroy vymaze prispevok z databazy
  def destroy
    find_post
    if @post.destroy
      redirect_to posts_path
    else
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :body,:perex,:desc,{category_ids: []},:keywords)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
