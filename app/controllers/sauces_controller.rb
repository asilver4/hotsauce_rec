class SaucesController < ApplicationController
  before_action :set_sauce, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  # GET /sauces
  # GET /sauces.json
  def index
      @sauces = Sauce.all
 end

  # GET /sauces/1
  # GET /sauces/1.json
  def show

  end

  # GET /sauces/new
  def new
    @sauce = Sauce.new
    Descriptor.all.each do |descriptor|
      property = Property.create descriptor:descriptor 
      @sauce.properties << property
    end
  end

  # GET /sauces/1/edit
  def edit
  end

  # POST /sauces
  # POST /sauces.json
  def create
    @sauce = current_user.sauces.build(sauce_params)

    respond_to do |format|
      if @sauce.save
        format.html { redirect_to @sauce, notice: 'Sauce was successfully created.' }
        format.json { render :show, status: :created, location: @sauce }
      else
        format.html { render :new }
        format.json { render json: @sauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sauces/1
  # PATCH/PUT /sauces/1.json
  def update
    respond_to do |format|
      if @sauce.update(sauce_params)
        format.html { redirect_to @sauce, notice: 'Sauce was successfully updated.' }
        format.json { render :show, status: :ok, location: @sauce }
      else
        format.html { render :edit }
        format.json { render json: @sauce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sauces/1
  # DELETE /sauces/1.json
  def destroy
    @sauce.destroy
    respond_to do |format|
      format.html { redirect_to sauces_url, notice: 'Sauce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sauce
      @sauce = Sauce.find(params[:id])
    end

    def correct_user
      @sauce = current_user.sauces.find_by(id: params[:id])
      redirect_to sauces_path, notice: "Not authorized to edit this sauce" if @sauce.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sauce_params
      params.require(:sauce).permit(:image, :description,:mild, :medium, :hot, :hotter, :hottest, :superhot, :sweet, :smoke, :fruit, :vinegar, :garlic, :salt, :vegan, :no_gluten, :no_alcohol)
    end
end
