class AdminMailer < ActionMailer::Base
  default :from => "tylerk@procore.com"

  def initial_results(admin, account, templates)
    @admin = admin
    @account = account
    @templates = templates
    mail(:to => "#{admin.full_name} <#{admin.email}>", :subject => "#{@account.name}: Permission Templates")
  end

  def updated_results(admin, account, templates)
    @admin = admin
    @account = account
    @templates = templates
    mail(:to => "#{admin.full_name} <#{admin.email}>", :subject => "#{@account.name}: Updated Permission Templates")
  end

end
