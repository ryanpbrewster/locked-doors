import Dict
import Html
import Keyboard

import Model
import View
import Update
import Input

main =
  Html.program
    { init = (Model.init, Cmd.none)
    , view = View.view
    , update = Update.update
    , subscriptions = subs
    }

subs _ = Keyboard.presses (\keypress -> Maybe.withDefault Input.Noop (Dict.get keypress keys))
  
keys = Dict.fromList [ (104, Input.Move Model.Left)
                     , (106, Input.Move Model.Down)
                     , (107, Input.Move Model.Up)
                     , (108, Input.Move Model.Right)
                     ]
