-module(ni_links).
-export([init_db/0,
         get_all/0,
         get_link/1,
         save_link/1,
         update_link/2,
         delete_link/1,
         new/3,
         id/1,id/2,
         topic/1,topic/2,
         descriptor/1,descriptor/2,
         url/1,url/2
        ]).

-define(DB, ni_joedb).

init_db() ->
    ?DB:init_db().

get_all() -> 
    ?DB:get_all().

get_link(ID) ->
    ?DB:get_link(ID).

save_link(Weblink) ->
    ?DB:save_link(Weblink).

update_link(NewWebLink, Data) ->
    ?DB:update_link(NewWebLink, Data).

delete_link(ID) ->
    ?DB:delete_link(ID).

new(Topic, Descriptor, Url) ->
    ?DB:new(Topic, Descriptor, Url).

id(Weblink) ->
    ?DB:id(Weblink).

id(Weblink, ID) ->
    ?DB:id(Weblink, ID).

topic(Weblink) ->
    ?DB:topic(Weblink).

topic(Weblink, Topic) ->
    ?DB:topic(Weblink, Topic).

descriptor(Weblink) ->
    ?DB:descriptor(Weblink).

descriptor(Weblink, Descriptor) ->
    ?DB:descriptor(Weblink, Descriptor).

url(Weblink) ->
    ?DB:url(Weblink).

url(Weblink, Url) ->
    ?DB:url(Weblink, Url).
