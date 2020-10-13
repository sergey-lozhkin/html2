module WorkshopDirectorsTimespace where

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
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     True)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Время, пространство",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Развить в&nbsp;себе сознание времени в&nbsp;игре есть задача актеров будущего».",
      width d1w <| rightAligned <| quoteText "В.&nbsp;Э.&nbsp;Мейерхольд",
      spaceY u,
      width d1w <| leftAligned <| normalText "В&nbsp;театре взаимодействуют два дополняющих друг друга организама: сценическое действие, которое проецируется в&nbsp;зрительное пространство, и&nbsp;воспринимающий, резонирующий, заполненный публикой зал. Театральное пространство&thinsp;&mdash;&thinsp;соответственно&thinsp;&mdash;&thinsp;заключает в&nbsp;себе композиционное единство обеих зон, где&nbsp;из&nbsp;литературного текста вырастает действие драмы, и&nbsp;где принципиально важна соотнесённость актёров и&nbsp;публики, их&nbsp;функциональная зависимость.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Для&nbsp;работы над&nbsp;этим используются:",
      spaceY u,
      width d1w <| leftAligned <| quoteText "режиссёрское осмысление пространства и&nbsp;его взаимодействие со&nbsp;сценическим и&nbsp;конкретным временем;",
      spaceY u,
      width d1w <| leftAligned <| quoteText "взаимосвязь времени и&nbsp;пространства, возможные варианты их&nbsp;разделения, при&nbsp;полном понимании их&nbsp;как единого процесса;",
      spaceY u,
      width d1w <| leftAligned <| quoteText "использование переноса временных и&nbsp;пространственных решений при&nbsp;постановке спектаклей, с&nbsp;помощью актерского воображения и&nbsp;сценографических решений.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
