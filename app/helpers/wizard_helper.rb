module WizardHelper
	def current_tab
		params[:action]
	end

end
