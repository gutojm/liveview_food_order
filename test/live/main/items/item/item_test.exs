defmodule LiveviewFoodOrderWeb.Main.Items.ItemTest do
  use LiveviewFoodOrderWeb.ConnCase
  import Phoenix.LiveViewTest

  test "load item", %{conn: conn} do
    {:ok, view, _html} = live(conn, Routes.main_path(conn, :index))

    assert has_element?(view, "#item-0")
    assert has_element?(view, "[data-role=product-img][data-id=item-0]")
    assert has_element?(view, "[data-role=product-description]")
    assert has_element?(view, "[data-role=product-name][data-id=item-0]", "Produto com Nome")
    assert has_element?(view, "[data-role=product-price][data-id=item-0]", "$ 10")
    assert has_element?(view, "[data-role=product-add][data-id=item-0]")
  end
end
