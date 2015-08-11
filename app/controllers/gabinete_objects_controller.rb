class GabineteObjectsController < ApplicationController
  before_action :set_gabinete_object, only: [:show, :edit, :update, :destroy]

  # GET /gabinete_objects
  # GET /gabinete_objects.json
  def index
    @gabinete_objects = GabineteObject.all
    @exh 
  end

  def acbeu
  
    render 'show_acbeu'
  end

  def creation
    @gabinete_objects = GabineteObject.all
  end

  # GET /gabinete_objects/1
  # GET /gabinete_objects/1.json
  def show
    @gabinete_objects = GabineteObject.all
    @expo = Exhibit.find_by(id: @gabinete_object.exhibit_id)
    set_actual_obj(@gabinete_objects, @expo)
    
    @fotos = @gabinete_object.photos.all
    @historia = @gabinete_object.histories.all
    @gabinete_object.photos.each do |ima|
      @imagem_portada = ima if ima.ocapa == true
    end
  end

  # GET /gabinete_objects/new
  def new
    @exhibit = Exhibit.find(params[:exhibit])
    @gabinete_object = @exhibit.gabinete_objects.build
#    no_actual_exhibit
#    @gabinete_object = GabineteObject.new
  end

  # GET /gabinete_objects/1/edit
  def edit
  end

  # POST /gabinete_objects
  # POST /gabinete_objects.json
  def create
    @exhibit = Exhibit.find(params[:gabinete_object][:exhibit_id])
    @gabinete_object =@exhibit.gabinete_objects.build(gabinete_object_params)

    respond_to do |format|
      if @gabinete_object.save
        format.html { redirect_to new_history_path(:gabinete_object => @gabinete_object), notice: 'Gabinete object was successfully created.' }
        format.json { render :show, status: :created, location: @gabinete_object }
      else
        format.html { render :new }
        format.json { render json: @gabinete_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gabinete_objects/1
  # PATCH/PUT /gabinete_objects/1.json
  def update
    respond_to do |format|
      if @gabinete_object.update(gabinete_object_params)
        format.html { redirect_to creation_gabinete_objects_path, notice: 'Gabinete object was successfully updated.' }
        format.json { render :show, status: :ok, location: @gabinete_object }
      else
        format.html { render :edit }
        format.json { render json: @gabinete_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gabinete_objects/1
  # DELETE /gabinete_objects/1.json
  def destroy
    @gabinete_object.destroy
    respond_to do |format|
      format.html { redirect_to creation_gabinete_objects_url, notice: 'Gabinete object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gabinete_object
      @gabinete_object = GabineteObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gabinete_object_params
      params.require(:gabinete_object).permit(:nome, :descripcao, :pessoa, :idade )
    end
end
