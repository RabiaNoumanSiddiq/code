#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---
defmodule GraphCompute.MixProject do
  use Mix.Project

  def project do
    [
      app: :graph_compute,
      version: "0.1.0",
      description: "ExGraphsBook - Graph compute functions.",
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
      mod: {GraphCompute.Application, []}
      ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:libgraph, "~> 0.13"}
    ]
  end
end
