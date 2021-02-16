defmodule TextClient.State do
  # whenever you need to keep track of state use a struct
  defstruct(
    game_service: nil,
    tally: nil,
    guess: ""
  )

end
