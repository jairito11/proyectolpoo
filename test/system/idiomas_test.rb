require "application_system_test_case"

class IdiomasTest < ApplicationSystemTestCase
  setup do
    @idioma = idiomas(:one)
  end

  test "visiting the index" do
    visit idiomas_url
    assert_selector "h1", text: "Idiomas"
  end

  test "creating a Idioma" do
    visit idiomas_url
    click_on "New Idioma"

    fill_in "Dialectos", with: @idioma.dialectos
    fill_in "Escritura", with: @idioma.escritura
    fill_in "Familia", with: @idioma.familia
    fill_in "Hablantes", with: @idioma.hablantes
    fill_in "Nombre", with: @idioma.nombre
    fill_in "Puesto", with: @idioma.puesto
    fill_in "Region", with: @idioma.region
    fill_in "Reguladopor", with: @idioma.reguladoPor
    click_on "Create Idioma"

    assert_text "Idioma was successfully created"
    click_on "Back"
  end

  test "updating a Idioma" do
    visit idiomas_url
    click_on "Edit", match: :first

    fill_in "Dialectos", with: @idioma.dialectos
    fill_in "Escritura", with: @idioma.escritura
    fill_in "Familia", with: @idioma.familia
    fill_in "Hablantes", with: @idioma.hablantes
    fill_in "Nombre", with: @idioma.nombre
    fill_in "Puesto", with: @idioma.puesto
    fill_in "Region", with: @idioma.region
    fill_in "Reguladopor", with: @idioma.reguladoPor
    click_on "Update Idioma"

    assert_text "Idioma was successfully updated"
    click_on "Back"
  end

  test "destroying a Idioma" do
    visit idiomas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idioma was successfully destroyed"
  end
end
