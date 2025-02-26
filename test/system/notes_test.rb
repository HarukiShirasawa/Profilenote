require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "Notes"
  end

  test "creating a Note" do
    visit notes_url
    click_on "New Note"

    fill_in "Birthday", with: @note.birthday
    fill_in "Detail", with: @note.detail
    fill_in "Hobby", with: @note.hobby
    fill_in "Name", with: @note.name
    fill_in "Where from", with: @note.where_from
    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "updating a Note" do
    visit notes_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @note.birthday
    fill_in "Detail", with: @note.detail
    fill_in "Hobby", with: @note.hobby
    fill_in "Name", with: @note.name
    fill_in "Where from", with: @note.where_from
    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "destroying a Note" do
    visit notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note was successfully destroyed"
  end
end
