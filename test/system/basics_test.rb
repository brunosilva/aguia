require "application_system_test_case"

class BasicsTest < ApplicationSystemTestCase
  setup do
    @basic = basics(:one)
  end

  test "visiting the index" do
    visit basics_url
    assert_selector "h1", text: "Basics"
  end

  test "should create basic" do
    visit basics_url
    click_on "New basic"

    fill_in "Address", with: @basic.address
    fill_in "City", with: @basic.city
    fill_in "Name", with: @basic.name
    fill_in "Neighborhood", with: @basic.neighborhood
    fill_in "Number", with: @basic.number
    fill_in "Phone", with: @basic.phone
    fill_in "Postal", with: @basic.postal
    fill_in "State", with: @basic.state
    click_on "Create Basic"

    assert_text "Basic was successfully created"
    click_on "Back"
  end

  test "should update Basic" do
    visit basic_url(@basic)
    click_on "Edit this basic", match: :first

    fill_in "Address", with: @basic.address
    fill_in "City", with: @basic.city
    fill_in "Name", with: @basic.name
    fill_in "Neighborhood", with: @basic.neighborhood
    fill_in "Number", with: @basic.number
    fill_in "Phone", with: @basic.phone
    fill_in "Postal", with: @basic.postal
    fill_in "State", with: @basic.state
    click_on "Update Basic"

    assert_text "Basic was successfully updated"
    click_on "Back"
  end

  test "should destroy Basic" do
    visit basic_url(@basic)
    click_on "Destroy this basic", match: :first

    assert_text "Basic was successfully destroyed"
  end
end
