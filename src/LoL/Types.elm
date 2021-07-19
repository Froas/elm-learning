module LoL.Types exposing (..)



type UseType 
    = Target
    | AoE
    | Skillshot

type alias Ability = 
    { cooldown : Float
    , damage : Float
    , range : Int 
    , useType : UseType
    }

type alias Abilities =
    { q : Ability
    , w : Ability
    , e : Ability
    , r : Ability
    , p : Ability
    }

type alias Legend =
    { firstName : String
    , lastName : String
    , fraction : String
    , bio : String
    , photo : String
    , abilities : Abilities
    , video : String
    }


