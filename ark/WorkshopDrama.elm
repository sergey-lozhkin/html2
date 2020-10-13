module WorkshopDrama where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           True)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", False)
  , ("music",              "WorkshopMusic.html",           False)
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
        fittedImage p1w p1h "assets/ws-home-drama.jpg"
      ]

    description = flow down [
      width d1w <| leftAligned <| normalText "Нам&nbsp;бы хотелось открыть мастерскую по&nbsp;драматургии, где&nbsp;авторы могли&nbsp;бы делиться секретами по&nbsp;созданию своего мира, где&nbsp;мы могли&nbsp;бы совместно с&nbsp;авторами создавать спектакли, скетчи, выявляя идею и&nbsp;мысль произведения в&nbsp;сценическом действии. Где&nbsp;по&nbsp;мере теоретического диалога могло&nbsp;бы возникнуть поле для&nbsp;деятельности людей, любящих театр и&nbsp;основную его составляющую&thinsp;&mdash;&thinsp;драматургию.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
