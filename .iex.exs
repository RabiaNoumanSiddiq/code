#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---
import GraphCommons
import GraphCommons.Utils ; alias GraphCommons.Utils

GraphCommons.hello()

graph_service NativeGraph

import GraphCompute.ProcessGraph

# c "/Users/tony/Book/Code/priv/extras/scripts/elixir/arpa.exs"

# RDFGraph.Service.rdf_store :local
# RDFGraph.rdf_store :dbpedia

# graph_service RDFGraph
# RDFGraph.rdf_store :nobelprize

# graph_service TinkerGraph
# alias Gremlex.{Graph,Client}

# "books.graph" |> NativeGraph.read_graph |> NativeGraph.graph_create
