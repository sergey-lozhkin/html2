module TeamActors where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopTeam

  [ ("board & staff", "TeamStaff.html",  False),
    ("actors",        "TeamActors.html", True),
    ("mission",       "Mission.html",    False) ]

  <| \config ->
  let
    u = config.thumbWidth2
    u2 = 2*u
    s2 = 2*config.step
    blank1x2 = spacer u2 u
    blank2x2 = spacer u2 u2

    fittage url avatar      = link url <| fittedImage u2 u2 ("assets/"++avatar)
    maskAlexLiznenkov       = fittage "ActorAlexLiznenkov.html" "actor-alex-liznenkov-mask.png"
    maskAlexLitovchenko     = fittage "ActorAlexLitovchenko.html" "actor-alex-litovchenko-mask.png"
    maskArtemMishin         = fittage "ActorArtemMishin.html" "actor-artem-mishin-mask.png"
    maskNataliaMandrychenko = fittage "ActorNataliaMandrychenko.html" "actor-natalia-mandrychenko-mask.png"
    maskIrinaBrodskaya      = fittage "ActorIrinaBrodskaya.html" "female-1.png"
    maskDmitryKoltsov       = fittage "ActorDmitryKoltsov.html" "male-1.png"

    textAvatar              = layers [
      color actorListBackColor <| blank2x2
    -- , pad s2 <| width (u2 - 2*s2) <| leftAligned <| actorListNormalText "наш ПРЕКРАСНЫЙ, наш ВОЛШЕБНЫЙ, расчудесный КОЛЛЕКТИВ! тра-ЛЯ-ля!"
    ]
  in
    flow right [
      flow down [
        maskAlexLiznenkov
      , blank1x2
      , maskIrinaBrodskaya
      ],
      flow down [
        blank1x2
      , maskAlexLitovchenko
      -- , color actorListColor2 <| blank2x2
      , maskDmitryKoltsov
      ],
      flow down [
        maskNataliaMandrychenko
      , maskArtemMishin
      , blank1x2
      ],
      flow down [
        textAvatar
      , blank1x2
      , blank2x2
      ]]
