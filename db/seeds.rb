# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = Admin.create([
  {first_name: 'Tyler', last_name: 'Kresch', email: 'tylerk@procore.com'},
  {first_name: 'Travis', last_name: 'Parker', email: 'travis@procore.com'},
  {first_name: 'Gabe', last_name: 'Miller-Smith', email: 'gabe@procore.com'},
  {first_name: 'Brandon', last_name: 'Poling', email: 'brandonp@procore.com'},
  {first_name: 'Jarryd', last_name: 'Hensel', email: 'jarryd@procore.com'},
  {first_name: 'Ryan', last_name: 'Depauw', email: 'ryan@procore.com'}
])

default_account = Account.create(name: 'template_master_account', admin_id: admins[0].id)

architect_engineer = Template.create ({
  name: "Architect/Engineer",
  home: "Read Only",
  emails: "None",
  bidding: "None",
  prime_contract: "None",
  commitments: "None",
  change_orders: "None",
  rfis: "Standard",
  submittals: "Standard",
  transmittals: "None",
  punch_list: "Standard",
  meetings: "Read Only",
  schedule: "None",
  daily_log: "None",
  reports: "None",
  photos: "Standard",
  drawings: "Standard",
  documents: "Standard",
  directory: "None",
  admin: "None",
  is_default: true,
  default: 1,
  account_id: default_account.id
})

foreman_superintendent = Template.create({
  name: "Foreman/Superintendent",
  home: "Read Only",
  emails: "Read Only",
  bidding: "None",
  prime_contract: "None",
  commitments: "None",
  change_orders: "None",
  rfis: "Standard",
  submittals: "Read Only",
  transmittals: "None",
  punch_list: "None",
  meetings: "Read Only",
  schedule: "Standard",
  daily_log: "Admin",
  reports: "Admin",
  photos: "Admin",
  drawings: "Standard",
  documents: "Standard",
  directory: "Read Only",
  admin: "None",
  is_default: true,
  default: 2,
  account_id: default_account.id
})

owner_cm = Template.create({
  name: "Owner/CM",
  home: "Read Only",
  emails: "None",
  bidding: "None",
  prime_contract: "Read Only",
  commitments: "None",
  change_orders: "Standard",
  rfis: "None",
  submittals: "None",
  transmittals: "None",
  punch_list: "None",
  meetings: "Read Only",
  schedule: "Read Only",
  daily_log: "None",
  reports: "None",
  photos: "Read Only",
  drawings: "Read Only",
  documents: "Read Only",
  directory: "Read Only",
  admin: "None",
  is_default: true,
  default: 3,
  account_id: default_account.id
})

project_manager = Template.create({
  name: "Project Manager",
  home: "Admin",
  emails: "Admin",
  bidding: "Admin",
  prime_contract: "Admin",
  commitments: "Admin",
  change_orders: "Admin",
  rfis: "Admin",
  submittals: "Admin",
  transmittals: "Admin",
  punch_list: "Admin",
  meetings: "Admin",
  schedule: "Admin",
  daily_log: "Admin",
  reports: "Admin",
  photos: "Admin",
  drawings: "Admin",
  documents: "Admin",
  directory: "Admin",
  admin: "Admin",
  is_default: true,
  default: 4,
  account_id: default_account.id
})

subcontractor = Template.create({
  name: "Subcontractor",
  home: "Read Only",
  emails: "None",
  bidding: "None",
  prime_contract: "None",
  commitments: "Standard",
  change_orders: "Standard",
  rfis: "Read Only",
  submittals: "Read Only",
  transmittals: "None",
  punch_list: "Read Only",
  meetings: "None",
  schedule: "Read Only",
  daily_log: "None",
  reports: "None",
  photos: "Read Only",
  drawings: "Read Only",
  documents: "Read Only",
  directory: "None",
  admin: "None",
  is_default: true,
  default: 5,
  account_id: default_account.id
})







