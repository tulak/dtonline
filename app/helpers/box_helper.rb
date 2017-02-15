module BoxHelper
  def find_rozhovor
    @rozhovor = Post.joins(:category).merge(Category.where(:name => "Rozhovor").limit(3))
  end

  def find_region
    @region = Post.joins(:category).merge(Category.where(:name => "Región").limit(3))
  end

  def find_sport
    @sport = Post.joins(:category).merge(Category.where(:name => "Šport").limit(3))
  end

  def find_vsetko
    @result = Post.where(:category => @post.category).limit(8)
  end


end
