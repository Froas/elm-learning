module Update exposing (..)


import Maybe exposing (withDefault)
import Types exposing (..)
import LoL.Types exposing (..)
import Html exposing (legend)
import Browser
import Browser.Navigation as Nav
import Url

update : Event -> Model -> ( Model, Cmd Event)
update event model =
    case event of
        Increment ->
            ({ model | countedValue = model.countedValue + 1 }, Cmd.none)

        Decrement ->
            ({ model | countedValue = model.countedValue - 1 }, Cmd.none)

        Reset -> 
            ({ model | countedValue = 0 }, Cmd.none)

        Set countedValue ->
            ({ model | countedValue = countedValue }, Cmd.none)

        InputHandler inputValue->
            ({ model | inputValue = inputValue }, Cmd.none)
        
        UpdateCounter ->
            ({ model | countedValue = withDefault model.countedValue <| String.toInt model.inputValue }, Cmd.none)
        
        IncreaseMarginal ->
            ({ model |  repeatValue = if model.repeatValue < 10 then 2 + model.repeatValue else 10 }, Cmd.none)

        Select legend -> 
            ({ model | currLegend = legend }, Cmd.none)

        SetPageID pageID -> 
            ({ model | page = pageID }, Cmd.none)

        ShowAbilityDesc x ->
            ({ model | currAbility = x }, Cmd.none)

        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                  ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url }
            , Cmd.none
            )


