module LoL.LegendPage exposing (..)


import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import LoL.Types exposing (..)
import Html.Events exposing (onClick)
import LoL.LoLUpdate exposing (mkDescription, mkAbilityVideo)


view : Model -> Legend -> Html Event
view model legend  =
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

                [ div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.spotlight ] [ text "Spotlight" ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.p ] [ text legend.abilities.p.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.q ] [ text legend.abilities.q.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.w ] [ text legend.abilities.w.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.e ] [ text legend.abilities.e.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc legend.abilities.r ] [ text legend.abilities.r.name ]                 
                ]

            , mkDescription model

            , mkAbilityVideo model

            ]

        ]


