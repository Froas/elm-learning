module Route exposing (..)


import Types exposing (..)
import Url.Parser as Parser exposing (..)
import Types exposing(..)

type Route 
    = Home
    | Marginal
    | LoL
    | LegendPage String

routeParser : Parser (Route -> a) a
routeParser =
  oneOf
    [ map Home Parser.top
    , map Marginal    (s "Marginal")
    , map LoL    (s "LoL" )
    , map LegendPage (s "LegendPage" </> string)
    ]
    