module MarginalSquare exposing (..)

import Types exposing (..)
import Html exposing (Html, div, text, button)
import Debug exposing (toString)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

mkMarginals : Int -> Html Event
mkMarginals margoId = div [ class "margo"] [ text <| toString margoId ]


view : Model -> Html Event
view model = 
    div []

        [ button [ onClick IncreaseMarginal ] [ text "increase marginal" ] 
        , div [] <| List.map (\x -> mkMarginals x) <| List.range 1 model.repeatValue 
        ]
