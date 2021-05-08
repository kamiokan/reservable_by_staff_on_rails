require "test_helper"

class ReservableByStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservable_by_staff = reservable_by_staffs(:one)
  end

  test "should get index" do
    get reservable_by_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_reservable_by_staff_url
    assert_response :success
  end

  test "should create reservable_by_staff" do
    assert_difference('ReservableByStaff.count') do
      post reservable_by_staffs_url, params: { reservable_by_staff: { end_time: @reservable_by_staff.end_time, filled_flat: @reservable_by_staff.filled_flat, staff_id: @reservable_by_staff.staff_id, start_time: @reservable_by_staff.start_time, the_date: @reservable_by_staff.the_date } }
    end

    assert_redirected_to reservable_by_staff_url(ReservableByStaff.last)
  end

  test "should show reservable_by_staff" do
    get reservable_by_staff_url(@reservable_by_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservable_by_staff_url(@reservable_by_staff)
    assert_response :success
  end

  test "should update reservable_by_staff" do
    patch reservable_by_staff_url(@reservable_by_staff), params: { reservable_by_staff: { end_time: @reservable_by_staff.end_time, filled_flat: @reservable_by_staff.filled_flat, staff_id: @reservable_by_staff.staff_id, start_time: @reservable_by_staff.start_time, the_date: @reservable_by_staff.the_date } }
    assert_redirected_to reservable_by_staff_url(@reservable_by_staff)
  end

  test "should destroy reservable_by_staff" do
    assert_difference('ReservableByStaff.count', -1) do
      delete reservable_by_staff_url(@reservable_by_staff)
    end

    assert_redirected_to reservable_by_staffs_url
  end
end
