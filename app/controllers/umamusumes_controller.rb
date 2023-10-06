class UmamusumesController < ApplicationController
  def index
    @umamusumes = current_user.umamusumes
  end

  def new
    @umamusume = Umamusume.new
  end

  def create
    @umamusume = Umamusume.new(umamusume_params)
    if @umamusume.valid?
      @umamusume.save
      render :new
    else
      render :new
    end
  end

  def destroy
    @umamusume = Umamusume.find(params[:id])
    if @umamusume.destroy
      @umamusumes = current_user.umamusumes
      render :index
    end
  end

  private

  def umamusume_params
    params.require(:umamusume).permit(:name, :turf, :dirt, :sprint, :mile, :intermediate, :long).merge(user_id: current_user.id)
  end
end
