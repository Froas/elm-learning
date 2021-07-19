module Init exposing (..)


import Types exposing (..)
import Html.Attributes exposing (target)
import LoL.Types exposing (..)

init : Model 
init = 
    { countedValue = 0
    , inputValue = ""
    , repeatValue = 1
    , page = Main
    , legends = 
        [{firstName = "Katarina", lastName = "Du Couteau"
        , fraction = " ", bio = ""
        , photo = "" , abilities = 
                        { q = { cooldown = 1, damage = 2, range = 3, useType = Target }
                        , w = { cooldown = 1, damage = 2, range = 3, useType = Target }
                        , e = { cooldown = 1, damage = 2, range = 3, useType = AoE }
                        , r = { cooldown = 1, damage = 2, range = 3, useType = Target }
                        , p=  { cooldown = 1, damage = 2, range = 3, useType = AoE }
                        }
        , video = "" }
        --, { firstName = "Kindred", lastName = "K" } 
        --, { firstName = "Katarina", lastName = "Du Couteau" } 
        ] 
    }

