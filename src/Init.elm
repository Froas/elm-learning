module Init exposing (..)


import Types exposing (..)

init : Model 
init = 
    { countedValue = 0
    , inputValue = ""
    , repeatValue = 1
    , page = Main
    , legends = 
    [   { firstName = "Amumu"
        , lastName = "A"
        }
    ,   { firstName = "Kindred"
        , lastName = "K" 
        } 
    ,   { firstName = "Katarina"
        , lastName = "Du Couteau" 
        } 
    ] 
    }

