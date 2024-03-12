defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)

  def fib_sequence(n) when n >= 0 do
    Enum.map(0..n, &fib/1)
  end

  def num_contains?(num, sequence) do
    if num in sequence do
      "O numero pertence a sequência"
    else
      "O numero não pertence a sequência"
    end
  end
end

IO.inspect(Fibonacci.num_contains?(1, Fibonacci.fib_sequence(1)))
