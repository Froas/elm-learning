module LoL.LegendPage exposing (..)


import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import LoL.Types exposing (..)
import Html.Events exposing (onClick)
import LoL.LoLUpdate exposing (mkDescription, mkAbilityVideo)



view : Model -> Legend -> Html Event
view model legend  =
    let
        legendAbility = legend.abilities
    in
    
    div 
        [ class "main-container" ] 
        
        [ div 
            [ class "first-container"] 

            [ img [ class "legend-img", src legend.photo ] []
            , div 
                [ class "name" ] 

                [ p [ style "margin-bottom" "30%" ] [ text legend.firstName ]
                , p [] [ text legend.lastName ]
                ]

            , p [ class "fraction" ] [ text legend.fraction ]
            , p [ class "scrollable-textbox"] [ text legend.bio ]
            ]

        , div 
            [ class "second-container"]
            
            
            [ div 
                [ class "skill-menu" ]

                [ div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.spotlight ] [ text "Spotlight" ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.p ] [ text legendAbility.p.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.q ] [ text legendAbility.q.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.w ] [ text legendAbility.w.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.e ] [ text legendAbility.e.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legendAbility.r ] [ text legendAbility.r.name ]   
                -- , div [] <| List.map(\x -> legend.abilities.x ) legend.abilities            
                ]

            , mkDescription model
            , mkAbilityVideo model
            ]
        ]


