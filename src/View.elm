module View exposing (..)


import Types exposing (..)
import Init exposing (..)
import Html exposing (button, div, text, input, a)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import MarginalSquare
import LoL.LegendSelect
import Html exposing (header)
import Browser
import LoL.LegendPage

import Html exposing (legend)








view : Model -> Browser.Document Event
view model =
    { title = "My project"
    , body = 
        [ header 

            [ class "header"]

            [ a [ href "http://localhost:8000/lol" ]
                [ button [ onClick <| SetPageID LoL ] [ text "LoL" ] ]
            , a [ href "http://localhost:8000/marginal" ]
                [ button [ onClick <| SetPageID Marginal ] [ text "Marginal" ] ]
            , a [ href "http://localhost:8000/main" ] 
                [ button [] [ text "Main"] ]
            ]

            , case model.url.path of
                "/main" ->
                    div [ style "display" "flex" 
                        , style "flex" "row"
                        , style "height" "5%" 
                        ]  

                        [ button [ onClick Decrement ] [ text "-" ]
                        , div [] [ text <| String.fromInt model.countedValue ]
                        , button [ onClick Increment ] [ text "+" ]
                        , button [ onClick Reset ] [ text "reset"]
                        , button [ onClick <|  Set 15 ] [ text "set to 15" ]
                        , input [ placeholder "Write a number", onInput InputHandler ] []
                        , button [ onClick UpdateCounter ] [ text "press" ]

                        ]

                "/marginal" ->
                    div [] 

                        [ button [ onClick IncreaseMarginal ] [ text "increase marginal" ]
                        , MarginalSquare.mkMarginals model
                        ]

                "/lol" ->
                    div [] [ LoL.LegendSelect.view model ]

                path ->  
                    let 
                        initPath = String.left 12 path
                        legendName = String.dropLeft 12 path 
                        legendNameCapitalized = String.toUpper (String.left 1 legendName)  ++  String.dropLeft 1 legendName
                        filteredLegends = List.filter (\legend -> legendNameCapitalized == legend.firstName) model.legends 

                    in
                        if initPath == "/lol/legend/"

                        then    
                            case filteredLegends of 
                                [legend] -> LoL.LegendPage.view model legend 

                                _        -> div [] []
                        else text "404"
            ]
    }

    
    
    
    
    
    
    
    
    
    
    -- List.all (\a -> a == xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )
    --  0 > ( List.length <| List.filter (\x -> String.toLower x.firstName == String.dropLeft 12 xs ) model.legends )
    -- List.member (String.left 12 xs)  <| List.map (\x -> String.toLower x.firstName ) model.legends
    -- LoL.LegendSelect.view model,  if List.all (\a -> a == xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )
    -- List.concat <| List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" + x.firstName ) model.legends
    -- onClick <| UrlChanged <| withDefault model.url <| Url.fromString <| "http://localhost:8000" ++ xs
    -- List.all (\a -> String.endsWith  a  xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )