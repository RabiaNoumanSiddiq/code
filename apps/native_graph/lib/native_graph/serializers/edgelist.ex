#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---
defmodule NativeGraph.Serializers.Edgelist do
  use NativeGraph.Serializer
  alias NativeGraph.Serializer

  def serialize(g) do
    result = "#{serialize_edges(g)}\n"

    {:ok, result}
  end

  def serialize_edges(%Graph{vertices: vertices, out_edges: oe} = g) do
    Enum.reduce(vertices, [], fn {id, v}, acc ->
      v_label = Serializer.get_vertex_label(g, id, v)

      edges =
        oe
        |> Map.get(id, MapSet.new())
        |> Enum.map(fn id2 ->
          v2_label = Serializer.get_vertex_label(g, id2, Map.get(vertices, id2))
          {v_label, v2_label}
        end)

      case edges do
        [] -> acc
        _ -> acc ++ edges
      end
    end)
    |> Enum.map(fn {v_label, v2_label} -> "#{v_label} #{v2_label}" end)
    |> Enum.join("\n")
  end
  
end
