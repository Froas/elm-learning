module LoL.Types exposing (..)




type UseType 
    = Target
    | AoE
    | Skillshot

type alias Ability = 
    { cooldown : Float
    , damage : Float
    , range : Float
    , castTime : String
    , useType : UseType
    , video : String
    , name : String
    }

type alias Abilities =
    { p : Ability
    , q : Ability
    , w : Ability
    , e : Ability
    , r : Ability
    , spotlight : String
    }


type alias Legend =
    { firstName : String
    , lastName : String
    , fraction : String
    , bio : String
    , photo : String
    , abilities : Abilities
    }


