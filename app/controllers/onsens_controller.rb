class OnsensController < ApplicationController
  before_action :authenticate_user!

  def new
    @onsen = Onsen.new
  end

  def create
    @onsen = current_user.onsens.build(onsen_params)
    if @onsen.save
      redirect_to @onsen, notice: '温泉が投稿されました。'
    else
      render :new
    end
  end

  def save
    @onsen = Onsen.find(params[:id])
    @onsen.saved_by_user_id = current_user.id
    if @onsen.save
      redirect_to @onsen, notice: '温泉を保存しました。'
    else
      redirect_to @onsen, alert: '温泉の保存に失敗しました。'
    end
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :description)
  end
end
