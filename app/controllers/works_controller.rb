class WorksController < ApplicationController
  #before_action: Work.find(params[:id]), only: update, create

  def index
    @works_item = Work.all
  end

  def new
    @works_item = Work.new
  end

  def update
  end

  def create
    @works_item = Work.new(work_params)
    respond_to do |format|
      if @works_item.save
        format.html { redirect_to @work_item, notice: "Your portfolio item is created"}
      else
        format.html {render :new}
      end
    end
  end

  def show
    @works_item = Work.find(params[:id])
  end

private

def work_params
  self.params.require(:work).permit(:title, :subtitle, :body)
end

end
