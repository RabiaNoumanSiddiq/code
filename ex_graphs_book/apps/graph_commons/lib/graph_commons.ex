#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---
defmodule GraphCommons do

  ## ATTRIBUTES

  @priv_dir "#{:code.priv_dir(:graph_commons)}"

  ## TYPES

  @typedoc "Types for graph storage."
  @type base_type :: :dgraph | :native | :property | :rdf | :tinker
  @type graph_type :: base_type()
  @type query_type :: base_type()

  @typedoc "Type for testing file types."
  @type file_test :: :dir? | :regular? | :exists?

  ## FUNCTIONS

  def exports_dir(), do: @priv_dir <> "/transfer/exports"
  def imports_dir(), do: @priv_dir <> "/transfer/imports"
  def scripts_dir(), do: @priv_dir <> "/extras/scripts"
  def storage_dir(), do: @priv_dir <> "/storage"

  def hello do
    IO.puts("This is ExGraphsBook - an Elixir umbrella app:\n")
    GraphCommons.Utils.list_apps()
  end

end
