module LoL.LegendSelect exposing (..)


import LoL.LegendPage
import Types exposing (..)
import Html exposing (div,a, Html, text) 
import Html.Attributes exposing (class, href)
import LoL.Types exposing (Legend)
import Html.Events exposing (onClick)

view : Model -> Html Event
view model = div [ class "legendSelect"] <| List.map mkLegend model.legends

mkLegend : Legend -> Html Event
mkLegend legend =
    a   
        [ href <| "http://localhost:8000/lol/legend/" ++ String.toLower legend.firstName  ]
        [ div 
            [ class "legend"
            , onClick <| Select legend 
            ]
            [ text <| String.join " " [ legend.firstName, legend.lastName ] ]
        ]
          
mkLegendView : Model -> String -> Html Event
mkLegendView model path = 
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



-- 1. Убрать все кнопки роутинга с сайта
-- 2. Создать header:
--                  2.1 Header должен быть на каждой странице сверху 
--                  2.2 Добавить кнопки роутинга 
-- 3. Заменить свой роутер на роутер Elm (задание на типы)
-- 4. Глобавльный рефакторинг кода 
-- 5. Создание бэкенда на nodejs/ts
-- 6. Изучить promise
-- P.S. в свободное время изучать/делать разные компоненты - посмотреть material UI 