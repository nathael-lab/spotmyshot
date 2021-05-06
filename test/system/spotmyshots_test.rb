require "application_system_test_case"

class SpotmyshotsTest < ApplicationSystemTestCase
  setup do
    @spotmyshot = spotmyshots(:one)
  end

  test "visiting the index" do
    visit spotmyshots_url
    assert_selector "h1", text: "Spotmyshots"
  end

  test "creating a Spotmyshot" do
    visit spotmyshots_url
    click_on "New Spotmyshot"

    fill_in "Coordonnees", with: @spotmyshot.coordonnees
    fill_in "Heure", with: @spotmyshot.heure
    fill_in "Image", with: @spotmyshot.image
    fill_in "Parametre", with: @spotmyshot.parametre
    fill_in "Saison", with: @spotmyshot.saison
    fill_in "Titre", with: @spotmyshot.titre
    click_on "Create Spotmyshot"

    assert_text "Spotmyshot was successfully created"
    click_on "Back"
  end

  test "updating a Spotmyshot" do
    visit spotmyshots_url
    click_on "Edit", match: :first

    fill_in "Coordonnees", with: @spotmyshot.coordonnees
    fill_in "Heure", with: @spotmyshot.heure
    fill_in "Image", with: @spotmyshot.image
    fill_in "Parametre", with: @spotmyshot.parametre
    fill_in "Saison", with: @spotmyshot.saison
    fill_in "Titre", with: @spotmyshot.titre
    click_on "Update Spotmyshot"

    assert_text "Spotmyshot was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotmyshot" do
    visit spotmyshots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotmyshot was successfully destroyed"
  end
end
