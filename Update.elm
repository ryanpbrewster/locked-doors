module Update exposing (..)

import Model exposing (..)
import Input exposing (..)
import Maybe exposing (..)
import Array as A
import Debug

update : Input -> Model -> Model
update msg state =
  case msg of
    Noop -> state
