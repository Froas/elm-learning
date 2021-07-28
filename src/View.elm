module View exposing (..)


import Types exposing (..)
import Init exposing (..)
import Html exposing (Html, button, div, text, input)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import MarginalSquare
import LoL.LegendSelect
import LoL.LegendPage
import Html exposing (header)



view : Model -> Html Event
view model =
    div [] 
        [
        header [] 
            [ button [ onClick <| SetPageID LoL ] [ text "LoL" ]
            , button [ onClick <| SetPageID Marginal ] [ text "Marginal" ]
            , button [ onClick <| SetPageID Main ] [ text "Main" ]
            ]
        , case model.page of
            Main ->
                div [ style "display" "flex" 
                    , style "flex" "row"
                    , style "height" "5%"
                    ]  

                    [ button [ onClick Decrement ] [ text "-" ]
                    , div [] [ text <| String.fromInt model.countedValue ]
                    , button [ onClick Increment ] [ text "+" ]
                    , button [ onClick Reset ] [ text "reset"]
                    , button [ onClick <|  Set 15 ] [ text "set to 15" ]
                    , input [ placeholder "Write a number", onInput InputHandler ] []
                    , button [ onClick UpdateCounter ] [ text "press" ]

                    ]

            Marginal ->
                div [] 

                    [ button [ onClick IncreaseMarginal ] [ text "increase marginal" ]
                    , MarginalSquare.mkMarginals model
                    ]

            LoL ->
                div [] [ LoL.LegendSelect.view model ]

            LegendPage legend ->
                div [] [ LoL.LegendPage.view model legend ]


        ]


        