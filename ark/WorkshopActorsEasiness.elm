module WorkshopActorsEasiness where

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
        , ("свобода и&nbsp;непринуждённость", "WorkshopActorsEasiness.html",     True)
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      False)
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Свобода и&nbsp;непринуждённость",
      spaceY u,
      width d1w <| leftAligned <| normalText "Непринуждённость&thinsp;&mdash;&thinsp;это избавление от&nbsp;каких&nbsp;бы&nbsp;то&nbsp;ни&nbsp;было сомнений, колебаний или неуверенности по&nbsp;поводу того, следует&nbsp;ли оставаться самим собой. Когда дисциплина становится естественной, когда она становится частью вас самих, очень важно научиться непринуждённости. Для актёра непринуждённость означает освобождение от&nbsp;напряжения в&nbsp;рамках дисциплины, возможность испытывать свободу. Свобода здесь&thinsp;&mdash;&thinsp;не&nbsp;состояние дикости или небрежности, это, скорее, позволение пережить во&nbsp;всей полноте своё существование как&nbsp;человека.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Для&nbsp;развития непринуждённости вам сначала нужно воспитать себя в&nbsp;дисциплине отречения (смотри «Отречение»).",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
