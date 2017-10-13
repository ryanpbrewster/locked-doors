module Model exposing (..)

type alias Model = { playerPosition: Position
                   }

init : Model
init = { playerPosition =  { row = 0, col = 500 }
       }

type alias Position = { row: Int, col: Int }

type Direction = Up | Down | Left | Right
