module ApplicationHelper

  def all_tabs
    [
      'home',
      'emails',
      'bidding',
      'prime_contract',
      'commitments',
      'change_orders',
      'rfis',
      'submittals',
      'transmittals',
      'punch_list',
      'meetings',
      'schedule',
      'daily_log',
      'reports',
      'photos',
      'drawings',
      'documents',
      'directory',
      'admin'
    ]
  end  

  def sequence
    all_tabs << 'review'
  end

  def next_tab(tabname)
  	current_position = sequence.index(tabname)
  	next_position = current_position + 1
  	sequence[next_position]
  end


end

