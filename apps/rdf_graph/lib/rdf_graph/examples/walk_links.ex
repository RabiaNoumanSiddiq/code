defmodule RDFGraph.Examples.WalkLinks do
  use Tesla

  # START:plug
  plug Tesla.Middleware.FollowRedirects, max_redirects: 3
  plug Tesla.Middleware.Headers, [{"accept", "text/turtle"}]
  # END:plug

  # START:walk_links
  def walk_links(link \\ "http://dbpedia.org/resource/Bob_Dylan", count \\ 0)
  def walk_links(_, count) when count >= 7, do: :ok

  def walk_links(link, count) do
    IO.puts link    # <label id="code.walk.links.1"/>
    {:ok, result} = get(link)   # <label id="code.walk.links.2"/>
    id = String.slice(link, 28..-1)
    RDFGraph.write_graph(result.body, "walk/" <> id <> ".ttl")
    graph = RDF.Turtle.read_string!(result.body)   # <label id="code.walk.links.3"/>
    query = ~S"""
      PREFIX dbo: <http://dbpedia.org/ontology/>
      SELECT DISTINCT ?new_link
      WHERE
      {
        BIND (<LINK> AS ?link)
        ?link dbo:wikiPageWikiLink ?new_link
      }
    """
    query = String.replace(query, "LINK", link)
    list = SPARQL.execute_query(graph, query, request_opts: [adapter: [recv_timeout: 30_000]]) |>    # <label id="code.walk.links.4"/>
             SPARQL.Query.Result.get(:new_link)
    if Enum.empty?(list) do
      :ok
    else
      link = Enum.random(list) |> RDF.IRI.to_string
      walk_links(link, count + 1)
    end
  end
  # END:walk_links

end
