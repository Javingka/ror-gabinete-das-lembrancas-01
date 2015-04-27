class ExhibitsController < ApplicationController
  before_action :set_exhibit, only: [:show, :edit, :update, :destroy, :index_edition]

  # GET /exhibits
  # GET /exhibits.json
  def index
    @exhibits = Exhibit.all
  end
  
  def creation
    @exhibits = Exhibit.all
  end

  # GET /exhibits/1
  # GET /exhibits/1.json
  def show
    @exhibits = Exhibit.all
    set_actual_exp @exhibit #para conhecer o atual exposição e mudar o menu
    @gabinete_objects = @exhibit.gabinete_objects.paginate(page: params[:page], :per_page => 4)
    @comentarios = @exhibit.comments.all

    @fotos_cidade = []
    @fotos_montagem = []
    @fotos_exposicao = []
    @fotos_natureza = []
    @fotos_coleta = []
    @exhibit.photos.each do |ima|
      @imagem_portada = ima if ima.ecapa == true
      @fotos_cidade << ima if ima.cidade == true
      @fotos_montagem << ima if ima.montagem == true
      @fotos_exposicao << ima if ima.expo == true
      @fotos_natureza << ima if ima.natureza == true
      @fotos_coleta << ima if ima.coleta == true
    end
    
  end

  # GET /exhibits/new
  def new
    @exhibit = Exhibit.new
  end

  # GET /exhibits/1/edit
  def edit
    @gabinete_object = @exhibit.gabinete_objects.build
  end

  # POST /exhibits
  # POST /exhibits.json
  def create
    @exhibit = Exhibit.new(exhibit_params)

    respond_to do |format|
      if @exhibit.save
        format.html { redirect_to creation_exhibits_path, notice: 'Exhibit was successfully created.' }
        format.json { render :show, status: :created, location: @exhibit }
      else
        format.html { render :new }
        format.json { render json: @exhibit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibits/1
  # PATCH/PUT /exhibits/1.json
  def update
    respond_to do |format|
      if @exhibit.update(exhibit_params)
        format.html { redirect_to @exhibit, notice: 'Exhibit was successfully updated.' }
        format.json { render :show, status: :ok, location: @exhibit }
      else
        format.html { render :edit }
        format.json { render json: @exhibit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibits/1
  # DELETE /exhibits/1.json
  def destroy
    @exhibit.destroy
    respond_to do |format|
      format.html { redirect_to creation_exhibits_url, notice: 'Exhibit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibit
      @exhibit = Exhibit.find(params[:id]) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibit_params
      params.require(:exhibit).permit(:cidade, :datainicio, :datafim, :local, :map, :descripcion)
    end
end
