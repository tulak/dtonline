module ShowHelper
  def first_five
    @show = Post.search(params[:search]).limit(5)
  end
end
