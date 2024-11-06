class OnsensController < ApplicationController
  def new
    @onsen = Onsen.new # 新しい温泉地のインスタンスを作成
  end

  def create
    @onsen = Onsen.new(onsen_params)
    if @onsen.save
      redirect_to @onsen, notice: '温泉地が正常に投稿されました。'
    else
      render :new
    end
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :location, :description, :image) # 必要なパラメータを指定
  end
end
