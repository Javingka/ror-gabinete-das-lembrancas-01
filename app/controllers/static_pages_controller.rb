class StaticPagesController < ApplicationController

  def home
    @exhibits = Exhibit.all
    set_actual_exp nil
  end

  def monos
  end

  def acbeu
    @gabinete_objects = GabineteObject.all
    @gabinete_objects_chapada = Array.new

    @gabinete_objects.each do |o|
      expo = Exhibit.find_by(id: o.exhibit_id)
      if expo.cidade != "Rio de Contas" && !o.expo_ID.blank?
        if o.audio_link.blank?
          o.audio_link = "http://www.noiseaddicts.com/samples_1w72b820/4939.mp3" #Coloca o som de burro quando não tem som
        end
        @gabinete_objects_chapada << o
      end
    end
    @gabinete_objects_chapada = @gabinete_objects_chapada.sort_by { |hsh| hsh.expo_ID } #Objetos ordenados segundo expo
    puts @gabinete_objects_chapada.to_s

    tempo = "01:00" # TODO pegar o tempo desde GabineteObj...
    src = 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/111545654' # TODO pegar a scr desde GabineteObj...
    @src_audio = src+'#t='+tempo.to_s;
  end

end
