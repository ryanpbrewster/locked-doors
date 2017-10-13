module Update exposing (..)

import Model exposing (..)
import Input exposing (..)
import Maybe exposing (..)
import Array as A
import Debug

update : Input -> Model -> (Model, Cmd Input)
update msg state =
  let newState = case msg of
    Noop  -> state
    Move dir -> case dir of
      Up    -> { state | playerPosition = { row =   0, col = 250 } }
      Down  -> { state | playerPosition = { row = 500, col = 250 } }
      Left  -> { state | playerPosition = { row = 250, col =   0 } }
      Right -> { state | playerPosition = { row = 250, col = 500 } }
  in (newState, Cmd.none)
