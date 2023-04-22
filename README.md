# Chat

A very rudimentary chat over IEx just to try out connecting nodes over
a network.

## Install

Clone this to some directory then `cd` into it and:

```shell
$ asdf plugin add erlang
$ asdf plugin add elixir
$ asdf install
$ iex --name you@yourip --cookie <get the cookie> -S mix
iex(you@yourip)1> Chat.connect(<your friend's node>)
iex(you@yourip)2> Chat.msg("Hi there")
```
