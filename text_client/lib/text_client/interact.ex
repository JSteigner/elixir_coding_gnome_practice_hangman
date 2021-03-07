
defmodule TextClient.Interact do

  @hangman_server :hangman@localhost

  alias TextClient.{Player, State}

  def start() do
    new_game()
    |> setup_state()
    |> Player.play()
  end

  defp setup_state(game_service) do
    %State{
      game_service: game_service,
      tally:        Hangman.tally(game_service),
    }
  end

  defp new_game() do
    Node.connect(@hangman_server)
    :rpc.call(@hangman_server,
      Hangman,
      :new_game,
      [])
  end

end





# defmodule TextClient.Interact do

#   @hangman_server :hangman@localhost

#   alias TextClient.{Player, State}

#   def start() do
#     new_game()
#     |> setup_state()
#     |> Player.play()
#   end

#   defp setup_state(game) do
#     %State{
#       game_service: game,
#       tally: Hangman.tally(game),
#     }
#   end

#   # def play(state) do
#   #   # interactions
#   # end

#   defp new_game() do
#     Node.connect(@hangman_server)
#     :rpc.call(@hangman_server,
#       Hangman,
#       :new_game,
#       [])
#   end

# end
