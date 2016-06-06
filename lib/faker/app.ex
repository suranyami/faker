defmodule Faker.App do
  import Faker, only: [sampler: 2, random: 1]

  @moduledoc """
  Functions for generating app specific properties.
  """

  @doc """
  Return random version number.
  """
  @spec version() :: String.t
  def version do
    %{0 => "0.#.#", 1 => "0.##", 2 => "#.##", 3 => "#.#", 4 => "#.#.#"}
    |> Map.get(random(5))
    |> Faker.format
  end

  @doc """
  Return app name.
  """
  @spec name() :: String.t
  sampler :name, ["Redhold", "Treeflex", "Trippledex", "Kanlam", "Bigtax", "Daltfresh", "Toughjoyfax", "Mat Lam Tam", "Otcom", "Tres-Zap", "Y-Solowarm", "Tresom", "Voltsillam", "Biodex", "Greenlam", "Viva", "Matsoft", "Temp", "Zoolab", "Subin", "Rank", "Job", "Stringtough", "Tin", "It", "Home Ing", "Zamit", "Sonsing", "Konklab", "Alpha", "Latlux", "Voyatouch", "Alphazap", "Holdlamis", "Zaam-Dox", "Sub-Ex", "Quo Lux", "Bamity", "Ventosanzap", "Lotstring", "Hatity", "Tempsoft", "Overhold", "Fixflex", "Konklux", "Zontrax", "Tampflex", "Span", "Namfix", "Transcof", "Stim", "Fix San", "Sonair", "Stronghold", "Fintone", "Y-find", "Opela", "Lotlux", "Ronstring", "Zathin", "Duobam", "Keylex"]

  @doc """
  Return author name.
  """
  @spec author() :: String.t
  def author do
    author(random(2))
  end

  defp author(0), do: Faker.Name.name
  defp author(1), do: Faker.Company.name
end
