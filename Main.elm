import Html

import Model
import View
import Update

main =
  Html.beginnerProgram
    { model = Model.init
    , view = View.view
    , update = Update.update
    }
