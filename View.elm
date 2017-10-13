module View exposing (..)

import Html as H
import Html.Attributes as A
import Model exposing (..)
import Input exposing (..)

view : Model -> H.Html Input
view state = displayPlayer state.playerPosition

displayPlayer : Position -> H.Html Input
displayPlayer pos = H.div [A.id "player", A.style <| List.append playerStyle (position pos)] []

playerStyle = [ ("width",         "50px")
              , ("height",        "50px")
              , ("border-radius", "25px")
              , ("background",    "red")
              ]
        
position p = [ ("position", "fixed")
             , ("left", toString p.col ++ "px")
             , ("top", toString p.row ++ "px")
             ]
