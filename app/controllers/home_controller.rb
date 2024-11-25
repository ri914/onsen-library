class HomeController < ApplicationController
  def top
  end

  def index
    @onsens = Onsen.all.order(created_at: :desc)
  end
end
