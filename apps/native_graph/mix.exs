defmodule NativeGraph.MixProject do
  use Mix.Project

  def project do
    [
      app: :native_graph,
      version: "0.1.0",
      description: "ExGraphsBook - Native graph functions.",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # data import
      {:csv, "~> 2.3"},

      # graph_commons
      {:graph_commons, in_umbrella: true},

      # native graphs
      {:libgraph, "~> 0.13"}
    ]
  end

end
