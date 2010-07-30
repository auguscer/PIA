class TipoFuentesController < ApplicationController
  # GET /tipo_fuentes
  # GET /tipo_fuentes.xml
  def index
    @tipo_fuentes = TipoFuente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_fuentes }
    end
  end

  # GET /tipo_fuentes/1
  # GET /tipo_fuentes/1.xml
  def show
    @tipo_fuente = TipoFuente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_fuente }
    end
  end

  # GET /tipo_fuentes/new
  # GET /tipo_fuentes/new.xml
  def new
    @tipo_fuente = TipoFuente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_fuente }
    end
  end

  # GET /tipo_fuentes/1/edit
  def edit
    @tipo_fuente = TipoFuente.find(params[:id])
  end

  # POST /tipo_fuentes
  # POST /tipo_fuentes.xml
  def create
    @tipo_fuente = TipoFuente.new(params[:tipo_fuente])

    respond_to do |format|
      if @tipo_fuente.save
        format.html { redirect_to(@tipo_fuente, :notice => 'TipoFuente was successfully created.') }
        format.xml  { render :xml => @tipo_fuente, :status => :created, :location => @tipo_fuente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_fuente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_fuentes/1
  # PUT /tipo_fuentes/1.xml
  def update
    @tipo_fuente = TipoFuente.find(params[:id])

    respond_to do |format|
      if @tipo_fuente.update_attributes(params[:tipo_fuente])
        format.html { redirect_to(@tipo_fuente, :notice => 'TipoFuente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_fuente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_fuentes/1
  # DELETE /tipo_fuentes/1.xml
  def destroy
    @tipo_fuente = TipoFuente.find(params[:id])
    @tipo_fuente.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_fuentes_url) }
      format.xml  { head :ok }
    end
  end
end
