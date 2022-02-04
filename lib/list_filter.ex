defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(&is_num?/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&is_num_odd?/1)
    |> length()
  end

  defp is_num?(string) do
    Regex.match?(~r/\A\d*\z/, string)
  end

  defp is_num_odd?(num), do: rem(num, 2) == 1
end
