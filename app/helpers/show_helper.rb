module ShowHelper
  def first_five
    @show = Post.limit(5)
  end
end
