module WorkshopDirectorsPlasticity where

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
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    True)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Пластическое решение спектакля",
      spaceY u,
      width d1w <| leftAligned <| normalText "Пластическое решение спектакля должно быть настолько точным, чтобы быть максимально понятым даже без&nbsp;слов. И&nbsp;наоборот, если&nbsp;вы изолируете себя от&nbsp;видимого, то&nbsp;выразительность того, что&nbsp;вы слышите, должна быть такой, чтобы можно было с&nbsp;наибольшей точностью восстановить зрительную сторону решённого куска.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Решение&thinsp;&mdash;&thinsp;только тогда решение, когда оно понятно глухому, если он видит, и&nbsp;понятно слепому, если он слышит.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
