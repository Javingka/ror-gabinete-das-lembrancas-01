module ExhibitsHelper
  
  def def_actual_exhibit (exh)
    session[:exh_id] = exh.id
#    @actO = GabineteObject.find_by(id: obj.id)
  end

  def get_actual_exhibit
    exh_id = session[:exh_id]
    @actE = Exhibit.find_by(id: exh_id)
  end


  def no_actual_exhibit
    session.delete(:exh_id)
  end

end
