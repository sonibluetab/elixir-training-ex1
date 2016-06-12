defmodule Ex1.MovieController do
  use Ex1.Web, :controller

  alias Ex1.Movies

  def index(conn, _params) do
    movieList = Movies.all
    conn
    |> render("index.html", movieList: movieList)
  end
end
