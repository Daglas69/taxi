defmodule TaxiWeb.UserController do
	use TaxiWeb, :controller
	
	alias Taxi.Repo
	alias Taxi.Accounts.User
	
	def index(conn, _params) do
		users = Repo.all(User)
		render(conn, "index.html", users: users)
	end

  def new(conn, _params) do
    changeset = User.changeset(%User{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)

    Repo.insert(changeset)
    redirect(conn, to: Routes.user_path(conn, :index))
  end

end