class WizardController < ApplicationController
  before_filter :load_resources, :except => :start

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
  end

  def review
    @admin = @account.admin
    AdminMailer.initial_results(@admin).deliver
  end


end
