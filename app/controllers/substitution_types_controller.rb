class SubstitutionTypesController < ApplicationController
  before_action :set_substitution_type, only: [:show, :edit, :update, :destroy]

  # GET /substitution_types
  # GET /substitution_types.json
  def index
    @substitution_types = SubstitutionType.all
  end

  # GET /substitution_types/1
  # GET /substitution_types/1.json
  def show
  end

  # GET /substitution_types/new
  def new
    @substitution_type = SubstitutionType.new
  end

  # GET /substitution_types/1/edit
  def edit
  end

  # POST /substitution_types
  # POST /substitution_types.json
  def create
    @substitution_type = SubstitutionType.new(substitution_type_params)

    respond_to do |format|
      if @substitution_type.save
        format.html { redirect_to @substitution_type, notice: 'Substitution type was successfully created.' }
        format.json { render :show, status: :created, location: @substitution_type }
      else
        format.html { render :new }
        format.json { render json: @substitution_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /substitution_types/1
  # PATCH/PUT /substitution_types/1.json
  def update
    respond_to do |format|
      if @substitution_type.update(substitution_type_params)
        format.html { redirect_to @substitution_type, notice: 'Substitution type was successfully updated.' }
        format.json { render :show, status: :ok, location: @substitution_type }
      else
        format.html { render :edit }
        format.json { render json: @substitution_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substitution_types/1
  # DELETE /substitution_types/1.json
  def destroy
    @substitution_type.destroy
    respond_to do |format|
      format.html { redirect_to substitution_types_url, notice: 'Substitution type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substitution_type
      @substitution_type = SubstitutionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def substitution_type_params
      params.require(:substitution_type).permit(:name)
    end
end
