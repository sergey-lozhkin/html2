module WorkshopActdirsText where

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
        , ("пространство&thinsp;&mdash;&thinsp;тело&thinsp;&mdash;&thinsp;действие", "WorkshopActdirsSpace.html",      False)
        , ("психологический жест",                                                   "WorkshopActdirsPsycho.html",     False)
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     False)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       True)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Отношение к&nbsp;текстовому материалу",
      spaceY u,
      width d1w <| leftAligned <| normalText "Главное на&nbsp;сцене&thinsp;&mdash;&thinsp;слово, так&nbsp;как через слово мы постигаем смысловую сторону произведения. Но&nbsp;когда речь идёт о&nbsp;сценической выразительности, нельзя полагаться только на&nbsp;слово. В&nbsp;эмоционально-образном построении спектакля слово&thinsp;&mdash;&thinsp;лишь один из&nbsp;выразительных компонентов. Важный, первостепенный, но&nbsp;не&nbsp;единственный. Игнорируя это, мы убьём зрелищную природу театра.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
