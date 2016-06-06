defmodule Faker.Color do
  import Faker, only: [random: 1]
  @moduledoc """
  Functions for generating different color representations.
  """

  @doc """
  Return random RGB hex value.
  """
  @spec rgb_hex() :: binary
  def rgb_hex do
    :io_lib.format("~2.16.0B~2.16.0B~2.16.0B", Tuple.to_list(rgb_decimal))
    |> :erlang.iolist_to_binary
  end

  @doc """
  Return random RGB decimal value.
  """
  @spec rgb_decimal() :: {byte, byte, byte}
  def rgb_decimal, do: {random(256), random(256), random(256)}

  @doc """
  Return a random color name
  """
  @spec name() :: String.t
  def name do
    localised_module.name
  end

  @doc """
  Return a random fancy color name
  """
  @spec fancy_name() :: String.t
  def fancy_name do
    localised_module.fancy_name
  end

  defp localised_module, do: Module.concat(__MODULE__, Faker.mlocale)
end
