require "application_system_test_case"

class DateofinfectionsTest < ApplicationSystemTestCase
  setup do
    @dateofinfection = dateofinfections(:one)
  end

  test "visiting the index" do
    visit dateofinfections_url
    assert_selector "h1", text: "Dateofinfections"
  end

  test "creating a Dateofinfection" do
    visit dateofinfections_url
    click_on "New Dateofinfection"

    fill_in "Animal", with: @dateofinfection.animal_id
    fill_in "Dateofinfection", with: @dateofinfection.dateofinfection
    fill_in "Disease", with: @dateofinfection.disease_id
    click_on "Create Dateofinfection"

    assert_text "Dateofinfection was successfully created"
    click_on "Back"
  end

  test "updating a Dateofinfection" do
    visit dateofinfections_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @dateofinfection.animal_id
    fill_in "Dateofinfection", with: @dateofinfection.dateofinfection
    fill_in "Disease", with: @dateofinfection.disease_id
    click_on "Update Dateofinfection"

    assert_text "Dateofinfection was successfully updated"
    click_on "Back"
  end

  test "destroying a Dateofinfection" do
    visit dateofinfections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dateofinfection was successfully destroyed"
  end
end
