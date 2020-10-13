module WorkshopActorsRenunciation where

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
        , ("отречение",                       "WorkshopActorsRenunciation.html", True)
        , ("триада",                          "WorkshopActorsTriple.html",       False)
        , ("свобода и&nbsp;непринуждённость", "WorkshopActorsEasiness.html",     False)
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      False)
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Oтречение (нейтральное состояние, активность организма)",
      spaceY u,
      width d1w <| leftAligned <| normalText "Наши знания порой шагают впереди нас, мешая нам услышать другого. Мы готовы к&nbsp;спору с&nbsp;первой минуты, готовы отстаивать свои позиции, считая их «самыми-самыми». Именно такие знания мешают актёрам быть готовыми к&nbsp;восприятию, научиться «отречению»&thinsp;&mdash;&thinsp;некоему нейтральному состоянию, в&nbsp;котором «моё&nbsp;Я» и&nbsp;«мои знания» не&nbsp;главенствуют, а&nbsp;отходят на&nbsp;второй план, не&nbsp;мешают воспринимать и&nbsp;понимать текущий момент. Неразбериха в&nbsp;диалоге с&nbsp;актёрами и&nbsp;режиссёрами возникает именно тогда, когда мы не&nbsp;готовы к&nbsp;сотрудничеству, а&nbsp;нацелены на&nbsp;утверждение своего&nbsp;«Я», не&nbsp;воспринимая и&nbsp;даже не&nbsp;пытаясь понять. Тренинг «Отречение» направлен на&nbsp;умение человека стать на&nbsp;время «белым листом», готовым к&nbsp;восприятию.",
      spaceY u,
      width d1w <| leftAligned <| normalText "От&nbsp;чего отрекается актёр? Только от&nbsp;преграды, которая существует между ним и&nbsp;другими людьми. Иными словами, отречься&thinsp;&mdash;&thinsp;значит сделать себя более доступным, более чутким и&nbsp;открытым по&nbsp;отношению к&nbsp;другим. ",
      spaceY u,
      width d1w <| leftAligned <| normalText "Отречение представляет собой стратегию, которая преодолевает эгоизм. Результатом отречения оказывается вступление в&nbsp;мир, где&nbsp;вы более доступны, более открыты для&nbsp;других, но&nbsp;также более одиноки и&nbsp;более уязвимы. И&nbsp;этого не&nbsp;стоит бояться&thinsp;&mdash;&thinsp;на&nbsp;сцене актёр оголяет душу, а&nbsp;это огромное табу в&nbsp;повседневной жизни, и&nbsp;посему порой на&nbsp;сцене человек живёт гораздо цельнее, ибо&nbsp;он открыт миру.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Тренинг «Отречение»&thinsp;&mdash;&thinsp;постоянно действующая единица времени. Отречение существует всегда, по&nbsp;мере вашего движения вперёд, если вы чётко уясните для&nbsp;себя, что это значит и&nbsp;будете ему следовать. Это не&nbsp;значит, что отречение, как в&nbsp;случае осанки и&nbsp;походки, станет автоматическим. Отречение необходимо включать и&nbsp;выключать, если это вам необходимo. Для&nbsp;умения слышать другого, не&nbsp;спорить, а&nbsp;вести диалог, а&nbsp;также в&nbsp;работе над&nbsp;спектаклями, особенно если вы работаете с&nbsp;различными режиссёрами&thinsp;&mdash;&thinsp;отречение необходимo.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
