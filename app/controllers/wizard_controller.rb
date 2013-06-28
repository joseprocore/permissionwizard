class WizardController < ApplicationController
  before_filter :load_resources

  def home
  end

  def emails
  end

  def bidding
  end

  def prime_contract
  end

  def commitments
  end

  def change_orders
  end

  def rfis
  end

  def submittals
  end

  def transmittals
  end

  def punch_list
  end

  def meetings
  end

  def schedule
  end

  def daily_log
  end

  def reports
  end

  def photos
  end

  def drawings
  end

  def documents
  end

  def directory
  end

  def admin
  end

  def load_resources
    @account = Account.find(params[:account_id])
    @templates = @account.templates
  end

  def start
    @account = Account.find(params[:account_id])
    if @account.templates.length < 3
      flash[:error] = "Please create at least 3 templates before moving on."
      redirect_to :back
    end
  end

  def send_initial_email
    @admin = @account.admin
    AdminMailer.initial_results(@admin, @account, @templates).deliver
    redirect_to @account
  end

  def send_update_email
    @admin = @account.admin
    AdminMailer.updated_results(@admin, @account, @templates).deliver
    redirect_to @account
  end


end
