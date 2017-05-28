module BigbannersHelper
  def all_small
    @smallbanners = Smallbanner.all
  end

  def big
    @bigbanner = Bigbanner.offset(rand(Bigbanner.count)).first
  end
end
