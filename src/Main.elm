module Main exposing (..)


import Browser
import Types exposing (..)
import Update exposing (update)
import Init exposing (init)
import View exposing (view)

main : Program () Model Event
main =
    Browser.sandbox { init = init, update = update, view = view }
