class MemberinfosController < ApplicationController
  # GET /memberinfos
  # GET /memberinfos.xml
  def index
    @memberinfos = Memberinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @memberinfos }
    end
  end

  # GET /memberinfos/1
  # GET /memberinfos/1.xml
  def show
    @memberinfo = Memberinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @memberinfo }
    end
  end

  # GET /memberinfos/new
  # GET /memberinfos/new.xml
  def new
    @memberinfo = Memberinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @memberinfo }
    end
  end

  # GET /memberinfos/1/edit
  def edit
    @memberinfo = Memberinfo.find(params[:id])
  end

  # POST /memberinfos
  # POST /memberinfos.xml
  def create
    @memberinfo = Memberinfo.new(params[:memberinfo])

    respond_to do |format|
      if @memberinfo.save
        format.html { redirect_to(@memberinfo, :notice => 'Memberinfo was successfully created.') }
        format.xml  { render :xml => @memberinfo, :status => :created, :location => @memberinfo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @memberinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /memberinfos/1
  # PUT /memberinfos/1.xml
  def update
    @memberinfo = Memberinfo.find(params[:id])

    respond_to do |format|
      if @memberinfo.update_attributes(params[:memberinfo])
        format.html { redirect_to(@memberinfo, :notice => 'Memberinfo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @memberinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /memberinfos/1
  # DELETE /memberinfos/1.xml
  def destroy
    @memberinfo = Memberinfo.find(params[:id])
    @memberinfo.destroy

    respond_to do |format|
      format.html { redirect_to(memberinfos_url) }
      format.xml  { head :ok }
    end
  end
end
