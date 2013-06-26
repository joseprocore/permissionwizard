class AdminMailer < ActionMailer::Base
  default :from => "tylerk@procore.com"

  def initial_results(admin)
  	mail(:to => admin.email, :subject => "New Permission Templates Created")
  end

end
