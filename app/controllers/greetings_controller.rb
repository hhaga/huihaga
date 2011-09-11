class GreetingsController < ApplicationController
  # GET /greetings
  # GET /greetings.xml
  def index
    @greetings = Greeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @greetings }
    end
  end

  # GET /greetings/1
  # GET /greetings/1.xml
  def show
    @greeting = Greeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @greeting }
    end
  end

  # GET /greetings/new
  # GET /greetings/new.xml
  def new
    @greeting = Greeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @greeting }
    end
  end

  # GET /greetings/1/edit
  def edit
    @greeting = Greeting.find(params[:id])
  end

  # POST /greetings
  # POST /greetings.xml
  def create
    @greeting = Greeting.new(params[:greeting])
    @greeting.when = Date.today

    respond_to do |format|
      if @greeting.save
        format.html { redirect_to(greetings_path)}
        format.js
      end
    end
  end

  # PUT /greetings/1
  # PUT /greetings/1.xml
  def update
    @greeting = Greeting.find(params[:id])

    respond_to do |format|
      if @greeting.update_attributes(params[:greeting])
        format.html { redirect_to(@greeting, :notice => 'Greeting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @greeting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /greetings/1
  # DELETE /greetings/1.xml
  def destroy
    @greeting = Greeting.find(params[:id])
    @greeting.destroy

    respond_to do |format|
      format.html { redirect_to(greetings_url) }
      format.xml  { head :ok }
    end
  end
end
