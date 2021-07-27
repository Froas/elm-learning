module LoL.LoLUpdate exposing(..)


import LoL.Types exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Types exposing(..)
import Debug exposing (toString)
import Json.Encode 

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