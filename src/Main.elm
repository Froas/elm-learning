module Main exposing (..)


import Browser
import Types exposing (..)
import Update exposing (update)
import Init exposing (init, subscriptions)
import View exposing (view)

main : Program () Model Event
main =
    Browser.application 
        { init = init
        , update = update
        , view = view 
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }
