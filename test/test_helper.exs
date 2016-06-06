ExUnit.start
Application.put_env(:faker, :random_function, {TestRandom, :random})

defmodule TestRandom do
  def random(total) do
    :random.uniform(total-1)
  end
end
