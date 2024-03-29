defmodule DGraph.MixProject do
  use Mix.Project

  def project do
    [
      app: :d_graph,
      version: "0.1.0",
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
      mod: {DGraph.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:dlex, "== 0.5.0"},
        # {:db_connection, "== 2.1.0"},
        # {:grpc, "== 0.3.1"},
        {:protobuf, "== 0.9.0"}
    ]
  end
end