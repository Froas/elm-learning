module Route exposing (..)


import Types exposing (PageID(..))
import LoL.Types exposing (Legend)
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
    [ Parser.map Home Parser.top
    , Parser.map Marginal    (s "Marginal")
    , Parser.map LoL    (s "LoL" )
    , Parser.map LegendPage (s "LegendPage" </> string)
    ]
    