# coding: utf-8
class Cpanel::SectionsController< Cpanel::ApplicationController
  before_action :set_cpanel_section, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/sections
  # GET /cpanel/sections.json
  def index
    @cpanel_sections = Cpanel::Section.all
  end

  # GET /cpanel/sections/1
  # GET /cpanel/sections/1.json
  def show
  end

  # GET /cpanel/sections/new
  def new
    @cpanel_section = Cpanel::Section.new
  end

  # GET /cpanel/sections/1/edit
  def edit
  end

  # POST /cpanel/sections
  # POST /cpanel/sections.json
  def create
    @cpanel_section = Cpanel::Section.new(cpanel_section_params)

    respond_to do |format|
      if @cpanel_section.save
        format.html { redirect_to @cpanel_section, notice: 'Section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_section }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/sections/1
  # PATCH/PUT /cpanel/sections/1.json
  def update
    respond_to do |format|
      if @cpanel_section.update(cpanel_section_params)
        format.html { redirect_to @cpanel_section, notice: 'Section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/sections/1
  # DELETE /cpanel/sections/1.json
  def destroy
    @cpanel_section.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_section
      @cpanel_section = Cpanel::Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_section_params
      params.require(:cpanel_section).permit(:name, :sort)
    end
end
