module MarginalSquare exposing (..)

import Types exposing (Model, Event)
import Html exposing (Html, div, text)
import Debug exposing (toString)
import Html.Attributes exposing (class)

view : Int -> Html Event
view margoId = div [ class "margo"] [ text <| toString margoId ]

mkMarginals : Model -> Html Event
mkMarginals model = div [] <| List.map (\x -> view x) <| List.range 1 model.repeatValue 
