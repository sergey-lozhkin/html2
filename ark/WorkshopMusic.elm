module WorkshopMusic where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", False)
  , ("music",              "WorkshopMusic.html",           True)
  , ("decorations",        "WorkshopDecorations.html",     False)
  , ("general info",       "WorkshopGeneral.html",         False)
  ]

  <| \config ->
  let
    p1w = config.thumbWidth
    p1h = config.thumbWidth
    d1w = config.contentWidth - p1w - 3*u2 - config.thumbWidth
    d2w = config.thumbWidth
    u2 = 2* config.step
    u = config.step

    pictureBox = flow down [
        fittedImage p1w p1h "assets/ws-home-music.jpg"
      ]

    description = flow down [
      width d1w <| leftAligned <| normalText "Что&nbsp;такое «театральная музыка», существует&nbsp;ли она и&nbsp;почему её&nbsp;составляющая важна для&nbsp;сценического действия? Как&nbsp;она наполняет мир автора и&nbsp;режиссёра, помогая актёрам со-существовать в&nbsp;этом мире? Есть&nbsp;ли&nbsp;какие-то секреты в&nbsp;её&nbsp;использовании?",
      spaceY u,
      width d1w <| leftAligned <| normalText "Нам&nbsp;бы хотелось открыть такую мастерскую, дабы понять и&nbsp;сопоставить возможности музыки в&nbsp;сценическом действии и&nbsp;её&nbsp;эмоциональную составляющую, изучить звуки, воздействующие на&nbsp;слух и&nbsp;помогающие в&nbsp;создании атмосферы спектакля. Если&nbsp;у&nbsp;вас есть желание присоединиться к&nbsp;этой мастерской, пишите нам.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
