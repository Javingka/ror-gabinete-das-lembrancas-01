class StaticPagesController < ApplicationController
  def home
    @exhibits = Exhibit.all
  end

  def monos
  end
end
