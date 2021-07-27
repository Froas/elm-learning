module View exposing (..)


import Types exposing (..)
import Init exposing (..)
import Html exposing (Html, button, div, text, input)
import Html.Events exposing (onClick)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import MarginalSquare
import LoL.LegendSelect
import LoL.LegendPage


view : Model -> Html Event
view model =
    case model.page of
        Main ->
            div []  

                [ button [ onClick Decrement ] [ text "-" ]
                , div [] [ text <| String.fromInt model.countedValue ]
                , button [ onClick Increment ] [ text "+" ]
                , button [ onClick Reset ] [ text "reset"]
                , button [ onClick <|  Set 15 ] [ text "set to 15" ]
                , input [ placeholder "Write a number", onInput InputHandler ] []
                , button [ onClick UpdateCounter ] [ text "press" ]
                , button [ onClick <| SetPageID LoL ] [ text "LoL" ]
                , button [ onClick <| SetPageID Marginal ] [ text "Marginal" ]
                ]

        Marginal ->
            div [] 

                [ button [ onClick IncreaseMarginal ] [ text "increase marginal" ]
                , button [ onClick <| SetPageID Main ] [ text "Main" ]
                , button [ onClick <| SetPageID LoL ] [ text "LoL" ]
                , MarginalSquare.mkMarginals model
                ]

        LoL ->
            div []

                [ button [ onClick <| SetPageID Main ] [ text "Main" ]
                , button [ onClick <| SetPageID Marginal ] [ text "Marginal" ]
                , LoL.LegendSelect.view model
                ]

        LegendPage legend ->
            div [] [ LoL.LegendPage.view model legend ]


