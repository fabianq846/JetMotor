require "test_helper"

class MaintenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance = maintenances(:one)
  end

  test "should get index" do
    get maintenances_url
    assert_response :success
  end

  test "should get new" do
    get new_maintenance_url
    assert_response :success
  end

  test "should create maintenance" do
    assert_difference("Maintenance.count") do
      post maintenances_url, params: { maintenance: { city: @maintenance.city, maintenance_date: @maintenance.maintenance_date, maintenance_type: @maintenance.maintenance_type, materials: @maintenance.materials, motor_name: @maintenance.motor_name, motor_type: @maintenance.motor_type, technician_email: @maintenance.technician_email } }
    end

    assert_redirected_to maintenance_url(Maintenance.last)
  end

  test "should show maintenance" do
    get maintenance_url(@maintenance)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintenance_url(@maintenance)
    assert_response :success
  end

  test "should update maintenance" do
    patch maintenance_url(@maintenance), params: { maintenance: { city: @maintenance.city, maintenance_date: @maintenance.maintenance_date, maintenance_type: @maintenance.maintenance_type, materials: @maintenance.materials, motor_name: @maintenance.motor_name, motor_type: @maintenance.motor_type, technician_email: @maintenance.technician_email } }
    assert_redirected_to maintenance_url(@maintenance)
  end

  test "should destroy maintenance" do
    assert_difference("Maintenance.count", -1) do
      delete maintenance_url(@maintenance)
    end

    assert_redirected_to maintenances_url
  end
end
