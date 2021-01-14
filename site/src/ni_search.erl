-module(ni_search).
-export([
          search/1
        ]).

search(SearchString) ->
  Weblinks = ni_links:get_all(),
  [Link || Link <- Weblinks, filter(SearchString, Link)].

filter(SearchString, Weblink) ->
  Topic = ni_links:topic(Weblink),
  Descriptor = ni_links:descriptor(Weblink),
  SearchWords = unique_words(SearchString),
  WeblinkWords = unique_words(Topic ++ " " ++ Descriptor),
  SharedWords = sets:intersection(SearchWords, WeblinkWords),
  sets:size(SharedWords) > 0.

unique_words(String) ->
  Tokens = string:lexemes(String, " "),
  sets:from_list(Tokens).
