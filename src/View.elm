module View exposing (..)


import Browser
import Counting
import MarginalSquare
import LoL.LegendPage
import LoL.LegendSelect
import Types exposing (..)
import Init exposing (..)
import Html exposing (button, div, text, a, header, legend)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, href)

view : Model -> Browser.Document Event
view model =
    { title = "My project"
    , body = 
        [ header 

            [ class "header"]

            [ a [ href "http://localhost:8000/lol" ] [ button [] [ text "LoL" ] ]
            , a [ href "http://localhost:8000/marginal" ] [ button [] [ text "Marginal" ] ]
            , a [ href "http://localhost:8000/main" ] [ button [] [ text "Main"] ]
            ]

            , case model.url.path of
                "/main" ->
                   Counting.view model

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