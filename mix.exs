defmodule Faker.Mixfile do
  use Mix.Project

  @version "0.6.0"

  def project do
    [app: :faker,
     version: @version,
     elixir: "~> 1.0",
     description: "Faker is a pure Elixir library for generating fake data.",
     package: package,
     name: "Faker",
     source_url: "https://github.com/igas/faker",
     deps: deps]
  end

  def application do
    [applications: [:crypto],
     env: env]
  end

  defp env do
    [locale: :en,
     random_function: {Faker, :default_random},
     random_bytes_function: {Faker, :default_random_bytes},
     random_uniform_function: {Faker, :default_random_uniform},
     random_between_function: {Faker, :default_random_between}]
  end

  defp deps do
    [{:ex_doc, "~> 0.7", only: :docs},
     {:earmark, ">= 0.0.0", only: :docs}]
  end

  defp package do
    %{files: ["lib", "mix.exs", "mix.lock"],
      maintainers: ["Igor Kapkov"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/igas/faker"}}
  end
end
