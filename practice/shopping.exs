shopping = [
  { "1 dozen", "eggs" },
  { "1 ripe", "melon" },
  { "4", "apples" },
  { "2 boxes", "tea" },
]

template = """
  quantity | item
  --------------------
 <%= for { qty, item } <- list do %>
   <%= String.pad_leading(qty, 8) %> | <%= item %>
 <% end %>
 """

 IO.puts EEx.eval_string(template, [ list: shopping ], trim: true)
