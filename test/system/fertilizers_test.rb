require "application_system_test_case"

class FertilizersTest < ApplicationSystemTestCase
  setup do
    @fertilizer = fertilizers(:one)
  end

  test "visiting the index" do
    visit fertilizers_url
    assert_selector "h1", text: "Fertilizers"
  end

  test "creating a Fertilizer" do
    visit fertilizers_url
    click_on "New Fertilizer"

    fill_in "Amount", with: @fertilizer.amount
    fill_in "Date", with: @fertilizer.date
    fill_in "F type", with: @fertilizer.f_type
    fill_in "Price", with: @fertilizer.price
    click_on "Create Fertilizer"

    assert_text "Fertilizer was successfully created"
    click_on "Back"
  end

  test "updating a Fertilizer" do
    visit fertilizers_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @fertilizer.amount
    fill_in "Date", with: @fertilizer.date
    fill_in "F type", with: @fertilizer.f_type
    fill_in "Price", with: @fertilizer.price
    click_on "Update Fertilizer"

    assert_text "Fertilizer was successfully updated"
    click_on "Back"
  end

  test "destroying a Fertilizer" do
    visit fertilizers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fertilizer was successfully destroyed"
  end
end
