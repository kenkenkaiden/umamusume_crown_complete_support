class UmamusumesController < ApplicationController
  def index
    @umamusumes = Umamusume.all
  end
end
