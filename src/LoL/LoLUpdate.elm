module LoL.LoLUpdate exposing(..)


import Json.Encode
import LoL.Types exposing (..)
import Types exposing(..)
import Debug exposing (toString)
import Html exposing (Html, div, p, text, iframe)
import Html.Attributes exposing (class, src, property)

mkDescription: Model -> Html Event
mkDescription model = 
    let
        ability = model.currAbility
    in
    
    div 
        [ class "description" ]
        
        [ p [ ] 
            [ text <| "Abilities: " ++ ability.name ++ 
                (if ability.useType == AoE 
                    then " Effect Radius "
                    else " Target range " 
                ) 
                    ++ toString ability.range 
                    ++ " Cast time: " ++ ability.castTime 
                    ++ " Cooldown " ++ toString ability.cooldown 
            ]

        , p [ ] [ text " " ]
        ]

mkAbilityVideo : Model->  Html Event
mkAbilityVideo model = 
    iframe 
        [ src model.currAbility.video
        , property "frameborder" (Json.Encode.string "0")
        , property "allowfullscreen" (Json.Encode.string "true")
        , class "spotlight-video"
        ] 

        []