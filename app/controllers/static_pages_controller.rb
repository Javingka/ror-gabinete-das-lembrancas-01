class StaticPagesController < ApplicationController

  def home
    @exhibits = Exhibit.all
    set_actual_exp nil
  end

  def monos
  end

  def acbeu
    @gabinete_objects = GabineteObject.all
    
    tempo = "01:00" # TODO pegar o tempo desde GabineteObj... 
    src = 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/111545654' # TODO pegar a scr desde GabineteObj...
    @src_audio = src+'#t='+tempo.to_s;  
  end

end
