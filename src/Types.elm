module Types exposing (..)


import LoL.Types exposing (..)

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
    
type alias Model = 
    { countedValue : Int
    , inputValue : String
    , repeatValue : Int
    , page : PageID
    , legends : List Legend
    , currAbility : Ability
    , currLegend : Legend
    }

type PageID 
    = Main 
    | Marginal 
    | LoL
    | LegendPage Legend
    