module LoL.LoLUpdate exposing(..)


import Json.Encode
import LoL.Types exposing (..)
import Types exposing(Model,Event)
import Debug exposing (toString)
import Html exposing (Html, div, p, text, iframe)
import Html.Attributes exposing (class, src, property)

mkDescription : Model -> Html Event
mkDescription model = 
    div 
        [ class "description" ]
        
        [ p [ ] 
            [ text <| "Abilities: " ++ model.currAbility.name ++ 
                (if model.currAbility.useType == AoE 
                then " Effect Radius "
                else " Target range " 
                ) 
                    ++ toString model.currAbility.range 
                    ++ " Cast time: " ++ model.currAbility.castTime 
                    ++ " Cooldown " ++ toString model.currAbility.cooldown 
            ]

        , p [ ] [ text " " ]
        ]

mkAbilityVideo : Model ->  Html Event
mkAbilityVideo model = 
    iframe 
        [ src model.currAbility.video
        , property "frameborder" (Json.Encode.string "0")
        , property "allowfullscreen" (Json.Encode.string "true")
        , class "spotlight-video"
        ] 

        []