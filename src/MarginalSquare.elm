module MarginalSquare exposing (..)


import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Debug exposing (toString)
import Types exposing (..)

view : Int -> Html Event
view margoId =
    div [ style "background-color" "black"
        , style "height" "100px"
        , style "width" "100px"
        , style "margin" "10px"
        , style "color" "white"
        , style "font-size" "40px"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        ]

        [ text <| toString margoId ]

mkMarginals : Model -> Html Event
mkMarginals model = div [] <| List.map (\x -> view x) <| List.range 1 model.repeatValue 