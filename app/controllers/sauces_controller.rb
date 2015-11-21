class SaucesController < ApplicationController
  before_action :set_sauce, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  # GET /sauces
  # GET /sauces.json
  def index
     if current_user.nil?
      @sauces = Sauce.all
     else 
      @sauces = Sauce.all.joins(:user)
      .vegan_user(current_user)
      .gluten_user(current_user)
      .alcohol_user(current_user)
      .order("((users.sweet - sauces.sweet)*(users.sweet - sauces.sweet))+((users.smoke - sauces.smoke)*(users.smoke - sauces.smoke))+((users.fruit - sauces.fruit)*(users.fruit - sauces.fruit))+((users.garlic - sauces.garlic)*(users.garlic - sauces.garlic))+((users.vinegar - sauces.vinegar)*(users.vinegar - sauces.vinegar))+((users.salt - sauces.salt)*(users.salt - sauces.salt))")
      #.where("(users.vegan = sauces.vegan) and (users.no_alcohol = sauces.no_alcohol) and (users.no_gluten = sauces.no_gluten) and( (users.mild = sauces.mild) or (users.medium = sauces.medium) or (users.hot = sauces.hot) or (users.hotter = sauces.hotter) or (users.hottest = sauces.hottest) or (users.superhot = sauces.superhot) )")
    end
  end

  # GET /sauces/1
  # GET /sauces/1.json
  def show

  end

  # GET /sauces/new
  def new
    @sauce = current_user.sauces.build
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
