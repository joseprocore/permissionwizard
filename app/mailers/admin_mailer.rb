class AdminMailer < ActionMailer::Base
  default :from => "tylerk@procore.com"

  def initial_results(admin, account, templates)
  	@admin = admin
  	@account = account
  	@templates = templates
  	mail(:to => "#{admin.full_name} <#{admin.email}>", :subject => "#{@account.name}: Permission Templates")
  end

end
