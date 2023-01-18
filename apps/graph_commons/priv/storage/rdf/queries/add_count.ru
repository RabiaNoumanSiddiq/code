PREFIX ex: <http://example/>
INSERT {
  ?s ex:count ?count .
}
WHERE {
  {
    SELECT ?s (count(?s) as ?count)
    WHERE { ?s ?p ?o FILTER (isIRI(?o)) }
    GROUP BY ?s
  }
  FILTER (?count > 1)
}
