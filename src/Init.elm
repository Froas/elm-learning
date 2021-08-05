module Init exposing (..)


import Url exposing (..)
import Types exposing (..)
import LoL.Types exposing (..)
import Browser.Navigation as Nav

init : () -> Url -> Nav.Key -> ( Model, Cmd Event )
init flags url key = 
    (
    { countedValue = 0
    , inputValue = ""
    , repeatValue = 1
    , legends = 
        [ katarina, kindred, yuumi ] 
    , currLegend = katarina
    , currAbility = katarina.abilities.spotlight
    , key = key
    , url = url
    }
    , Cmd.none
    )

katarina : Legend
katarina = 
    { firstName = "Katarina"
    , lastName = "Du Couteau"
    , fraction = "Noxus"
    , bio = "Born to one of the most respected noble families of Noxus, Katarina Du Couteau found herself elevated above others from an early age. While her younger sister Cassiopeia took after their politically brilliant mother, Katarina was very much her father’s daughter, and the wily General Du Couteau pushed her to learn the way of the blade; to cut away the empire’s enemies not with reckless brutality, but deadly precision. He was a harsh teacher with many pupils, and notoriously difficult to impress. So it was that Katarina’s childhood—if it can be called such—had little room for kindness or rest. She spent every waking moment honing herself into the ultimate weapon, testing her endurance, her dexterity, her tolerance for pain. She stole poisons from the city’s least reputable apothecaries, testing their efficacy in tiny increments upon herself, gradually building her resistance even as she catalogued their effects. She scaled the tallest towers in the dead of night, unseen by anyone."
    , photo = "https://cdnportal.mobalytics.gg/production/2021/03/7027b46a-d8jhqfo-aed71994-3e18-46f8-984c-b68c1e356ce7.jpg" 
    , abilities = 
        { p = { cooldown = 15, damage = 68, range = 340, useType = Target, name = "Voracity", castTime = "None ", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0055/ability_0055_P1.webm" }
        , q = { cooldown = 11, damage = 75, range = 625, useType = Target, name = "Bouncing Blade", castTime = "0.25", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0055/ability_0055_Q1.webm" }
        , w = { cooldown = 15, damage = 50, range = 250, useType = AoE, name = "Preparation", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0055/ability_0055_W1.webm" }
        , e = { cooldown = 14, damage = 15, range = 725, useType = Target, name = "Shunpo", castTime = "0.035", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0055/ability_0055_E1.webm" }
        , r = { cooldown = 90, damage = 375, range = 550, useType = AoE, name = "Death Lotus", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0055/ability_0055_R1.webm" }
        , spotlight = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Lamb's Respite", castTime = "None", video = "https://www.youtube.com/embed/soCg5RbgYIA" }
 
        }
    }

kindred : Legend
kindred = 
    { firstName = "Kindred"
    , lastName = " "
    , fraction = "Noxus"
    , bio = "Separate, but never parted, Kindred represents the twin essences of death. Lamb’s bow offers a swift release from the mortal realm for those who accept their fate. Wolf hunts down those who run from their end, delivering violent finality within his crushing jaws. Though interpretations of Kindred’s nature vary across Runeterra, every mortal must choose the true face of their death. Kindred is the white embrace of nothingness and the gnashing of teeth in the dark. Shepherd and the butcher, poet and the primitive, they are one and both. When caught on the edge of life, louder than any trumpeting horn, it is the hammering pulse at one’s throat that calls Kindred to their hunt. Stand and greet Lamb’s silvered bow and her arrows will lay you down swiftly. If you refuse her, Wolf will join you for his merry hunt, where every chase runs to its brutal end. "
    , photo = "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Kindred_0.jpg" 
    , abilities = 
        { p = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Mark of the Kindred", castTime = "None ", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_P1.webm" }
        , q = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Dance of Arrows", castTime = "0.25", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_Q1.webm" }
        , w = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Wolf's Frenzy", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_W1.webm" }
        , e = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Mounting Dread", castTime = "0.035", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_E1.webm" }
        , r = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Lamb's Respite", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_R1.webm" }
        , spotlight = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Lamb's Respite", castTime = "None", video = "https://www.youtube.com/embed/h0Pwn7G-eLE" }
 
        }
    }

yuumi : Legend
yuumi = 
    { firstName = "Yuumi"
    , lastName = " "
    , fraction = "Noxus"
    , bio = "Separate, but never parted, Kindred represents the twin essences of death. Lamb’s bow offers a swift release from the mortal realm for those who accept their fate. Wolf hunts down those who run from their end, delivering violent finality within his crushing jaws. Though interpretations of Kindred’s nature vary across Runeterra, every mortal must choose the true face of their death. Kindred is the white embrace of nothingness and the gnashing of teeth in the dark. Shepherd and the butcher, poet and the primitive, they are one and both. When caught on the edge of life, louder than any trumpeting horn, it is the hammering pulse at one’s throat that calls Kindred to their hunt. Stand and greet Lamb’s silvered bow and her arrows will lay you down swiftly. If you refuse her, Wolf will join you for his merry hunt, where every chase runs to its brutal end. "
    , photo = "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Kindred_0.jpg" 
    , abilities = 
        { p = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Mark of the Kindred", castTime = "None ", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_P1.webm" }
        , q = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Dance of Arrows", castTime = "0.25", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_Q1.webm" }
        , w = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Wolf's Frenzy", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_W1.webm" }
        , e = { cooldown = 1, damage = 1, range = 1, useType = Target, name = "Mounting Dread", castTime = "0.035", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_E1.webm" }
        , r = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Lamb's Respite", castTime = "None", video = "https://d28xe8vt774jo5.cloudfront.net/champion-abilities/0203/ability_0203_R1.webm" }
        , spotlight = { cooldown = 1, damage = 1, range = 1, useType = AoE, name = "Lamb's Respite", castTime = "None", video = "https://www.youtube.com/embed/h0Pwn7G-eLE" }
 
        }
    }

subscriptions : Model -> Sub Event
subscriptions _ =
  Sub.none