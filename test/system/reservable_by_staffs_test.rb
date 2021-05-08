require "application_system_test_case"

class ReservableByStaffsTest < ApplicationSystemTestCase
  setup do
    @reservable_by_staff = reservable_by_staffs(:one)
  end

  test "visiting the index" do
    visit reservable_by_staffs_url
    assert_selector "h1", text: "Reservable By Staffs"
  end

  test "creating a Reservable by staff" do
    visit reservable_by_staffs_url
    click_on "New Reservable By Staff"

    fill_in "End time", with: @reservable_by_staff.end_time
    fill_in "Filled flag", with: @reservable_by_staff.filled_flag
    fill_in "Staff", with: @reservable_by_staff.staff_id
    fill_in "Start time", with: @reservable_by_staff.start_time
    fill_in "The date", with: @reservable_by_staff.the_date
    click_on "Create Reservable by staff"

    assert_text "Reservable by staff was successfully created"
    click_on "Back"
  end

  test "updating a Reservable by staff" do
    visit reservable_by_staffs_url
    click_on "Edit", match: :first

    fill_in "End time", with: @reservable_by_staff.end_time
    fill_in "Filled flag", with: @reservable_by_staff.filled_flag
    fill_in "Staff", with: @reservable_by_staff.staff_id
    fill_in "Start time", with: @reservable_by_staff.start_time
    fill_in "The date", with: @reservable_by_staff.the_date
    click_on "Update Reservable by staff"

    assert_text "Reservable by staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservable by staff" do
    visit reservable_by_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservable by staff was successfully destroyed"
  end
end
