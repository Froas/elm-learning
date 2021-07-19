module Init exposing (..)


import Types exposing (..)

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
                        { q = { cooldown = 1, damade = 2, range = 3, useType = { target } }
                        , w = { cooldown = 1, damade = 2, range = 3, useType = { target  } }
                        , e = { cooldown = 1, damade = 2, range = 3, useType = { target  } }
                        , r = { cooldown = 1, damade = 2, range = 3, useType = { target  } }
                        , p=  {cooldown = 1, damade = 2, range = 3, useType = { target  } }
                        }
        , video = "" }
        --, { firstName = "Kindred", lastName = "K" } 
        --, { firstName = "Katarina", lastName = "Du Couteau" } 
        ] 
    }

