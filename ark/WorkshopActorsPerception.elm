module WorkshopActorsPerception where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          True)
  , ("directors",          "WorkshopDirectors.html",       False)
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
      fittedImage p1w p1h "assets/ws-home-actors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("дисциплина",                      "WorkshopActorsDiscipline.html",   False)
        , ("отречение",                       "WorkshopActorsRenunciation.html", False)
        , ("триада",                          "WorkshopActorsTriple.html",       False)
        , ("свобода и&nbsp;непринуждённость", "WorkshopActorsEasiness.html",     False)
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      False)
        , ("восприятие",                      "WorkshopActorsPerception.html",   True)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Восприятие&thinsp;&mdash;&thinsp;источник действия\n(восприятие&thinsp;&mdash;&thinsp;оценка&thinsp;&mdash;&thinsp;действие)",
      spaceY u,
      width d1w <| leftAligned <| normalText "Все мы умеем воспринимать как окружающий нас мир, так&nbsp;и&nbsp;людей. Мы сразу и&nbsp;без труда распознаём фальшь, иронию, скрытую враждебность. В&nbsp;жизни нам приходится скрывать наше восприятие, чтобы не&nbsp;обидеть, не&nbsp;испортить и&nbsp;т.д. На&nbsp;сцене&nbsp;же это важное качество первой реакции восприятия необходимо культивировать и&nbsp;учиться пользоваться тем, что дано нам природой. Ибо&nbsp;от&nbsp;восприятия рождается оценка происходящего, происходит перестройка внутренних желаний, и,&nbsp;в&nbsp;соответствии с&nbsp;этим, начинают совершаться поступки, а&nbsp;также изменяются действия персонажа по&nbsp;отношению к&nbsp;другим.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Итак, восприятие&thinsp;&mdash;&thinsp;источник действия. Без&nbsp;чёткого восприятия партнёра, текстового материала, воображаемых предлагаемых обстоятельств и&nbsp;первой непосредственной реакции на&nbsp;всё это&thinsp;&mdash;&thinsp;сценическое действие невозможно. Вспомним ещё раз, что&nbsp;на&nbsp;сцене актёр оголяет душу, а&nbsp;это огромное табу в&nbsp;повседневной жизни, и&nbsp;посему порой на&nbsp;сцене человек живёт гораздо цельнее, ибо&nbsp;он открыт миру.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
