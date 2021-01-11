require "application_system_test_case"

class EditorialesTest < ApplicationSystemTestCase
  setup do
    @editorial = editoriales(:one)
  end

  test "visiting the index" do
    visit editoriales_url
    assert_selector "h1", text: "Editoriales"
  end

  test "creating a Editorial" do
    visit editoriales_url
    click_on "New Editorial"

    fill_in "Formalegal", with: @editorial.formaLegal
    fill_in "Fundacion", with: @editorial.fundacion
    fill_in "Fundador", with: @editorial.fundador
    fill_in "Industria", with: @editorial.industria
    fill_in "Isin", with: @editorial.isin
    fill_in "Nombre", with: @editorial.nombre
    fill_in "Sede", with: @editorial.sede
    fill_in "Tipo", with: @editorial.tipo
    click_on "Create Editorial"

    assert_text "Editorial was successfully created"
    click_on "Back"
  end

  test "updating a Editorial" do
    visit editoriales_url
    click_on "Edit", match: :first

    fill_in "Formalegal", with: @editorial.formaLegal
    fill_in "Fundacion", with: @editorial.fundacion
    fill_in "Fundador", with: @editorial.fundador
    fill_in "Industria", with: @editorial.industria
    fill_in "Isin", with: @editorial.isin
    fill_in "Nombre", with: @editorial.nombre
    fill_in "Sede", with: @editorial.sede
    fill_in "Tipo", with: @editorial.tipo
    click_on "Update Editorial"

    assert_text "Editorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Editorial" do
    visit editoriales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Editorial was successfully destroyed"
  end
end
