class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end


  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    find_category
    @posts = @category.posts.paginate(page:params[:page], per_page: 10)
  end

  def destroy
    find_category
    if   @category.destroy
      redirect_to categories_path
    else
    end
  end
 private
  def category_params
    params.require(:category).permit(:name)
  end

  def find_category
      @category = Category.find(params[:id])
  end

end
