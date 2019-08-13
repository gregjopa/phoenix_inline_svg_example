defmodule PhoenixInlineSvgExampleWeb.PageController do
  use PhoenixInlineSvgExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
