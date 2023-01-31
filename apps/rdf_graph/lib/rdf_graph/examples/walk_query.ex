defmodule RDFGraph.Examples.WalkQuery do

  # START:walk_query
  def walk_query(link \\ "http://dbpedia.org/resource/Bob_Dylan", count \\ 0)    # <label id="code.walk.query.1"/>
  def walk_query(_, count) when count >= 7, do: :ok    # <label id="code.walk.query.2"/>

  def walk_query(link, count) do
    IO.puts link
    query =     # <label id="code.walk.query.3"/>
    ~S"""
      PREFIX dbo: <http://dbpedia.org/ontology/>
      SELECT DISTINCT ?new_link
      WHERE
      {
        BIND (<LINK> AS ?link)
        ?link dbo:wikiPageWikiLink ?new_link
      }
    """
    query = String.replace(query, "LINK", link)    # <label id="code.walk.query.4"/>
    store = RDFGraph.Service.rdf_store_query()    # <label id="code.walk.query.5"/>
    list = with {:ok, result} = SPARQL.Client.query(query, store, request_opts: [adapter: [recv_timeout: 30_000]]),    # <label id="code.walk.query.6"/>
           do: SPARQL.Query.Result.get(result, :new_link)
    if Enum.empty?(list) do   # <label id="code.walk.query.7"/>
      :ok
    else
      link = Enum.random(list) |> RDF.IRI.to_string
      walk_query(link, count + 1)
    end
  end
  # END:walk_query

end
