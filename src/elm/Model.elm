module Model exposing (..)

type alias Model =
    { currentPage: Page }


type Page
    = Home
    | Skills
    | Xp
    | School
    | About
    | Contact
    | Legal


initialModel : Model
initialModel =
    { currentPage = Home }

type Msg
    = NoOp
    | Go Page
