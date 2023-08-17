require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Civilite", with: @person.civilite
    fill_in "Communnenaissance", with: @person.communnenaissance
    fill_in "Dptnaissance", with: @person.dptnaissance
    fill_in "Email", with: @person.email
    fill_in "Mobile", with: @person.mobile
    fill_in "Nomdefamille", with: @person.nomdefamille
    fill_in "Nomdusage", with: @person.nomdusage
    fill_in "Observations", with: @person.observations
    fill_in "Paysnaissance", with: @person.paysnaissance
    fill_in "Piecej", with: @person.piecej
    fill_in "Tel", with: @person.tel
    fill_in "User", with: @person.user_id
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Civilite", with: @person.civilite
    fill_in "Communnenaissance", with: @person.communnenaissance
    fill_in "Dptnaissance", with: @person.dptnaissance
    fill_in "Email", with: @person.email
    fill_in "Mobile", with: @person.mobile
    fill_in "Nomdefamille", with: @person.nomdefamille
    fill_in "Nomdusage", with: @person.nomdusage
    fill_in "Observations", with: @person.observations
    fill_in "Paysnaissance", with: @person.paysnaissance
    fill_in "Piecej", with: @person.piecej
    fill_in "Tel", with: @person.tel
    fill_in "User", with: @person.user_id
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
