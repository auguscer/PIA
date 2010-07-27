class PiaOcotalsController < ApplicationController
  # GET /pia_ocotals
  # GET /pia_ocotals.xml
  def index
    @pia_ocotals = PiaOcotal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pia_ocotals }
    end
  end

  # GET /pia_ocotals/1
  # GET /pia_ocotals/1.xml
  def show
    @pia_ocotal = PiaOcotal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pia_ocotal }
    end
  end

  # GET /pia_ocotals/new
  # GET /pia_ocotals/new.xml
  def new
    @pia_ocotal = PiaOcotal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pia_ocotal }
    end
  end

  # GET /pia_ocotals/1/edit
  def edit
    @pia_ocotal = PiaOcotal.find(params[:id])
  end

  # POST /pia_ocotals
  # POST /pia_ocotals.xml
  def create
    @pia_ocotal = PiaOcotal.new(params[:pia_ocotal])

    respond_to do |format|
      if @pia_ocotal.save
        format.html { redirect_to(@pia_ocotal, :notice => 'PiaOcotal was successfully created.') }
        format.xml  { render :xml => @pia_ocotal, :status => :created, :location => @pia_ocotal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pia_ocotal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pia_ocotals/1
  # PUT /pia_ocotals/1.xml
  def update
    @pia_ocotal = PiaOcotal.find(params[:id])

    respond_to do |format|
      if @pia_ocotal.update_attributes(params[:pia_ocotal])
        format.html { redirect_to(@pia_ocotal, :notice => 'PiaOcotal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pia_ocotal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pia_ocotals/1
  # DELETE /pia_ocotals/1.xml
  def destroy
    @pia_ocotal = PiaOcotal.find(params[:id])
    @pia_ocotal.destroy

    respond_to do |format|
      format.html { redirect_to(pia_ocotals_url) }
      format.xml  { head :ok }
    end
  end
end
