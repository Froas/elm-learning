module LoL.LegendPage exposing (..)


import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import LoL.Types exposing (..)


mkLegendPage : Legend ->  Html Event
mkLegendPage legend  =
    div 
        [ style "weight" "300"
        , style "height" "400"
        ] 

        [ text legend.firstName ]


view : Legend -> Html Event
view legend = div [] [ mkLegendPage legend ]

