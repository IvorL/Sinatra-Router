require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?

# Create first route. The "/" is the base path

# # Get request to the server that returns a list of all games
get "/games" do
  "Get all games"
end

# Get request to the server that returns a form in HTML to enter details, which are used to add a new game
get "/games/new" do
  "Get a form to add a new game"
end

# Get request that returns a game with a particular id and displays the id.
get "/games/:id" do
  id = params[:id]
  "Get one particular game #{id}"
end

# Get request that returns an HTML form to edit a game, selected by id. The game is edited on the server
get "/games/:id/edit" do
  id = params[:id]
  "Get and edit one particular game #{id}"
end

# Post request that returns an HTML form. The details from the form are used to create a new game on the server
post "/games" do
  "Adding a new game"
end

# Post request to update a particular game that has been selected by id
put "/games/:id" do
  id = params[:id]
  "Update a particular game #{id}"
end

# Request to remove a game from the server
delete "games/:id" do
  id = params[:id]
  "Delete a particular game #{id}"
end
