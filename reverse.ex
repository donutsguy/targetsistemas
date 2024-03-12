defmodule Reverse do
  def do_reverse(string) when is_binary(string) do
    do_reverse(string, <<>>)
  end

  defp do_reverse(<<head::utf8, tail::binary>>, acc) do
    do_reverse(tail, <<head::utf8>> <> acc)
  end

  defp do_reverse("", acc), do: acc
end

IO.inspect(Reverse.do_reverse("Ola pessoal"))
