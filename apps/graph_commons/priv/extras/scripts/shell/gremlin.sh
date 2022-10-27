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

## BOOK - GREMLIN

# export GREMLIN_VERSION=3.4.6
# export GREMLIN_VERSION=3.4.2
export GREMLIN_VERSION=3.4.9
export GREMLIN_SERVER=apache-tinkerpop-gremlin-server-${GREMLIN_VERSION}
export GREMLIN_SERVER_HOME=${GRAPHS_HOME}/gremlin/${GREMLIN_SERVER}
export PATH=${PATH}:$GREMLIN_SERVER_HOME/bin

gremlin-server.sh restart

