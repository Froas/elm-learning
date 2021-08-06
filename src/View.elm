module View exposing (..)


import Browser
import Header 
import Counting
import MarginalSquare
import LoL.LegendSelect
import Types exposing (..)



view : Model -> Browser.Document Event
view model =
    { title = "My project"
    , body = 
        [ Header.view

        , case model.url.path of
            "/main" ->
               Counting.view model
            "/marginal" ->
                MarginalSquare.view model
            "/lol" ->
                LoL.LegendSelect.view model
            path ->  
                LoL.LegendSelect.mkLegendView model path
        ]
    }


    
    
    
    
    
    
    
    
    
    
    -- List.all (\a -> a == xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )
    --  0 > ( List.length <| List.filter (\x -> String.toLower x.firstName == String.dropLeft 12 xs ) model.legends )
    -- List.member (String.left 12 xs)  <| List.map (\x -> String.toLower x.firstName ) model.legends
    -- LoL.LegendSelect.view model,  if List.all (\a -> a == xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )
    -- List.concat <| List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" + x.firstName ) model.legends
    -- onClick <| UrlChanged <| withDefault model.url <| Url.fromString <| "http://localhost:8000" ++ xs
    -- List.all (\a -> String.endsWith  a  xs ) ( List.filter(\n -> xs ==  n ) <| List.map (\x -> "/lol/legend/" ++ x.firstName ) model.legends )