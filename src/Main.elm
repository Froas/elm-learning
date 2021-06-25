module Main exposing(..)

import Browser
import Html exposing (Html, button, div, text, input)
import Html.Events exposing (onClick)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)
import Maybe exposing (withDefault)
import Set exposing (Set)
import Dict exposing (update)

main : Program () Model Event
main =
    Browser.sandbox { init = init, update = update, view = view }

type Event 
    = Increment 
    | Decrement 
    | Reset
    | Set Int
    | UpdateCounter
    | InputHandler String

type alias Model = 
    { countedValue : Int
    , inputValue : String
    }

init : Model 
init = 
    { countedValue = 0
    , inputValue = ""
    }

update : Event -> Model -> Model
update event model =
    case event of
        Increment ->
            {model | countedValue = model.countedValue + 1}

        Decrement ->
            {model | countedValue = model.countedValue - 1}

        Reset -> 
            {model | countedValue = 0}

        Set countedValue ->
            {model | countedValue = countedValue}

        InputHandler inputValue->
            {model | inputValue = inputValue}
        
        UpdateCounter ->
            {model | countedValue = withDefault model.countedValue (String.toInt model.inputValue)}

view : Model -> Html Event
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model.countedValue) ]
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Reset ] [ text "reset"]
        , button [ onClick (Set 15) ] [ text "set to 15" ]
        , input [ placeholder "Write a number", onInput InputHandler] []
        , button [ onClick UpdateCounter] [ text "press"]
        
        ]



add : Int -> Int -> Int 
add x y = x + y