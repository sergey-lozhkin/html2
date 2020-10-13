module WorkshopDirectorsContext where

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
        , ("мизансцена&thinsp;&mdash;&thinsp;язык режиссёра", "WorkshopDirectorsContext.html",       True)
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     False)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Мизансцена&thinsp;&mdash;&thinsp;язык режиссёра",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«К&nbsp;сожалению, у&nbsp;нас до&nbsp;самых последних лет очень мало уделялось внимания композиции спектакля. Более того, изучение этих вопросов рассматривалось чуть&nbsp;ли не&nbsp;как склонность к&nbsp;формализму. Я&nbsp;полагаю, что&nbsp;подобная точка зрения принесла немало вреда нашему театру и&nbsp;породила целую серию бесформенных, серых, скучных спектаклей, в&nbsp;которых самые высокие и&nbsp;прогрессивные идеи не&nbsp;дошли до&nbsp;зрительного зала из-за того, что&nbsp;не&nbsp;могли пробиться сквозь режиссёрскую беспомощность».",
      width d1w <| rightAligned <| quoteText "Леонид Викторович Варпаховский",
      spaceY u,
      width d1w <| leftAligned <| normalText "В&nbsp;этом разделе мы уделяем особое внимание графическим закономерностям режиссерского рисунка, осмыслению и&nbsp;работе над&nbsp;композицией, многообразием ритмов, временных и&nbsp;пространственных решений.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
