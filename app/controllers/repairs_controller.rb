class RepairsController < ApplicationController

  def new
    @equib = Equib.find(params[:equib_id])
    @repair = Repair.new
  end

  def create
    @equib = Equib.find(params[:equib_id])
    @repair = Repair.new(repair_params)
    @repair.equib = @equib
    if @repair.save
      redirect_to equib_path(@equib), notice: "已添加！"
    else
      render :new,notice: "失败！"
    end
  end
  def edit
    @repair = Repair.find(params[:id])
  end

  def update
    @repair = Repair.find(params[:id])
    if @repair.update(repair_params)
      redirect_to admin_equib_path(@repair.equib),notice: "已修改！"
    else
      render :edit
    end
  end

  private

  def repair_params
    params.require(:repair).permit(:cause, :fees, :is_wireman, :method)
  end
end
