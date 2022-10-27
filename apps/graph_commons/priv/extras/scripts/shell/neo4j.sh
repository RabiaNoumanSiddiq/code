#!/bin/bash
#---
# Excerpted from "Exploring Graphs with Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/thgraphs for more book information.
#---

## BOOK

export GRAPHS_HOME=/Users/tony/Projects/graphs

## BOOK - NEO4J

# export NEO4J_VERSION=4.0.4
# export NEO4J_VERSION=3.5.7
export NEO4J_VERSION=4.2.3
export NEO4J_HOME=${GRAPHS_HOME}/neo4j/neo4j-community-${NEO4J_VERSION}
# export NEO4J_CONF=${NEO4J_HOME}/conf
export PATH=${PATH}:$NEO4J_HOME/bin

neo4j restart

