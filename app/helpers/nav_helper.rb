module NavHelper
  def category_all
    @categories = Category.all.order(position: :asc)
  end
end
