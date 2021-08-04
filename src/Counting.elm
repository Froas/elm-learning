module Counting exposing (..)


import Types exposing (..)
import Html exposing (Html,div, text, button, input)
import Html.Attributes exposing (style, placeholder)
import Html.Events exposing (onClick, onInput)

view : Model -> Html Event
view model =
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

