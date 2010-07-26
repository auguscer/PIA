class ContratacionsController < ApplicationController
  # GET /contratacions
  # GET /contratacions.xml
  def index
    @contratacions = Contratacion.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contratacions }
    end
  end

  # GET /contratacions/1
  # GET /contratacions/1.xml
  def show
    @contratacion = Contratacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contratacion }
    end
  end

  # GET /contratacions/new
  # GET /contratacions/new.xml
  def new
    @contratacion = Contratacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contratacion }
    end
  end

  # GET /contratacions/1/edit
  def edit
    @contratacion = Contratacion.find(params[:id])
  end

  # POST /contratacions
  # POST /contratacions.xml
  def create
    @contratacion = Contratacion.new(params[:contratacion])

    respond_to do |format|
      if @contratacion.save
        flash[:notice] = 'Contratacion was successfully created.'
        format.html { redirect_to(@contratacion) }
        format.xml  { render :xml => @contratacion, :status => :created, :location => @contratacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contratacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contratacions/1
  # PUT /contratacions/1.xml
  def update
    @contratacion = Contratacion.find(params[:id])

    respond_to do |format|
      if @contratacion.update_attributes(params[:contratacion])
        flash[:notice] = 'Contratacion was successfully updated.'
        format.html { redirect_to(@contratacion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contratacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contratacions/1
  # DELETE /contratacions/1.xml
  def destroy
    @contratacion = Contratacion.find(params[:id])
    @contratacion.destroy

    respond_to do |format|
      format.html { redirect_to(contratacions_url) }
      format.xml  { head :ok }
    end
  end
end
