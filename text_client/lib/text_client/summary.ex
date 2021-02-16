defmodule TextClient.Summary do

  def display(game = %{ tally: tally }) do
    IO.puts [
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}",
      "Guesses left: #{tally.turns_left}\n",
      "Used letters: #{Enum.join(tally.used, " ")}",
    ]
    game
  end

end
