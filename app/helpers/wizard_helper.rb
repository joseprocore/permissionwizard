module WizardHelper
	def current_tab
		params[:action]
	end

	def current_tab_title
		if params[:action] == 'rfis'
			'RFIs'
		else
			title = ''
			params[:action].humanize.split.each do |word|
				title << word.capitalize
				title << ' '
			end
			title.strip
		end
	end
end
