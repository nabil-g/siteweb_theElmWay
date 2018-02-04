module Model exposing (..)

type alias Model =
    Page


type Page
    = Home
    | Skills
    | Xp
    | School
    | About
    | Contact
    | Legal


model : Model
model =
    Home

type Msg
    = NoOp
    | Go Page
