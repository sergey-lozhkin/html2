module WorkshopActorsCharacter where

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
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        True)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Работа над образом",
      spaceY u,
      width d1w <| leftAligned <| normalText "Практика показывает, что&nbsp;рождение настоящего сценического образа&thinsp;&mdash;&thinsp;это всегда длительный и&nbsp;весьма сложный процесс. Сыграть роль&thinsp;&mdash;&thinsp;значит создать на&nbsp;сцене живой и&nbsp;яркий характер человека, и&nbsp;через его поступки, его мысли и&nbsp;чувства, его судьбу передать определённое отношение к&nbsp;жизни, выразить мысли, заключённые в&nbsp;пьесе. Отсюда и&nbsp;возникают те&nbsp;задачи, которые стоят перед актёром в&nbsp;работе над&nbsp;ролью.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Во-первых, он должен представить образ своего героя: понять его внутренний мир, увидеть&nbsp;то, что является наиболее важным, типичным для&nbsp;его характера. А&nbsp;во-вторых&thinsp;&mdash;&thinsp;и&nbsp;это самое трудное&thinsp;&mdash;&thinsp;актёру надо сблизиться со&nbsp;своим героем, зажить его мыслями и&nbsp;чувствами или, как говорил М.&nbsp;Щепкин, «влезть в&nbsp;кожу»&nbsp;его. Потому&nbsp;что только при&nbsp;этом условии&thinsp;&mdash;&thinsp;условии перевоплощения актёра в&nbsp;играемый им образ&thinsp;&mdash;&thinsp;на&nbsp;сцене рождается живой и&nbsp;верный в&nbsp;каждом своем проявлении человек, появляется та&nbsp;правда жизни, которая убеждает и&nbsp;волнует зрителя.",
      spaceY u,
      width d1w <| leftAligned <| normalText "В&nbsp;этом процессе важную роль играют наблюдательность актёра, воображение, воля, жизненный опыт, дисциплина и&nbsp;многое другое.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
