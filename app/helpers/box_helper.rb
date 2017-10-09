module BoxHelper

  def find_side
    @side = Category.where(:side => true)
  end

end
