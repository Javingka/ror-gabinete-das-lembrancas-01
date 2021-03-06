class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  def creation
    @photos = Photo.paginate(page: params[:page], :per_page => 30)
  #  @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    if !params[:exhibit].nil?
      @exhibit = Exhibit.find(params[:exhibit])
      @photo = @exhibit.photos.build
    end
    if !params[:gabinete_object].nil?
      @objeto = GabineteObject.friendly.find(params[:gabinete_object])
      @photo = @objeto.photos.build
    end
  end

  # GET /photos/1/edit
  def edit
    @exhibit = Exhibit.find_by(id: @photo.exhibit_id)
    @objeto = GabineteObject.friendly.find_by(id: @photo.gabinete_object_id)
  end

  # POST /photos
  # POST /photos.json
  def create
    if !params[:photo][:gabinete_object_id].nil?
      @objeto = GabineteObject.friendly.find(params[:photo][:gabinete_object_id])
      @photo = @objeto.photos.build(photo_params)
    end
    if !params[:photo][:exhibit_id].nil?
      @exhibit = Exhibit.find(params[:photo][:exhibit_id])
      @photo = @exhibit.photos.build(photo_params)
    end

    respond_to do |format|
       if @photo.save
         format.html { redirect_to creation_photos_path, notice: 'A imagem foi criada corretamente.' }
         format.json { render :show, status: :created, location: @photo }
       else
         format.html { render :new }
         format.json { render json: @photo.errors, status: :unprocessable_entity }
       end
    end

  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to creation_photos_url, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:picture, :exhibit_id, :gabinete_object_id, :ecapa, :ocapa, :montagem, :expo, :cidade, :natureza, :coleta, :cara)
    end

end

