module Update exposing (..)

import Model exposing (..)

update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Go page ->
            page

