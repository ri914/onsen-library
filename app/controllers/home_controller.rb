class HomeController < ApplicationController
  def top
  end

  def index
    #@onsen_data = Onsen.all.limit(3) # おすすめ温泉地
    #@tourist_spots = TouristSpot.all.limit(3) # 人気観光スポット
    #@latest_reviews = Review.order(created_at: :desc).limit(5) # 新着レビュー
  end
end
