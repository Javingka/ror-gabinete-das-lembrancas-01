module GabineteObjectsHelper
    
  def set_actual_obj(obj, expo)
    @obj = obj
    @exp_obj = expo
    next_o = false 
    @obj_n = nil 
    @exp_obj.gabinete_objects.each_with_index do |o,i| 
      puts 'prints:  '+@gabinete_object.id.to_s+' obj o: '+o.id.to_s
      if next_o 
        @obj_n = o 
        break 
      end 
      if o.id == @gabinete_object.id 
        next_o = true 
        @obj_n = @exp_obj.gabinete_objects.first if i == @exp_obj.gabinete_objects.size-1
      end 
    end
  end
  
  def get_actual_obj
    @obj
  end

  def get_objects
    GabineteObject.all
  end

  def def_actual_object (obj)
    session[:obj_id] = obj.id
#    @actO = GabineteObject.find_by(id: obj.id)
  end

  def get_actual_object
    @obj_id = session[:obj_id]
    @actO = GabineteObject.find_by(@obj_id)
  end


  def no_actual_object
    session.delete(:obj_id)
  end

end
