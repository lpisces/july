# coding: utf-8
class Cpanel::NodesController < Cpanel::ApplicationController
  before_action :set_cpanel_node, only: [:show, :edit, :update, :destroy]

  # GET /cpanel/nodes
  # GET /cpanel/nodes.json
  def index
    @cpanel_nodes = Cpanel::Node.all
  end

  # GET /cpanel/nodes/1
  # GET /cpanel/nodes/1.json
  def show
  end

  # GET /cpanel/nodes/new
  def new
    @cpanel_node = Cpanel::Node.new
  end

  # GET /cpanel/nodes/1/edit
  def edit
  end

  # POST /cpanel/nodes
  # POST /cpanel/nodes.json
  def create
    @cpanel_node = Cpanel::Node.new(cpanel_node_params)

    respond_to do |format|
      if @cpanel_node.save
        format.html { redirect_to @cpanel_node, notice: 'Node was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cpanel_node }
      else
        format.html { render action: 'new' }
        format.json { render json: @cpanel_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpanel/nodes/1
  # PATCH/PUT /cpanel/nodes/1.json
  def update
    respond_to do |format|
      if @cpanel_node.update(cpanel_node_params)
        format.html { redirect_to @cpanel_node, notice: 'Node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cpanel_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/nodes/1
  # DELETE /cpanel/nodes/1.json
  def destroy
    @cpanel_node.destroy
    respond_to do |format|
      format.html { redirect_to cpanel_nodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpanel_node
      @cpanel_node = Cpanel::Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpanel_node_params
      params.require(:cpanel_node).permit(:name, :sort, :description, :section_id, :cnt)
    end
end
