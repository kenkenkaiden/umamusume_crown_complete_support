class UmamusumesController < ApplicationController
  def index
    @umamusumes = Umamusume.all
  end

  def new
    @umamusume = Umamusume.new
  end
end
