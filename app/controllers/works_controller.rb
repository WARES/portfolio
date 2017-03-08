class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @works_item = Work.all # create a scope ->ruby_on_rails_work_items  #where(subtitle: "Angular JS")
  end

  def angular
    @angular_portfolio_items = Work.angular
  end

  def new
    @works_item = Work.new
  end


  def destroy
    @works_item.destroy
    respond_to do |format|
      format.html{ redirect_to works_url, notice: "Post was removed."}
      format.json{ head :no_content}
    end
  end

  def create
    @works_item = Work.new(work_params)
    respond_to do |format|
      if @works_item.save
        format.html { redirect_to portfolio_show_path(@works_item.id), notice: "Your portfolio item is created"}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      if @works_item.update(work_params)
        format.html { redirect_to @works_item, notice: 'Work Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @works_item}
      else
        format.html { render :edit }
        format.json { render json: @works_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

private

def work_params
  self.params.require(:work).permit(:title, :subtitle, :body)
end

  # Use callbacks to share common setup or constraints between actions.
  def set_work
    @works_item = Work.find(params[:id])
  end

end
