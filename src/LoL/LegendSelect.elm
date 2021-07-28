module LoL.LegendSelect exposing (..)


import Html exposing (..) 
import Html.Attributes exposing (..)
import Types exposing (..)
import LoL.Types exposing (Legend)
import Html.Events exposing (onClick)



mkLegend : Legend -> Html Event
mkLegend legend =
    div 
        [ style "background-color" "seagreen"
        , style "height" "100px"
        , style "width" "100px"
        , style "margin" "10px"
        , style "color" "white"
        , style "font-size" "10px"
        , style "display" "flex"
        , style "align-items" "center"
        , style "justify-content" "center"
        , onClick <| Select legend 
        ]
        [ text <| String.join " " [ legend.firstName, legend.lastName ] ] 
    
        
view : Model -> Html Event
view model = 
    div 
        [ style "display" "flex"
        , style "flex-direction" "row"
        , style "width" "1000px"
        , style "height" "1000px"
        ] 
        <| List.map mkLegend model.legends



-- 1. Убрать все кнопки роутинга с сайта
-- 2. Создать header:
--                  2.1 Header должен быть на каждой странице сверху 
--                  2.2 Добавить кнопки роутинга 
-- 3. Заменить свой роутер на роутер Elm (задание на типы)
-- 4. Глобавльный рефакторинг кода 
-- 5. Создание бэкенда на nodejs/ts
-- 6. Изучить promise
-- P.S. в свободное время изучать/делать разные компоненты - посмотреть material UI 