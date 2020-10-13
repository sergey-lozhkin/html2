module WorkshopDirectorsRhythm where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       True)
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
      fittedImage p1w p1h "assets/ws-home-directors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("создание мира",                                   "WorkshopDirectorsCreation.html",      False)
        , ("замысел&thinsp;&mdash;&thinsp;воплощение",        "WorkshopDirectorsExecution.html",     False)
        , ("мизансцена&thinsp;&mdash;&thinsp;язык режиссёра", "WorkshopDirectorsContext.html",       False)
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     False)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        True)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Ритм и&nbsp;музыкальность спектакля",
      spaceY u,
      width d1w <| leftAligned <| normalText "Одной из&nbsp;последних стадий работы над&nbsp;спектаклем является его ритмическая организация. Станиславский и&nbsp;Вахтангов много говорили о&nbsp;так называемом «мяче внимания». По&nbsp;существу, Станиславский формулировал искусство режиссуры как&nbsp;умение перебрасывать невидимый «мяч внимания» с&nbsp;разной скоростью, в&nbsp;разных темпах, от&nbsp;одного субъекта к&nbsp;другому. Организация этого невидимого процесса и&nbsp;есть режиссура.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
