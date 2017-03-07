class WorksController < ApplicationController
  def index
    @works_item = Work.all
  end
end
