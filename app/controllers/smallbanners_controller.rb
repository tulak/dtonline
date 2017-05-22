class SmallbannersController < ApplicationController
  def index
    @smallbanners = Smallbanner.all
  end

  def new
    @smallbanner = Smallbanner.new
  end

  def create
    @smallbanner = Smallbanner.new(smallbanner_params)
    if @smallbanner.save
      redirect_to smallbanner_path(@smallbanner)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    find_smallbanner
    if @smallbanner.destroy
      redirect_to smallbanners_path
    else
    end
  end

private

def smallbanner_params
  params.require(:smallbanner).permit(:image)
end

def find_smallbanner
  @smallbanner = Smallbanner.find(params[:id])
end
end
