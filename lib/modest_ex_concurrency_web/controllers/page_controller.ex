defmodule ModestExConcurrencyWeb.PageController do
  use ModestExConcurrencyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
