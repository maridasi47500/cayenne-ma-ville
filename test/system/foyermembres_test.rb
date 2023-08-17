require "application_system_test_case"

class FoyermembresTest < ApplicationSystemTestCase
  setup do
    @foyermembre = foyermembres(:one)
  end

  test "visiting the index" do
    visit foyermembres_url
    assert_selector "h1", text: "Foyermembres"
  end

  test "creating a Foyermembre" do
    visit foyermembres_url
    click_on "New Foyermembre"

    click_on "Create Foyermembre"

    assert_text "Foyermembre was successfully created"
    click_on "Back"
  end

  test "updating a Foyermembre" do
    visit foyermembres_url
    click_on "Edit", match: :first

    click_on "Update Foyermembre"

    assert_text "Foyermembre was successfully updated"
    click_on "Back"
  end

  test "destroying a Foyermembre" do
    visit foyermembres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foyermembre was successfully destroyed"
  end
end
