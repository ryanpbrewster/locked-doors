module View exposing (..)

import Html as H
import Html.Attributes as A
import Model exposing (..)
import Input exposing (..)

view : Model -> H.Html Input
view state = displayPlayer state.playerPosition

displayPlayer : Position -> H.Html Input
displayPlayer pos = H.div [A.id "player"] []
