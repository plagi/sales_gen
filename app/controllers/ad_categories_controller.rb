class AdCategoriesController < ApplicationController
  before_action :set_ad_category, only: [:show, :edit, :update, :destroy]

  # GET /ad_categories
  # GET /ad_categories.json
  def index
    @ad_categories = AdCategory.all
  end

  # GET /ad_categories/1
  # GET /ad_categories/1.json
  def show
  end

  # GET /ad_categories/new
  def new
    @ad_category = AdCategory.new
  end

  # GET /ad_categories/1/edit
  def edit
  end

  # POST /ad_categories
  # POST /ad_categories.json
  def create
    @ad_category = AdCategory.new(ad_category_params)

    respond_to do |format|
      if @ad_category.save
        format.html { redirect_to @ad_category, notice: 'Ad category was successfully created.' }
        format.json { render :show, status: :created, location: @ad_category }
      else
        format.html { render :new }
        format.json { render json: @ad_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_categories/1
  # PATCH/PUT /ad_categories/1.json
  def update
    respond_to do |format|
      if @ad_category.update(ad_category_params)
        format.html { redirect_to @ad_category, notice: 'Ad category was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_category }
      else
        format.html { render :edit }
        format.json { render json: @ad_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_categories/1
  # DELETE /ad_categories/1.json
  def destroy
    @ad_category.destroy
    respond_to do |format|
      format.html { redirect_to ad_categories_url, notice: 'Ad category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_category
      @ad_category = AdCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_category_params
      params.require(:ad_category).permit(:name, :url, :title, :ad_texts, :fast_urls, :client_id, :deleted_at, :ad_text1, :ad_text2, :ad_text3, :ad_text4, :ad_text5, :fast_url1, :fast_url2, :fast_url3, :fast_url4, :fast_url_title1, :fast_url_title2, :fast_url_title3, :fast_url_title4)
    end
end
