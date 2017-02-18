module BoxHelper
  def find_vsetko
    @result = Post.where(:category => @post.category).limit(8)
  end

  def find_side
    @side = Category.where(:side => true)
  end

end
