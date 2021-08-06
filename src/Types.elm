module Types exposing (..)


import Browser 
import Browser.Navigation as Nav
import Url exposing (..)
import LoL.Types exposing (Legend,Ability)


type Event 
    = Increment 
    | Decrement 
    | Reset
    | Set Int
    | UpdateCounter
    | InputHandler String
    | IncreaseMarginal
    | Select Legend
    | ShowAbilityDesc Ability
    | LinkClicked Browser.UrlRequest
    | UrlChanged  Url
    
type alias Model = 
    { countedValue : Int
    , inputValue : String
    , repeatValue : Int
    , legends : List Legend
    , currAbility : Ability
    , currLegend : Legend
    , key : Nav.Key
    , url : Url
    }


