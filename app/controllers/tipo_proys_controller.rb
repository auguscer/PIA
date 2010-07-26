class TipoProysController < ApplicationController
  # GET /tipo_proys
  # GET /tipo_proys.xml
  def index
    @tipo_proys = TipoProy.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_proys }
    end
  end

  # GET /tipo_proys/1
  # GET /tipo_proys/1.xml
  def show
    @tipo_proy = TipoProy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_proy }
    end
  end

  # GET /tipo_proys/new
  # GET /tipo_proys/new.xml
  def new
    @tipo_proy = TipoProy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_proy }
    end
  end

  # GET /tipo_proys/1/edit
  def edit
    @tipo_proy = TipoProy.find(params[:id])
  end

  # POST /tipo_proys
  # POST /tipo_proys.xml
  def create
    @tipo_proy = TipoProy.new(params[:tipo_proy])

    respond_to do |format|
      if @tipo_proy.save
        flash[:notice] = 'TipoProy was successfully created.'
        format.html { redirect_to(@tipo_proy) }
        format.xml  { render :xml => @tipo_proy, :status => :created, :location => @tipo_proy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_proy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_proys/1
  # PUT /tipo_proys/1.xml
  def update
    @tipo_proy = TipoProy.find(params[:id])

    respond_to do |format|
      if @tipo_proy.update_attributes(params[:tipo_proy])
        flash[:notice] = 'TipoProy was successfully updated.'
        format.html { redirect_to(@tipo_proy) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_proy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_proys/1
  # DELETE /tipo_proys/1.xml
  def destroy
    @tipo_proy = TipoProy.find(params[:id])
    @tipo_proy.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_proys_url) }
      format.xml  { head :ok }
    end
  end
end
