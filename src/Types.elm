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
    | Select 
    | SetPageID PageID
    
type alias Model = 
    { countedValue : Int
    , inputValue : String
    , repeatValue : Int
    , page : PageID
    , legends : List Legend
    }

type PageID 
    = Main 
    | Marginal 
    | LoL
    | LegendPage Legend
    