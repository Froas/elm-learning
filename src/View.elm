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
import Url
import Maybe exposing (withDefault)







view : Model -> Browser.Document Event
view model =
    { title = "URL Interceptor"
    , body =
        [ div 
            [] 
            [ header 
                [] 

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
                        , href "/main" 
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

                xs -> 
                    if xs == "/lol/legend/" ++  ( String.concat <| List.filter(\n -> String.endsWith n xs ) 
                                            <| List.map (\x -> String.toLower x.firstName ) model.legends )
                        then div [] [ LoL.LegendPage.view model ]
                        else div [] [ text "legend has not founded" ]            

                    
                -- _ ->
                --     div [] [ text "404" ]
            ]
        ]
    }

    -- 
    -- List.concat <| List.filter(\n -> xs == "/lol/legend/"  ++ n ) <| List.map (\x -> x.firstName ) model.legends
    -- onClick <| UrlChanged <| withDefault model.url <| Url.fromString <| "http://localhost:8000" ++ xs