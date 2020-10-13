module WorkshopActdirsAnalysis where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",       False)
  , ("actors",             "WorkshopActors.html",      False)
  , ("directors",          "WorkshopDirectors.html",   False)
  , ("actors & directors", "WorkshopActdirs.html",     True)
  , ("music",              "WorkshopMusic.html",       False)
  , ("decorations",        "WorkshopDecorations.html", False)
  , ("general info",       "WorkshopGeneral.html",     False)
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
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   True)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Метод действенного анализа",
      spaceY u,
      width d1w <| leftAligned <| normalText "Когда мы нагружаем актёра знаниями о&nbsp;роли, об&nbsp;обстоятельствах пьесы, он становится похожим на&nbsp;рахитичного ребёнка&thinsp;&mdash;&thinsp;голова огромная, а&nbsp;ножки подгибаются под тяжестью головы, напичканной всяческой информацией по&nbsp;поводу роли. В&nbsp;то&nbsp;же&nbsp;время он остается беспомощным в&nbsp;главном&thinsp;&mdash;&thinsp;в&nbsp;физической реализации роли.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Благодаря методу действенного анализа мы имеем возможность на&nbsp;самом первом этапе работы переходить, так&nbsp;сказать, к&nbsp;«разведке телом». Важно руками, ногами, спиной, всем своим физическим существом внедряться в&nbsp;пьесу и&nbsp;разведывать её. Вот&nbsp;в&nbsp;чем сила метода. Здесь нужно, с&nbsp;ролью в&nbsp;руках, во&nbsp;что&nbsp;бы&nbsp;то&nbsp;ни&nbsp;стало, добиваться конечного результата и&nbsp;разбираться в&nbsp;том, что происходит в&nbsp;пьесе. Читая пьесу по&nbsp;ролям, не&nbsp;следует искать интонационную окраску той или иной фразы, а&nbsp;нужно раскрыть действенную основу роли. С&nbsp;самого начала должна производиться «разведка телом» через действие.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
