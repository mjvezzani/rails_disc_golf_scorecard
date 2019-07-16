require "application_system_test_case"

class HolesTest < ApplicationSystemTestCase
  setup do
    @hole = holes(:one)
  end

  test "visiting the index" do
    visit holes_url
    assert_selector "h1", text: "Holes"
  end

  test "creating a Hole" do
    visit holes_url
    click_on "New Hole"

    fill_in "Course", with: @hole.course_id
    fill_in "Number", with: @hole.number
    fill_in "Par", with: @hole.par
    click_on "Create Hole"

    assert_text "Hole was successfully created"
    click_on "Back"
  end

  test "updating a Hole" do
    visit holes_url
    click_on "Edit", match: :first

    fill_in "Course", with: @hole.course_id
    fill_in "Number", with: @hole.number
    fill_in "Par", with: @hole.par
    click_on "Update Hole"

    assert_text "Hole was successfully updated"
    click_on "Back"
  end

  test "destroying a Hole" do
    visit holes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hole was successfully destroyed"
  end
end
