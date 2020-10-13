module WorkshopDirectorsCollaboration where

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
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", True)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Работа с&nbsp;актером",
      spaceY u,
      width d1w <| leftAligned <| normalText "Самая суть театра и&nbsp;заключается в&nbsp;том, что&nbsp;каждый актёр&thinsp;&mdash;&thinsp;не&nbsp;только тюбик с&nbsp;краской, не&nbsp;только безгласный и&nbsp;послушный исполнитель воли режиссёра, а&nbsp;богатый источник творческих возможностей и&nbsp;неожиданностей. Не&nbsp;зная этого&thinsp;&mdash;&thinsp;не&nbsp;знаешь самой сути театра, самой его силы. Очень снижают себя режиссёры, рассматривая свое дело&thinsp;&mdash;&thinsp;создание спектакля&thinsp;&mdash;&thinsp;как&nbsp;дрессировку и&nbsp;«натаскивание» актёра согласно своему постановочному плану. Прямой и&nbsp;высокий долг режиссёра, прежде всего&thinsp;&mdash;&thinsp;сделать все личности, участвующие в&nbsp;спектакле, творческими. Для&nbsp;этого:",
      spaceY u,
      width d1w <| leftAligned <| quoteText "во-первых, не&nbsp;надо гасить тот творческий огонь, который загорелся от&nbsp;прочтения пьесы у&nbsp;самого актёра. Этого не&nbsp;могло не&nbsp;быть&thinsp;&mdash;&thinsp;в&nbsp;актёре ведь заложена потребность творчества и&nbsp;способность к&nbsp;нему;",
      spaceY u,
      width d1w <| leftAligned <| quoteText "во-вторых, надо всячески поощрять его&nbsp;творчество. А&nbsp;если оно в&nbsp;каком-то отношении не&nbsp;соответствует пьесе&thinsp;&mdash;&thinsp;осторожно и&nbsp;не&nbsp;ломая, отвести актёра на&nbsp;более верный путь понимания пьесы, роли или данной сцены;",
      spaceY u,
      width d1w <| leftAligned <| quoteText "в-третьих, надо прививать актёру ту&nbsp;психотехнику, которая позволила&nbsp;бы ему быть в&nbsp;состоянии творчества на&nbsp;каждой репетиции, на&nbsp;каждом спектакле, которая помогла&nbsp;бы ему преодолеть его косность, неуверенность в&nbsp;себе, творческую ограниченность. Словом, надо подвести актёра к&nbsp;тому, чтобы, работая, он&nbsp;творил как настоящий полноценный художник своего дела.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
