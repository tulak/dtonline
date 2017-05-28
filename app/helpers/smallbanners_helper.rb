module SmallbannersHelper
  def small
    @smallbanner = Smallbanner.offset(rand(Smallbanner.count)).first
  end
end
