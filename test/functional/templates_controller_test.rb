require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { admin: @template.admin, bidding: @template.bidding, change_orders: @template.change_orders, commitments: @template.commitments, daily_log: @template.daily_log, directory: @template.directory, documents: @template.documents, drawings: @template.drawings, emails: @template.emails, home: @template.home, meetings: @template.meetings, name: @template.name, photos: @template.photos, prime_contract: @template.prime_contract, punch_list: @template.punch_list, reports: @template.reports, rfis: @template.rfis, schedule: @template.schedule, submittals: @template.submittals, transmittals: @template.transmittals }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    put :update, id: @template, template: { admin: @template.admin, bidding: @template.bidding, change_orders: @template.change_orders, commitments: @template.commitments, daily_log: @template.daily_log, directory: @template.directory, documents: @template.documents, drawings: @template.drawings, emails: @template.emails, home: @template.home, meetings: @template.meetings, name: @template.name, photos: @template.photos, prime_contract: @template.prime_contract, punch_list: @template.punch_list, reports: @template.reports, rfis: @template.rfis, schedule: @template.schedule, submittals: @template.submittals, transmittals: @template.transmittals }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end
