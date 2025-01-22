require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>Define some routes in app.rb</p>
  <div>
    <a href=\"/rock\">Play Rock</a>
  </div>
  <div>
    <a href=\"/paper\">Play Paper</a>
  </div>
  <div>
    <a href=\"/scissors\">Play Scissors</a>
  </div>
  "
end

get ("/rock")do
  @our_move = "rock"
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "tied"
  elsif @comp_move == "paper"
    @result = "lost"
  elsif @comp_move == "scissors"
    @result = "won"
  else
    @result = "error"
  end

  erb(:play)

end

get ("/scissors") do
  @our_move = "scissors"
  
  @moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "lost"
  elsif @comp_move == "paper"
    @result = "won"
  elsif @comp_move == "scissors"
    @result = "tied"
  else
    @result = "error"
  end

  erb(:play)

end

get ("/paper") do
  @our_move = "paper"
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "won"
  elsif @comp_move == "paper"
    @result = "tied"
  elsif @comp_move == "scissors"
    @result = "lost"
  else
    @result = "error"
  end

  erb(:play)
end
  