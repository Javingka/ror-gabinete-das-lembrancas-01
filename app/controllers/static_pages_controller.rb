class StaticPagesController < ApplicationController

  def home
    @exhibits = Exhibit.all
    set_actual_exp nil
  end

  def monos
  end
end
