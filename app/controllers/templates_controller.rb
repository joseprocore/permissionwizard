class TemplatesController < ApplicationController
  # GET /templates
  # GET /templates.json
  def index
    @templates = Template.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @templates }
    end
  end

  # GET /templates/1
  # GET /templates/1.json
  def show
    @template = Template.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @template }
    end
  end

  # GET /templates/new
  # GET /templates/new.json
  def new
    @account = Account.find(params[:account_id])
    @templates = @account.templates
    @template = Template.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @template }
    end
  end

  # GET /templates/1/edit
  def edit
    @account = Account.find(params[:account_id])
    @template = Template.find(params[:id])
  end

  # POST /templates
  # POST /templates.json
  def create
    @account = Account.find(params[:template][:account_id])
    @templates = @account.templates
    @template = Template.new(params[:template])

    respond_to do |format|
      if @template.save
        format.html { redirect_to new_account_template_path(@account), notice: 'Template was successfully created.' }
        format.json { render json: @template, status: :created, location: @template }
      else
        flash[:error] = @template.errors.empty? ? "Error" : @template.errors.full_messages.to_sentence
        format.html { render action: "new" }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /templates/1
  # PUT /templates/1.json
  def update
    @template = Template.find(params[:id])

    respond_to do |format|
      if @template.update_attributes(params[:template])
        format.html { redirect_to @template, notice: 'Template was successfully updated.' }
        format.json { head :no_content }
      else
        flash[:error] = @template.errors.empty? ? "Error" : @template.errors.full_messages.to_sentence
        format.html { render action: "edit" }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template = Template.find(params[:id])
    @template.destroy

    respond_to do |format|
      format.html { redirect_to templates_url }
      format.json { head :no_content }
    end
  end

  def update_multiple
    redirect_to :back, :notice => "Please choose permissions for your templates" and return unless params[:templates]
    @templates = Template.update(params[:templates].keys, params[:templates].values)
    redirect_to :controller => :wizard, :action => next_tab(params[:tab]), :account_id => params[:account_id]
  end







end
