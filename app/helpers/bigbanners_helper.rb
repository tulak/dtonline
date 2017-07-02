module BigbannersHelper

  def big
    @bigbanner = Bigbanner.offset(rand(Bigbanner.count)).first
  end
end
