module Main exposing (..)

import Html exposing (..)
import Model exposing (..)
import View exposing (view)
import Update exposing (update)

-- APP


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = initialModel, view = view, update = update }

