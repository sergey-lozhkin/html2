module WorkshopActdirsConditions where

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
        [ ("предлагаемые обстоятельства",                                            "WorkshopActdirsConditions.html", True)
        , ("пространство&thinsp;&mdash;&thinsp;тело&thinsp;&mdash;&thinsp;действие", "WorkshopActdirsSpace.html",      False)
        , ("психологический жест",                                                   "WorkshopActdirsPsycho.html",     False)
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     False)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Предлагаемые обстоятельства",
      spaceY u,
      width d1w <| leftAligned <| normalText "Как часто, работая над&nbsp;спектаклем, мы актёры (и&nbsp;режиссёры) увлекаемся действием, «задачами» и&nbsp;прочим, забывая о&nbsp;предлагаемых обстоятельствах данной сцены. А&nbsp;значит, упускаем что-то очень важное в&nbsp;логике персонажей, в&nbsp;их взаимоотношениях. Как&nbsp;и&nbsp;каким образом необходимо работать актёру&nbsp;/&nbsp;режиссёру с&nbsp;предлагаемыми обстоятельствами? Каким образом изменения обстoятельств влияют на&nbsp;структуру сцены, роли, спектакля? Чёткое понимание данной темы как актёрами, так&nbsp;и&nbsp;режиссёрами&thinsp;&mdash;&thinsp;одна из&nbsp;задач, стоящих перед нами.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Чем сильнее продуманы предлагаемые обстоятельства, тем органичнее будет мир, построенный нами. Каждая деталь влечёт за&nbsp;собой цепь событий, которые в&nbsp;конечном итоге могут решить судьбу героев. И&nbsp;лишь продумывая не&nbsp;только каждое обстоятельство, но&nbsp;и&nbsp;его последствия, мы можем создать естественный и&nbsp;живой мир, где всё логично и&nbsp;взаимосвязано.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
