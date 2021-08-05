module Header exposing (..)


import Types exposing (Event)
import Html.Attributes exposing (href, class)
import Html exposing (Html, button, text, a, header)

view :  Html Event
view  =
      header 

            [ class "header"]

            [ a [ href "http://localhost:8000/lol" ] [ button [] [ text "LoL" ] ]
            , a [ href "http://localhost:8000/marginal" ] [ button [] [ text "Marginal" ] ]
            , a [ href "http://localhost:8000/main" ] [ button [] [ text "Main"] ]
            ]
