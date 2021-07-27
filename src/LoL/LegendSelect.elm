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
        [ text legend.firstName ] 
    
        
view : Model -> Html Event
view model = 
    div 
        [ style "display" "flex"
        , style "flex-direction" "row"
        , style "width" "1000px"
        , style "height" "1000px"
        ] 
        <| List.map mkLegend model.legends



-- 4 Добавить уникальную страницу каждому герою:
--                                           4.1 Имя
--                                           4.2 Фамилия (может отсутствовать)
--                                           4.3 Фракция принадлежность
--                                           4.4 Био
--                                           4.5 ФОТО мамки
--                                           4.6 Способности и их описание
--                                           4.7 Вставленое видео -- ссылка на spotlight чампиона 
-- 5.0 Работать адаптивно :/ хуй пизда сковорода 
