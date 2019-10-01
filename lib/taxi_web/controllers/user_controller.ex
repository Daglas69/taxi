defmodule TaxiWeb.UserController do
	use TaxiWeb, :controller
	
	alias Taxi.Repo
	alias Taxi.Accounts.User
	
	def index(conn, _params) do
		users = Repo.all(User)
		render(conn, "index.html", users: users)
	end
end

#alias Taxi.{Repo, Accounts.User}

#@spec index(Plug.Conn.t(),any)::Plug.Conn.t()
#def index(conn, _params) do
#	users = Repo.all(User)
#	render(conn, "index.html", users: users) #users = Taxi.Repo.all(Taxi.Accounts.User)
#end

