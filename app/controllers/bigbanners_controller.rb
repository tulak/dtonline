class BigbannersController < ApplicationController
  def index
    @bigbanners = Bigbanner.all
  end

  def new
    @bigbanner = Bigbanner.new
  end

  def create
    @bigbanner = Bigbanner.new(bigbanner_params)
    if @bigbanner.save
      redirect_to bigbanner_path(@bigbanner)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    find_post
    if @bigbanner.destroy
      redirect_to bigbanners_path
    else
    end
  end

private

def bigbanner_params
  params.require(:bigbanner).permit(:image)
end

def find_bigbanner
  @bigbanner = Bigbanner.find(params[:id])
end
end