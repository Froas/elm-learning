module LoL.LegendPage exposing (..)


import Html exposing (..)
import Types exposing (..)
import Html.Attributes exposing (..)
import LoL.Types exposing (..)
import Html.Events exposing (onClick)
import LoL.LoLUpdate exposing (mkDescription, mkAbilityVideo)






mkLegendPage : Model -> Html Event
mkLegendPage model  =
    div 
        [ class "main-container" ] 
        
        [ div 
            [ class "first-container"] 

            [ img [ class "legend-img", src model.currLegend.photo ] []
            , div 
                [ class "name" ] 

                [ p [ style "margin-bottom" "30%" ] [ text model.currLegend.firstName ]
                , p [] [ text model.currLegend.lastName ]
                ]

            , p [ class "fraction" ] [ text model.currLegend.fraction ]
            , p [ class "scrollable-textbox"] [ text model.currLegend.bio ]
            ]

        , div 
            [ class "second-container"]
            
            
            [ div 
                [ class "skill-menu" ]

                [ div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.spotlight ] [ text "Spotlight" ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.p ] [ text model.currLegend.abilities.p.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.q ] [ text model.currLegend.abilities.q.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.w ] [ text model.currLegend.abilities.w.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.e ] [ text model.currLegend.abilities.e.name ]
                , div [ class "skill-menu-item", onClick <| ShowAbilityDesc model.currLegend.abilities.r ] [ text model.currLegend.abilities.r.name ]                 
                ]

            , mkDescription model

            , mkAbilityVideo model

            ]

        ]

view : Model-> Html Event
view model = div [] [ mkLegendPage model ]

