module Init exposing (..)


import Url exposing (..)
import Types exposing (..)
import LoL.Types exposing (..)
import LoL.Legends exposing (..)
import Browser.Navigation as Nav



init : () -> Url -> Nav.Key -> ( Model, Cmd Event )
init flags url key = 
    ({countedValue = 0
    , inputValue = ""
    , repeatValue = 1
    , legends = 
        [ katarina, kindred, yuumi ] 
    , currLegend = katarina
    , currAbility = katarina.abilities.spotlight
    , key = key
    , url = url
    }
    , Cmd.none
    )

subscriptions : Model -> Sub Event
subscriptions _ =
  Sub.none

