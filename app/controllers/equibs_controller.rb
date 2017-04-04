class EquibsController < ApplicationController
  # before_action :authenticate_user!, only: [:index]
  def show
  @equib = Equib.find(params[:id])
  @repairs = @equib.repairs

    @qr = RQRCode::QRCode.new(equib_url(@equib).to_s, :size => 5, :level => :h )
end

def index
  @equibs = Equib.order("id DESC")
  flash[:notice] = "测试版，所有权限暂时开放！"
end
end
