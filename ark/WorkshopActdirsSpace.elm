module WorkshopActdirsSpace where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", True)
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
      fittedImage p1w p1h "assets/ws-home-actors-directors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("предлагаемые обстоятельства",                                            "WorkshopActdirsConditions.html", False)
        , ("пространство&thinsp;&mdash;&thinsp;тело&thinsp;&mdash;&thinsp;действие", "WorkshopActdirsSpace.html",      True)
        , ("психологический жест",                                                   "WorkshopActdirsPsycho.html",     False)
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     False)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Пространство&thinsp;&mdash;&thinsp;тело&thinsp;&mdash;&thinsp;действие",
      spaceY u,
      width d1w <| leftAligned <| normalText "Ключевые моменты данной темы таковы: умение расположить себя в&nbsp;сценическом пространстве; чёткое понимание возможностей своего тела, которое является одним из&nbsp;важнейших инструментов актёрского аппарата; необходимость работы над&nbsp;пластическими возможностями, с&nbsp;пониманием действенной структуры передачи информации с&nbsp;помощью тела в&nbsp;данном пространстве. Мы&nbsp;будем искать ответы на&nbsp;следующие вопросы: как&nbsp;изменяется пластика тела с&nbsp;изменением пространства; изменяется&nbsp;ли пространство с&nbsp;изменением пластики, и&nbsp;как все это работает в&nbsp;действии; а&nbsp;так&nbsp;же лёгкое, нейтральное и&nbsp;тяжёлое состояние тела как способ передачи информации.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
