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

## BOOK - GRAPHDB

# export GRAPHDB_VERSION=8.10.1
# export GRAPHDB_VERSION=9.2.0
export GRAPHDB_VERSION=9.7.0
export GRAPHDB_HOME=${GRAPHS_HOME}/graphdb/graphdb-free-${GRAPHDB_VERSION}
export PATH=${PATH}:$GRAPHDB_HOME/bin

kill -9 `cat ${GRAPHDB_HOME}/pid.txt`
graphdb -d -p ${GRAPHDB_HOME}/pid.txt

