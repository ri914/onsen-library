class HomeController < ApplicationController
  def top
  end

  def index
    @onsens = Onsen.all.order(created_at: :desc) # 温泉地の情報を取得
  end
end
