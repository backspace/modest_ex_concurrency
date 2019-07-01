defmodule ModestExConcurrencyWeb.PageControllerTest do
  use ModestExConcurrencyWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "serialises a string" do
    assert ModestEx.serialize("<div>Hello<span>World", :body_children) ==
             "<div>Hello<span>World</span></div>"
  end
end
