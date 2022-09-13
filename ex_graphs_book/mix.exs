#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---
defmodule ExGraphsBook.MixProject do
  use Mix.Project

  def project do
    [
      aliases: aliases(),  
      apps: [  
        :d_graph,
        :graph_commons,
        :graph_compute,
        :native_graph,
        :property_graph,
        :rdf_graph,
        :tinker_graph
      ],
      apps_path: "apps",
      deps: deps(),
      docs: [  
        main: "readme",
        extras: ["README.md"]
      ],
      start_permanent: Mix.env() == :prod
    ]
  end

  defp deps do
    [
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :test]},
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp aliases do
    [
      test_d_graph: "cmd --app d_graph mix test --color",
      test_graph_commons: "cmd --app graph_commons mix test --color",
      test_graph_compute: "cmd --app graph_compute mix test --color",
      test_native_graph: "cmd --app native_graph mix test --color",
      test_property_graph: "cmd --app property_graph mix test --color",
      test_rdf_graph: "cmd --app rdf_graph mix test --color",
      test_tinker_graph: "cmd --app tinker_graph mix test --color"
    ]
  end
end
