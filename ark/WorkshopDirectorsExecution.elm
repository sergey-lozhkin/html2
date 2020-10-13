module WorkshopDirectorsExecution where

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
        , ("замысел&thinsp;&mdash;&thinsp;воплощение",        "WorkshopDirectorsExecution.html",     True)
        , ("мизансцена&thinsp;&mdash;&thinsp;язык режиссёра", "WorkshopDirectorsContext.html",       False)
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     False)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Замысел&thinsp;&mdash;&thinsp;Воплощение",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Для нас не&nbsp;столько важно то,&nbsp;что хотел сказать автор, сколько то,&nbsp;что сказалось им, хотя&nbsp;бы и&nbsp;не&nbsp;намерено, просто вследствие правдивого воспроизведения фактов жизни».",
      width d1w <| rightAligned <| quoteText "Николай Александрович Добролюбов",
      spaceY u,
      width d1w <| leftAligned <| normalText "Подлинность сценического решения обязательно предполагает, помимо элементов, содержащихся в&nbsp;замысле, помимо конкретных пластических и&nbsp;ритмических форм, наличие неожиданного хода, который как&nbsp;бы взрывает авторский текст изнутри. Неожиданность непременно должна быть заразительна и&nbsp;закономерна, логична и&nbsp;жизненно оправдана.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Одним из&nbsp;критериев подлинности сценического решения является наличие пластической, музыкальной, ритмической выразительности.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
