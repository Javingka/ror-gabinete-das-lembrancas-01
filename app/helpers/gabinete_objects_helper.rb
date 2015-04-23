module GabineteObjectsHelper
  
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
