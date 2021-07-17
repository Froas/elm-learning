module Update exposing (..)


import Maybe exposing (withDefault)
import Types exposing (..)

update : Event -> Model -> Model
update event model =
    case event of
        Increment ->
            { model | countedValue = model.countedValue + 1 }

        Decrement ->
            { model | countedValue = model.countedValue - 1 }

        Reset -> 
            { model | countedValue = 0 }

        Set countedValue ->
            { model | countedValue = countedValue }

        InputHandler inputValue->
            { model | inputValue = inputValue }
        
        UpdateCounter ->
            { model | countedValue = withDefault model.countedValue <| String.toInt model.inputValue }
        
        IncreaseMarginal ->
            { model |  repeatValue = if model.repeatValue < 10 then 2 + model.repeatValue else 10 }

        Select -> model

        SetPageID pageID -> 
            { model | page = pageID }


