defmodule PhxLv1Web.PageController do
  use PhxLv1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def test(conn, _) do
    live_render(conn, PhxLv1Web.TestLive)
  end
end
