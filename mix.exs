defmodule Socializer.MixProject do
  use Mix.Project

  def project do
    [
      app: :socializer,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test, "coveralls.html": :test]
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Socializer.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.5.7"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_ecto, "~> 4.0"},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:cors_plug, "~> 2.0"},
      {:bcrypt_elixir, "~> 2.0"},
      {:guardian, "~> 2.1.1"},
      {:absinthe, "~> 1.6.3"},
      {:absinthe_phoenix, "~> 2.0.1"},
      {:absinthe_plug, "~> 1.5.5"},
      {:dataloader, "~> 1.0.8"},
      {:poison, "~> 4.0.1"},
      {:quantum, "~> 3.3.0"},
      {:timex, "~> 3.6"},
      {:new_relic_agent, "~> 1.19"},
      {:new_relic_absinthe, "~> 0.0.4"},
      {:excoveralls, "~> 0.13.4", only: :test},
      {:ex_machina, "~> 2.6", only: :test},
      {:ex_spec, "~> 2.0", only: :test},
      {:faker, "~> 0.16", only: :test},
      {:junit_formatter, "~> 3.1", only: [:test]}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
