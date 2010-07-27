class PiaOcotalsProyectosController < ApplicationController
  # GET /pia_ocotals_proyectos
  # GET /pia_ocotals_proyectos.xml
  def index
    @pia_ocotals_proyectos = PiaOcotalsProyecto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pia_ocotals_proyectos }
    end
  end

  # GET /pia_ocotals_proyectos/1
  # GET /pia_ocotals_proyectos/1.xml
  def show
    @pia_ocotals_proyecto = PiaOcotalsProyecto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pia_ocotals_proyecto }
    end
  end

  # GET /pia_ocotals_proyectos/new
  # GET /pia_ocotals_proyectos/new.xml
  def new
    @pia_ocotals_proyecto = PiaOcotalsProyecto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pia_ocotals_proyecto }
    end
  end

  # GET /pia_ocotals_proyectos/1/edit
  def edit
    @pia_ocotals_proyecto = PiaOcotalsProyecto.find(params[:id])
  end

  # POST /pia_ocotals_proyectos
  # POST /pia_ocotals_proyectos.xml
  def create
    @pia_ocotals_proyecto = PiaOcotalsProyecto.new(params[:pia_ocotals_proyecto])

    respond_to do |format|
      if @pia_ocotals_proyecto.save
        format.html { redirect_to(@pia_ocotals_proyecto, :notice => 'PiaOcotalsProyecto was successfully created.') }
        format.xml  { render :xml => @pia_ocotals_proyecto, :status => :created, :location => @pia_ocotals_proyecto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pia_ocotals_proyecto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pia_ocotals_proyectos/1
  # PUT /pia_ocotals_proyectos/1.xml
  def update
    @pia_ocotals_proyecto = PiaOcotalsProyecto.find(params[:id])

    respond_to do |format|
      if @pia_ocotals_proyecto.update_attributes(params[:pia_ocotals_proyecto])
        format.html { redirect_to(@pia_ocotals_proyecto, :notice => 'PiaOcotalsProyecto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pia_ocotals_proyecto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pia_ocotals_proyectos/1
  # DELETE /pia_ocotals_proyectos/1.xml
  def destroy
    @pia_ocotals_proyecto = PiaOcotalsProyecto.find(params[:id])
    @pia_ocotals_proyecto.destroy

    respond_to do |format|
      format.html { redirect_to(pia_ocotals_proyectos_url) }
      format.xml  { head :ok }
    end
  end
end
