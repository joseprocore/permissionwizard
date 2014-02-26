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
    @template = Template.new(template_params)

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
      if @template.update_attributes(template_params)
        format.html { redirect_to :back, notice: 'Template was successfully updated.' }
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
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  def update_multiple
    @account = Account.find(params[:account_id])
    unless params[:templates].length == @account.templates.count
      flash[:error] = "Please choose permissions for all of your templates before moving on"; 
      redirect_to :back and return
    end
    @templates = Template.update(params[:templates].keys, params[:templates].values)
    if params[:tab] == 'edit'
      redirect_to :controller => :wizard, :action => :send_update_email, :account_id => @account.id and return
    else
      redirect_to :controller => :wizard, :action => next_tab(params[:tab]), :account_id => @account.id and return
    end
  end


  private

  def template_params
    params.require(:template).permit(:admin, :bidding, :change_orders, :commitments, :daily_log, :directory, :documents, :drawings, :emails, :home, :meetings, :name, :photos, :prime_contract, :punch_list, :reports, :rfis, :schedule, :submittals, :transmittals, :account_id, :default, :is_default)
  end


end
