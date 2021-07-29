module Types exposing (..)


import LoL.Types exposing (..)
import Browser exposing (..)
import Browser.Navigation as Nav
import Url exposing (..)

type Event 
    = Increment 
    | Decrement 
    | Reset
    | Set Int
    | UpdateCounter
    | InputHandler String
    | IncreaseMarginal
    | Select Legend
    | SetPageID PageID
    | ShowAbilityDesc Ability
    | LinkClicked Browser.UrlRequest
    | UrlChanged  Url
    
type alias Model = 
    { countedValue : Int
    , inputValue : String
    , repeatValue : Int
    , page : PageID
    , legends : List Legend
    , currAbility : Ability
    , currLegend : Legend
    , key : Nav.Key
    , url : Url
    }

type PageID 
    = Main 
    | Marginal 
    | LoL
    | LegendPage Legend

